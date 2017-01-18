class PPIS.Views.Admin_Events.ShowView
  render: ->
    $("#volunteer-tabs > li.active > a").trigger("click")

    $(document).on 'change', '.btn-attend', (e)->
      $(e.target).parent('form').submit()
      return

    return
