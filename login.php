<!DOCTYPE html>   
<html>   
<head>  
<meta name="viewport" content="width=device-width, initial-scale=1">  
<title> sign up </title>  
<style>   
Body {  
  font-family: Calibri, Helvetica, sans-serif;  
  background-color: pink;  
}  
button {   
       background-color: #4CAF50;   
       width: 100%;  
        color: orange;   
        padding: 15px;   
        margin: 10px 0px;   
        border: none;   
        cursor: pointer;   
         }   
 form {   
        border: 3px solid #f1f1f1; 
        padding: 0;
        margin-left: 250px; 
        margin-right: 250px;
    }   
 input[type=text], input[type=password] {   
        width: 100%;   
        margin: 8px 0;  
        padding: 12px 20px;   
        display: inline-block;   
        border: 2px solid green;   
        box-sizing: border-box;   
    }  
 button:hover {   
        opacity: 0.7;   
    }   
  .cancelbtn {   
        width: auto;   
        padding: 10px 18px;  
        margin: 10px 5px;  
    }   
        
     
 .container {   
        padding: 25px;   
        background-color: lightblue;  
    }   
</style>   
</head>    
<body>    
    <center> <h2>Sign Up</h2> </center>   
    <form>  
        <div class="container">   
            <label>Username : </label>   
            <input type="text" placeholder="Enter Username" name="username" required>  
            <label>Contact No. : </label>   
            <input type="text" placeholder="Enter contact no" name="contact" required>  
            <label>Password : </label>   
            <input type="password" placeholder="Enter Password" name="password" required> 
            <label>Confirm Password : </label>   
            <input type="password" placeholder="Enter confirm password" name="password" required> 
           <button type="submit">Login</button>  
           
            <button type="button" class="cancelbtn"> Cancel</button>   
             <a href="signup.php"> Already have account? </a>   
        </div>   
    </form>     
</body>     
<script>
   var pressedButton = document.getElementsByTagName("button")[0];
   pressedButton.addEventListener("click", function (event) {
      alert("Signin successfuly.")
   })
</script>
</html> 