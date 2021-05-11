jQuery(function() {
  let ctx = $('#chart-ventas');
  let dias = [];
  let ingresos = [];
  $.each(ctx.data('value'), function(key, value){
    let fecha = key.toString().split('T')[0].split('-');
    dias.push(fecha[2] + '-' + fecha[1] + '-' + fecha[0]);
    ingresos.push(value);
  });

  let myChart = new Chart(ctx, {
    type: 'line',
    data: {
      labels: dias,
      datasets: [{
        data: ingresos,
        lineTension: 0,
        backgroundColor: 'transparent',
        borderColor: '#007bff',
        borderWidth: 4,
        pointBackgroundColor: '#007bff'
      }]
    },
    options: {
      scales: {
        yAxes: [{
          ticks: {
            beginAtZero: false
          }
        }]
      },
      legend: {
        display: false
      }
    }
  });
});
