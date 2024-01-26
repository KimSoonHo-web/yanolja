$(document).ready(function() {
console.log("호출");

  // #wish 요소에 TabItem_active__lMexY 클래스를 추가
    $('#wish').addClass('TabItem_active__lMexY');	
    
  $(document).ready(function() {
    // Event listener for the checkbox click
    $('input.WishListBody_favoriteBtn__3OhjU').on('change', function(){
        // Get the accommodation number and user number from data attributes
        var accommodationNo = $(this).data('accommodationno');
        var userNo = $(this).data('userno');
		
        // AJAX call to the Spring controller
        $.ajax({
            url: '/toggleLike',
            type: 'POST',
            data: {
                userNo: userNo,
                accommodationNo: accommodationNo
            },
            success: function(isLiked) {
        
            },
            error: function(xhr, status, error) {
                console.log('An error occurred: ' + error);
            }
        });
    });
});

    
});