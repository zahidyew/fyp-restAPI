<?php
   // Headers
   header('Access-Control-Allow-Origin: *');
   header('Content-Type: application/json');
   header('Access-Control-Allow-Methods: GET');
   header('Access-Control-Allow-Headers: Access-Control-Allow-Headers, Content-Type, Access-Control-Allow-Methods, Authorization, X-Requested-With');

   include_once '../../config/Database.php';
   include_once '../../models/Quiz.php';

   // Instantiate DB $ connect
   $database = new Database();
   $db = $database->connect();

   // Instantiate Quiz object, then call function
   $quiz = new Quiz($db);
   $quiz->listQuiz();

   // send the quizArray as a response
   echo json_encode($quiz->quizArr);