## RESTful API for Aquatic Animals - Android App

Allows the Android App to access(R/W) the MySQL database. 

It is a simple RESTful API with only 3 endpoints. It is designed to get all the Quizzes in the DB and also all the Questions for a particular Quiz. Lastly, it save records of Quiz attempts (QuizRecords). 

### 1. Get all Quizzes (GET Request)
Endpoint: ../api/quiz/listQuiz.php

Example of Response: 
```
[
    {
        "quizId": 24,
        "quizName": "Animal Parts",
        "date": "18/02/2020",
        "time": "04:30pm",
        "numOfQues": 3,
        "timeLimit": 2
    },
    {
        "quizId": 25,
        "quizName": "New Quiz",
        "date": "19/02/2020",
        "time": "10:58pm",
        "numOfQues": 3,
        "timeLimit": 10
    },
    ...
]
```

### 2. Get all Questions for a Quiz (GET Request)
Endpoint: ../api/question/listQues.php?quizId=24 <br>
(it takes quizId as a param to list all the questions inside the quiz)

Example of Response: 
```
[
    {
        "id": 31,
        "question": "Which one is an example of an aquatic animal's habitat?",
        "choiceA": "Land",
        "choiceB": "Sea",
        "choiceC": "City",
        "choiceD": "Forest",
        "answer": "B"
    },
    {
        "id": 32,
        "question": "Which one lives in both land and water?",
        "choiceA": "dog",
        "choiceB": "penguin",
        "choiceC": "lizard",
        "choiceD": "fish",
        "answer": "B"
    },
    ...  
]
```

### 3. Saves records of Quiz attempts (POST Request)
Endpoint: ../api/quizRecords/saveRecords.php <br>
(it takes username, mark, time, date & quizId as POST params)

Example of Response: <br>
`201`


<br><br>
**make sure DB name is correct in Database.php file [^1]
