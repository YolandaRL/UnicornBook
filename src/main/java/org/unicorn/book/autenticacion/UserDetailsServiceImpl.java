package org.unicorn.book.autenticacion;

import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.unicorn.book.w.model.Rol;
import org.unicorn.book.w.model.Usuario;
import org.unicorn.book.w.repository.UsuarioRepository;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    private final UsuarioRepository usuarioRepository;

    public UserDetailsServiceImpl(UsuarioRepository usuarioRepository) {
        this.usuarioRepository = usuarioRepository;
    }

    @Override
    @Transactional
    public UserDetails loadUserByUsername(String username)
            throws UsernameNotFoundException {
       Usuario u = usuarioRepository.findByUsuario(username);
        if (u == null) {
            throw new UsernameNotFoundException("user name not found");
        }

        List<SimpleGrantedAuthority> authorities = new ArrayList<>();
        for (Rol role : u.getRoles()) {
            String value = ("ROLE_" + role.getNombre()).toUpperCase();
            authorities.add(new SimpleGrantedAuthority(value));
        }
        CustomUserDetailsImpl us = new CustomUserDetailsImpl(u.getUsuario(), u.getPassword(), authorities);
        us.setEmail(u.getEmail());
        us.setDni(u.getDni());
        us.setNombre(u.getNombre());
        us.setApellido1(u.getApellido1());
        us.setApellido2(u.getTelefono2());
        us.setTelefono1(u.getTelefono1());
        us.setTelefono2(u.getTelefono2());
        us.setFechaNacimiento(u.getFechaNacimiento());
        return us;
    }
}