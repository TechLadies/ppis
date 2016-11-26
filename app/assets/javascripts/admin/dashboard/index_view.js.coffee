class PPIS.Views.Admin_Dashboard.IndexView
  render: ->
    ctx = document.getElementById("myChart")
    jctx = $(ctx)
    myChart = new Chart(ctx,
      type: 'bar'
      data:
        labels: [
          'Adhoc',
          'Regular'
        ]
        datasets: [ {
          label: '# of Votes'
          data: [
            jctx.data('volunteer-adhoc'),
            jctx.data('volunteer-regular')
          ]
          backgroundColor: [
            'rgba(255, 99, 132, 0.2)'
            'rgba(54, 162, 235, 0.2)'
          ]
          borderColor: [
            'rgba(255,99,132,1)'
            'rgba(54, 162, 235, 1)'
          ]
          borderWidth: 1
        } ]
      options: scales: yAxes: [ { ticks: beginAtZero: true } ])
