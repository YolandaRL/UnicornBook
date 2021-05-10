package org.unicorn.book.configuracion;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.unicorn.book.autenticacion.UserDetailsServiceImpl;
import org.unicorn.book.configuracion.handlers.UrlAuthenticationSuccessHandler;

import javax.sql.DataSource;

/**
 *
 */
@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    private final UserDetailsServiceImpl userDetailsServiceImpl;
    private final DataSource dataSource;

    /**
     *
     * @param userDetailsServiceImpl
     * @param dataSource
     */
    public WebSecurityConfig(org.unicorn.book.autenticacion.UserDetailsServiceImpl userDetailsServiceImpl,
            DataSource dataSource) {
        this.userDetailsServiceImpl = userDetailsServiceImpl;
        this.dataSource = dataSource;
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
            .authorizeRequests()
                .antMatchers("/", "/acceso", "/usuario/nuevo", "/busquedas", "/busqueda-avanzada", "/libro/**",
                        "/autor/**", "/contacto", "/contacto/consulta", "/contacto/encargo").permitAll()
                .antMatchers("/consola/**").hasRole("ADMIN")
                .antMatchers("/client/**").hasRole("CLIENT")
                .anyRequest().authenticated()
            .and()
                .formLogin().loginPage("/acceso").successHandler(authenticationSuccessHandler())
                .failureUrl("/acceso?error")
                .usernameParameter("username").passwordParameter("password")
            .and()
                .logout().logoutRequestMatcher(new AntPathRequestMatcher("/cerrar-sesion")).logoutSuccessUrl("/")
            .and()
                .exceptionHandling().accessDeniedPage("/acceso-denegado");

    }

    @Bean
    public AuthenticationSuccessHandler authenticationSuccessHandler(){
        return new UrlAuthenticationSuccessHandler();
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/webapp/resources/**", "/resources/**", "/static/**", "/css/**", "/js/**", "/img/**");
    }

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth)
            throws Exception {
        auth.userDetailsService(userDetailsServiceImpl).and().jdbcAuthentication()
                .passwordEncoder(this.passworEnconder()).dataSource(dataSource)
                .usersByUsernameQuery("SELECT USUARIO ,PASSWORD, ACTIVO FROM USUARIO WHERE USUARIO = ?")
                .authoritiesByUsernameQuery(
                        "SELECT U.USUARIO,R.NOMBRE_ROL FROM USUARIO_ROL UR " + "INNER JOIN USUARIO U ON U.ID = UR.ID_USUARIO " + "INNER JOIN ROL R ON UR.ID_ROL = R.ID WHERE U.USUARIO = ?");
    }


    @Bean
    public PasswordEncoder passworEnconder() {
        return new BCryptPasswordEncoder();
    }
}
