<?php 
   class Quiz {
      private $conn;
      //private $table = 'quiz';

      public $quizId;
      public $quizArr = [];

      public function __construct($db) {
         $this->conn = $db;
      }

      public function listQuiz() {
         $query = 'SELECT * FROM quiz';

         $stmt = $this->conn->prepare($query);
         $stmt-> execute();

         while($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            extract($row);

            $quizItem = array(
                  'quizId' => $id,
                  'quizName' => $name,
                  'date' => $date,
                  'time' => $time,
                  'numOfQues' => $numOfQues,
                  'timeLimit' => $timeLimit
            );
            array_push($this->quizArr, $quizItem);
         }
      }
   }