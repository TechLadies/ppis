class PPIS.Views.Admin_Events.Common
  render: ->
    $('.datetimepicker').datetimepicker
      format: 'Do MMMM YYYY'
      extraFormats: [ 'DD.MM.YYYY', 'DD.MM.YY' ]
      calendarWeeks: true
      showClose: true
      allowInputToggle: true

    $('.datetimepicker3').datetimepicker
      format: 'HH:mm'
      stepping: 15
      showClose: true
      allowInputToggle: true
