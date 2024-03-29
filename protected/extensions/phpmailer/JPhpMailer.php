<?php

/**
 * JPhpMailer class file.
 *
 * @author jerry2801 <jerry2801@gmail.com>
 *
 * A typical usage of JPhpMailer is as follows:
 * <pre>
 * Yii::import('application.extensions.phpmailer.JPhpMailer');
 * $mail = new JPhpMailer;
 * $mail->IsSMTP();
 * $mail->Host = 'smpt.163.com';
 * $mail->SMTPAuth = true;
 * $mail->Username = 'yourname@yourdomain';
 * $mail->Password = 'yourpassword';
 * $mail->SetFrom('name@yourdomain.com', 'First Last');
 * $mail->Subject = 'PHPMailer Test Subject via smtp, basic with authentication';
 * $mail->AltBody = 'To view the message, please use an HTML compatible email viewer!';
 * $mail->MsgHTML('<h1>JUST A TEST!</h1>');
 * $mail->AddAddress('whoto@otherdomain.com', 'John Doe');
 * $mail->Send();
 * </pre>
 */

require_once dirname(__FILE__).DIRECTORY_SEPARATOR.'class.phpmailer.php';

class JPhpMailer extends PHPMailer
{
}