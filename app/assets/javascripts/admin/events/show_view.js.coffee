class PPIS.Views.Admin_Events.ShowView
  render: ->
    $("#volunteer-tabs > li.active > a").trigger("click")

    $(document).on 'change', 'input[type=checkbox]', (e)->
      $(e.target).parents('form').submit()
      return

    return
