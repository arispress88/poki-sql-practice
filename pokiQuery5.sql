--CODE for PROBLEMS 7 to 20

--PROBLEM #7
--SELECT SUM(LEN(WordCount) - LEN(REPLACE(WordCount, ' ', '')) + 1) AS TotalWords
--FROM Poem;


-- PROBLEM #8
--SELECT CharCount
--FROM Poem
--ORDER BY LEN(CharCount);

--PROBLEM #9
--SELECT COUNT(*) AS TotalAuthors
--From Author a
--Join Grade g ON a.GradeId = g.Id
--Where g.Name = '3rd Grade';

--PROBLEM #10
--SELECT COUNT(*) as TotalAuthors
--From Author a
--Join Grade g ON a.GradeId = g.Id
--Where g.Name IN ('1st Grade', '2nd Grade', '3rd Grade');

--PROBLEM #11
--SELECT COUNT(*) AS TotalPoems
--From Author a
--Join Grade g ON a.GradeId = g.Id
--Join Poem p ON a.Id = p.AuthorId
--Where g.Name = '4th Grade';

--PROBLEM #12
--SELECT g.Name, COUNT(p.Id) AS TotalPoems
--From Grade g
--LEFT JOIN Author a ON a.GradeId = g.Id
--LEFT JOIN Poem p ON p.AuthorId = a.Id
--GROUP BY g.Name;

--PROBLEM #13
--SELECT g.Name, COUNT(a.Id) AS TotalAuthors
--From Grade g
--LEFT JOIN Author a ON a.GradeId = g.Id
--GROUP BY g.Name
--ORDER BY g.Name;

--PROBLEM #14
--SELECT TOP 1 Title
--FROM Poem
--ORDER BY LEN(WordCount) DESC;

--PROBLEM #15
--SELECT a.Name, COUNT(p.Id) AS TotalPoems
--From Author a
--Join Poem p ON p.AuthorId = a.Id
--GROUP BY a.Id, a.Name
--HAVING COUNT(p.Id) = (SELECT MAX(PoemCount) FROM (SELECT COUNT(Id) AS PoemCount FROM Poem GROUP BY AuthorId) AS subquery);

--PROBLEM #16
--SELECT COUNT (*) AS TotalPoemsWithSadness
--FROM Poem p
--JOIN PoemEmotion pe ON pe.PoemId = p.Id
--JOIN Emotion e ON e.Id = pe.EmotionId
--Where e.Name = 'sadness';

--PROBLEM #17
--Select *
--From Poem p
--WHERE NOT EXISTS (
--Select *
--From PoemEmotion pe
--WHERE pe.PoemId = p.Id);

--PROBLEM #18
--Select TOP 1 e.Name, COUNT(pe.PoemId) AS TotalPoems
--From Emotion e
--LEFT JOIN PoemEmotion pe ON pe.EmotionId = e.Id
--GROUP BY e.Id, e.Name
--ORDER BY TotalPoems ASC;

--PROBLEM #19
--Select top 1 g.Name, COUNT(p.Id) AS TotalPoemsWithJoy
--From Grade g
--Join Author a ON a.GradeId = g.Id
--Join Poem p ON p.AuthorId = a.Id
--Join PoemEmotion pe ON pe.PoemId = p.Id
--Join Emotion e ON e.Id = pe.EmotionId
--WHERE e.Name = 'joy'
--GROUP BY g.Id, g.Name
--ORDER BY TotalPoemsWithJoy DESC;

--PROBLEM #20
--SELECT TOP 1 g.Name, COUNT(p.Id) AS TotalPoemsWithFear
--FROM Gender g
--JOIN Author a ON a.GenderId = g.Id
--JOIN Poem p ON p.AuthorId = a.Id
--JOIN PoemEmotion pe ON pe.PoemId = p.Id
--JOIN Emotion e ON e.Id = pe.EmotionId
--WHERE e.Name = 'fear'
--GROUP BY g.Id, g.Name
--ORDER BY TotalPoemsWithFear ASC