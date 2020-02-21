<?php
   // Headers
   header('Access-Control-Allow-Origin: *');
   header('Content-Type: application/json');
   header('Access-Control-Allow-Methods: POST');
   header('Access-Control-Allow-Headers: Access-Control-Allow-Headers, Content-Type, Access-Control-Allow-Methods, Authorization, X-Requested-With');

   include_once '../../config/Database.php';
   include_once '../../models/QuizRecords.php';

   // Instantiate DB & connect
   $database = new Database();
   $db = $database->connect();

   // Instantiate QuizRecords object
   $quizRecords = new QuizRecords($db);

   // check if the all the POST params are sent to the API
   if (isset($_POST['username']) && isset($_POST['mark']) && isset($_POST['time']) && isset($_POST['date']) && isset($_POST['quizId'])) {
      // set QuizRecords's attributes to the POST values
      $quizRecords->username = $_POST['username'];
      $quizRecords->mark = $_POST['mark'];
      $quizRecords->time = $_POST['time'];
      $quizRecords->date = $_POST['date'];
      $quizRecords->quizId = $_POST['quizId'];
   } 
   else {
      echo 'Error. Please make sure all POST params are set';
      die();
   }

   // call the function
   $quizRecords->saveRecords();

   //echo json_encode($scanned_stations->success_scan());
