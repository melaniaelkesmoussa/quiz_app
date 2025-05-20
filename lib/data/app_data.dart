import 'package:flutter/material.dart';

List<Map<String, dynamic>> categoriesList = [
  {
    'categoryName': 'History quiz',
    'categoryColor': Colors.red,
    'questionsAndAnswers': [
      {
        'question': 'In which year did World War II end?',
        'answers': [
          {'answerText': '1940', 'score': 0},
          {'answerText': '1945', 'score': 1},
          {'answerText': '1939', 'score': 0},
          {'answerText': '1950', 'score': 0},
        ],
      },
      {
        'question': 'Who was the first president of the United States?',
        'answers': [
          {'answerText': 'George Washington', 'score': 1},
          {'answerText': 'Abraham Lincoln', 'score': 0},
          {'answerText': 'Thomas Jefferson', 'score': 0},
          {'answerText': 'John Adams', 'score': 0},
        ],
      },
      {
        'question': 'What was the name of the ship that sank in 1912?',
        'answers': [
          {'answerText': 'Lusitania', 'score': 0},
          {'answerText': 'Titanic', 'score': 1},
          {'answerText': 'Britannic', 'score': 0},
          {'answerText': 'Olympic', 'score': 0},
        ],
      },
      {
        'question': 'Who discovered America in 1492?',
        'answers': [
          {'answerText': 'Ferdinand Magellan', 'score': 0},
          {'answerText': 'Christopher Columbus', 'score': 1},
          {'answerText': 'Vasco da Gama', 'score': 0},
          {'answerText': 'Marco Polo', 'score': 0},
        ],
      },
      {
        'question': 'Which empire built the Colosseum?',
        'answers': [
          {'answerText': 'Greek Empire', 'score': 0},
          {'answerText': 'Egyptian Empire', 'score': 0},
          {'answerText': 'Roman Empire', 'score': 1},
          {'answerText': 'Byzantine Empire', 'score': 0},
        ],
      },
    ],
  },
  {
    'categoryName': 'Geography quiz',
    'categoryColor': Colors.orange,
    'questionsAndAnswers': [
      {
        'question': 'Which continent is the Sahara Desert located in?',
        'answers': [
          {'answerText': 'Asia', 'score': 0},
          {'answerText': 'Africa', 'score': 1},
          {'answerText': 'Australia', 'score': 0},
          {'answerText': 'South America', 'score': 0},
        ],
      },
      {
        'question': 'What is the capital of Australia?',
        'answers': [
          {'answerText': 'Sydney', 'score': 0},
          {'answerText': 'Melbourne', 'score': 0},
          {'answerText': 'Canberra', 'score': 1},
          {'answerText': 'Perth', 'score': 0},
        ],
      },
      {
        'question': 'Mount Everest lies on the border of which two countries?',
        'answers': [
          {'answerText': 'India and China', 'score': 0},
          {'answerText': 'Nepal and China', 'score': 1},
          {'answerText': 'India and Nepal', 'score': 0},
          {'answerText': 'Tibet and Bhutan', 'score': 0},
        ],
      },
      {
        'question': 'Which river flows through Egypt?',
        'answers': [
          {'answerText': 'Amazon', 'score': 0},
          {'answerText': 'Nile', 'score': 1},
          {'answerText': 'Ganges', 'score': 0},
          {'answerText': 'Yangtze', 'score': 0},
        ],
      },
      {
        'question': 'What is the largest ocean on Earth?',
        'answers': [
          {'answerText': 'Atlantic Ocean', 'score': 0},
          {'answerText': 'Indian Ocean', 'score': 0},
          {'answerText': 'Arctic Ocean', 'score': 0},
          {'answerText': 'Pacific Ocean', 'score': 1},
        ],
      },
    ],
  },
  {
    'categoryName': 'Technology quiz',
    'categoryColor': Colors.teal,
    'questionsAndAnswers': [
      {
        'question': 'Who founded Microsoft?',
        'answers': [
          {'answerText': 'Steve Jobs', 'score': 0},
          {'answerText': 'Bill Gates', 'score': 1},
          {'answerText': 'Elon Musk', 'score': 0},
          {'answerText': 'Mark Zuckerberg', 'score': 0},
        ],
      },
      {
        'question': 'What year was the iPhone first released?',
        'answers': [
          {'answerText': '2005', 'score': 0},
          {'answerText': '2007', 'score': 1},
          {'answerText': '2009', 'score': 0},
          {'answerText': '2010', 'score': 0},
        ],
      },
      {
        'question': 'What does CPU stand for?',
        'answers': [
          {'answerText': 'Central Processing Unit', 'score': 1},
          {'answerText': 'Computer Power Unit', 'score': 0},
          {'answerText': 'Central Programming Unit', 'score': 0},
          {'answerText': 'Core Processing Unit', 'score': 0},
        ],
      },
      {
        'question': 'Which company developed the Android OS?',
        'answers': [
          {'answerText': 'Apple', 'score': 0},
          {'answerText': 'Microsoft', 'score': 0},
          {'answerText': 'Google', 'score': 1},
          {'answerText': 'IBM', 'score': 0},
        ],
      },
      {
        'question': 'What does HTML stand for?',
        'answers': [
          {'answerText': 'HighText Machine Language', 'score': 0},
          {'answerText': 'HyperText Markup Language', 'score': 1},
          {'answerText': 'HyperTool Multi Language', 'score': 0},
          {'answerText': 'High Transfer Meta Language', 'score': 0},
        ],
      },
    ],
  },
  {
    'categoryName': 'Literature quiz',
    'categoryColor': Colors.indigo,
    'questionsAndAnswers': [
      {
        'question': 'What is the name of the wizarding school in Harry Potter?',
        'answers': [
          {'answerText': 'Beauxbatons', 'score': 0},
          {'answerText': 'Durmstrang', 'score': 0},
          {'answerText': 'Hogwarts', 'score': 1},
          {'answerText': 'Ilvermorny', 'score': 0},
        ],
      },
      {
        'question': "Which novel begins with 'Call me Ishmael'?",
        'answers': [
          {'answerText': 'Moby Dick', 'score': 1},
          {'answerText': '1984', 'score': 0},
          {'answerText': 'The Great Gatsby', 'score': 0},
          {'answerText': 'Ulysses', 'score': 0},
        ],
      },
      {
        'question': "Who wrote 'Romeo and Juliet'?",
        'answers': [
          {'answerText': 'Charles Dickens', 'score': 0},
          {'answerText': 'Jane Austen', 'score': 0},
          {'answerText': 'William Shakespeare', 'score': 1},
          {'answerText': 'Mark Twain', 'score': 0},
        ],
      },
      {
        'question': 'Which author created the detective Sherlock Holmes?',
        'answers': [
          {'answerText': 'Agatha Christie', 'score': 0},
          {'answerText': 'Arthur Conan Doyle', 'score': 1},
          {'answerText': 'Edgar Allan Poe', 'score': 0},
          {'answerText': 'Dan Brown', 'score': 0},
        ],
      },
      {
        'question':
            'In George Orwell’s "1984", what is the name of the totalitarian party?',
        'answers': [
          {'answerText': 'Big Brother', 'score': 0},
          {'answerText': 'The Brotherhood', 'score': 0},
          {'answerText': 'Ingsoc', 'score': 1},
          {'answerText': 'The Party of Truth', 'score': 0},
        ],
      },
    ],
  },
];
