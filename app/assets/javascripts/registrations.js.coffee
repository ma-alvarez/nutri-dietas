$ ->
  $(document).on 'change', '#social_select', (evt) ->
    $.ajax 'update_plans',
      type: 'GET'
      dataType: 'script'
      data: {
        social_security: $("#social_select option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")