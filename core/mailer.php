<?php

class Mailer
{
    public function mail($from, $to, $subject, $message)
    {
        $headers = array('From' => $from);
        mail($to, $subject, $message, $headers);
    }
}