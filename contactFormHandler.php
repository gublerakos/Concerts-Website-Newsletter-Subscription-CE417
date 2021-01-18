<?php

    $name = $_POST['name'];
    $visitor_email = $_POST['email'];
    $message = $_POST['message'];


    $email_subject = "Art Eagle";

    $email_body = "User Name: $name.\n".
                    "User Email: $visitor_email.\n".
                        "User Message: $message.\n";

    $email_to = "mariaapntz@gmail.com";

    $headers = "From: $visitor_email \r\n";

    $headers = "Reply-To: $visitor_email \r\n";

    if(mail($email_to, $email_subject, $email_body, $headers)){
		echo "Message accepted!";
	}
	else{
		echo "Error: Message not accepted!";
	}

    header("Location: index.php");

?>
