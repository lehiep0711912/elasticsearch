$(document).on('turbolinks:load', function(){
  $('#search').click(function(){
    debugger
    $.ajax({
      url: '/search',
      type: 'get',
      dataType: 'json', 
      data: {
        q: $('#q').val()
      },
      success: function(data){
        $('.search-result').text("")
        $('#click-search').click()
        data.data_books.forEach(function(book){
            $('.search-result').append("<li>"+"<a href = /books/" + book._id +">"  +book._source.name + "</a>" +"</li>")
        })
        data.data_users.forEach(function(user){
            $('.search-result').append("<li>"+"<a href = /users/" + user._id +">"  +user._source.email + "</a>" +"</li>")
        })
        
      }
    })
  })
})
