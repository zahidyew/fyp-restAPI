<?php
   // Headers
   header('Access-Control-Allow-Origin: *');
   header('Content-Type: application/json');
   header('Access-Control-Allow-Methods: GET');
   header('Access-Control-Allow-Headers: Access-Control-Allow-Headers, Content-Type, Access-Control-Allow-Methods, Authorization, X-Requested-With');

   include_once '../../config/Database.php';
   include_once '../../models/Questions.php';

   // Instantiate DB $ connect
   $database = new Database();
   $db = $database->connect();

   $ques = new Questions($db);

   if(isset($_GET['quizId'])) {
      $ques->quizId = $_GET['quizId'];
   }
   else {
      echo "Error. No GET variable sent.";
      die();
   }

   // call the func and sent json data
   $ques->listQues();
   echo json_encode($ques->quesArray);
