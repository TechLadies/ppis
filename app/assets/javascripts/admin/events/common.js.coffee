class PPIS.Views.Admin_Events.Common
  render: ->
    $('.datepicker').datetimepicker
      format: 'Do MMMM YYYY'
      extraFormats: [ 'DD.MM.YYYY', 'DD.MM.YY', 'YYYY-MM-DD' ]
      calendarWeeks: true
      showClose: true
      allowInputToggle: true
      useCurrent: true

    $('.timepicker').datetimepicker
      format: 'HH:mm'
      extraFormats: [ 'YYYY-MM-DD HH:mm:ss' ]
      stepping: 15
      showClose: true
      allowInputToggle: true
      useCurrent: true
