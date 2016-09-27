$(document).ready(function() {
  $('.btn-submit').on('click', function() {
    alert("Hi there");
    // $.ajax({
    //   type: 'PUT',
    //   url : '/dashboard/shops/' + $('.shop_id').val() + '/products/'+ productId,
    //   dataType: 'json',
    //    data: {
    //     product: {
    //       status: statusChange
    //     }
    //   },
    //   success: function(data) {
    //     btn.val(statusChange);
    //   },
    //   error: function(error_message) {
    //     alert('error ' + error_message);
    //   }
    // });
  });
});