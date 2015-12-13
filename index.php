<?php
//Server side interactions here
?>

<html>
<head>
  <script src="js/jquery-2.1.4.min.js"></script>
  <script type="text/Javascript">
<!-- Client scripts here -->
  function newUserClick(){
    console.log('New user button clicked');
    $.ajax({
      url: "new_user.php",
      success: function(response){
        console.log('new user script done.');
      },
      error: function(){
        console.log('error in script');
      }
    });
  }
  </script>
</head>
<body>
  Hello
  <button onclick="javascript:newUserClick();">New User</button>
</body>
</html>
