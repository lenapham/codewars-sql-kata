--Link to Question https://www.codewars.com/kata/5c0ae69d5f72394e130025f6

SELECT name, greeting, (REGEXP_MATCHES(greeting,'#([0-9_]+)'))[1] AS user_id from greetings