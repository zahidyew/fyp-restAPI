<?php
   class Questions
   {
      private $conn;

      //public $quesId;
      public $quizId;
      public $quesArray = [];

      public function __construct($db)
      {
         $this->conn = $db;
      }

      public function listQues()
      {
         $query = 'SELECT * FROM question 
                     WHERE quizId = :quizId';

         $stmt = $this->conn->prepare($query);
         $stmt->bindParam('quizId',$this->quizId);
         $stmt->execute();

         while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            extract($row);

            $quesItem = array(
               'id' => $id,
               'question' => $ques,
               'choiceA' => $choiceA,
               'choiceB' => $choiceB,
               'choiceC' => $choiceC,
               'choiceD' => $choiceD,
               'answer' => $answer
            );
            array_push($this->quesArray, $quesItem);
         }
      }
   }
