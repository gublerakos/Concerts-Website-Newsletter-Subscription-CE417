<?php

    $visitor_email = $_POST['email'];

    $email_subject = "Art Eagle";

    $email_body = "Thank you!\nYou have successfully subscribed to our newsletter!\nPlease contact us if you have any question!\n\n
                    -Art Eagle Team";

    // $email_to = "mariaapntz@gmail.com";

    // $headers = "From: $email_from \r\n";

    $headers = "Reply-To: $visitor_email \r\n";

    if(mail($visitor_email, $email_subject, $email_body, $headers)){
		echo "Message accepted!";
	}
	else{
		echo "Error: Message not accepted!";
	}

    header("Location: index.php");

?>
