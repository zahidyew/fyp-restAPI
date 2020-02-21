<?php 
   class QuizRecords {
      private $conn;

      public $username;
      public $mark;
      public $time;
      public $date;
      public $quizId;

      public function __construct($db) {
         $this->conn = $db;
      }

      public function saveRecords() {
         $query = 'INSERT INTO quizrecords 
                     SET username = :username, 
                     mark = :mark, 
                     time = :time, 
                     date = :date, 
                     quizId = :quizId';

         $stmt = $this->conn->prepare($query);
         $stmt->bindParam(':username', $this->username);
         $stmt->bindParam(':mark', $this->mark);
         $stmt->bindParam(':time', $this->time);
         $stmt->bindParam(':date', $this->date);
         $stmt->bindParam(':quizId', $this->quizId);

         if($stmt-> execute()) {
            echo json_encode("Success");
         }
         else {
            echo json_encode("error");
         }
      }
   }