-- SELECT * FROM Grade

-- SELECT * FROM Emotion

-- SELECT COUNT(p.id) AS Poems
-- FROM Poem p

-- SELECT TOP 76 a.name
-- FROM Author a
-- ORDER BY a.name

-- SELECT TOP 76 a.name, g.Name
-- FROM Author a
-- LEFT JOIN Grade g on g.Id = a.GradeId
-- ORDER BY a.name

-- SELECT TOP 76 a.name, ge.Name AS Gender, g.Name AS Grade
-- FROM Author a
-- LEFT JOIN Gender ge on ge.Id = a.GenderId
-- LEFT JOIN Grade g on g.Id = a.GradeId
-- ORDER BY a.name

-- SELECT SUM(p.WordCount) AS Words
-- FROM Poem p

-- SELECT p.Title, p.CharCount
-- FROM Poem p
-- WHERE CharCount IN (SELECT MIN(CharCount) from Poem)

-- SELECT COUNT(a.id) AS #OfThirdGraders
-- FROM Author a
-- LEFT JOIN Grade g on g.Id = a.GradeId
-- WHERE g.Name = '3rd Grade'

-- SELECT COUNT(a.id) AS #OfStudents
-- FROM Author a
-- LEFT JOIN Grade g on g.Id = a.GradeId
-- WHERE g.Name IN ('3rd Grade', '1st Grade', '2nd Grade')

-- SELECT COUNT(p.Id) AS Poems
-- FROM Poem p
-- LEFT JOIN Author a on a.Id = p.AuthorId
-- LEFT JOIN Grade g on g.Id = a.GradeId
-- WHERE g.Name = '4th Grade'

-- SELECT g.Name AS Grade, COUNT(p.Id) AS Poems
-- FROM Poem p
-- LEFT JOIN Author a on a.Id = p.AuthorId
-- LEFT JOIN Grade g on g.Id = a.GradeId
-- GROUP BY g.Name
-- ORDER BY g.Name

-- SELECT g.Name AS Grade, COUNT(a.Id) AS Students
-- FROM Author a
-- LEFT JOIN Grade g on g.Id = a.GradeId
-- GROUP BY g.Name
-- ORDER BY g.Name

-- SELECT p.Title, p.WordCount
-- FROM Poem p
-- WHERE WordCount IN (SELECT MAX(WordCount) from Poem)

-- SELECT a.Name, COUNT(p.id)
-- FROM Author a
-- LEFT JOIN Poem p on p.AuthorId = a.Id
-- GROUP By a.Id, a.Name
-- ORDER BY COUNT(p.Id) DESC

-- SELECT e.Name, COUNT(p.id) AS Poems
-- FROM Poem p
-- LEFT JOIN PoemEmotion pe on pe.PoemId = p.Id
-- LEFT JOIN Emotion e on e.Id = pe.EmotionId
-- WHERE e.Name = 'Sadness'
-- GROUP BY e.Name

-- SELECT COUNT(p.Id) AS NoEmotion
-- FROM Poem p
-- LEFT JOIN PoemEmotion pe on pe.PoemId = p.Id
-- WHERE pe.PoemId IS NULL

-- SELECT e.Name AS Emotion, COUNT(p.Id) AS Poems
-- FROM Poem p
-- LEFT JOIN PoemEmotion pe on pe.PoemId = p.Id
-- LEFT JOIN Emotion e on e.Id = pe.EmotionId
-- WHERE e.Name IS NOT NULL
-- GROUP BY e.Name
-- ORDER BY COUNT(p.Id)

-- SELECT TOP 1 g.Name AS Grade, COUNT(p.id) AS JoyfulPoems
-- FROM Poem p
-- LEFT JOIN PoemEmotion pe on pe.PoemId = p.Id
-- LEFT JOIN Emotion e on e.Id = pe.EmotionId
-- LEFT JOIN Author a on a.Id = p.AuthorId
-- LEFT JOIN Grade g on g.Id = a.GradeId
-- WHERE e.Name = 'Joy'
-- GROUP BY g.Name
-- ORDER BY COUNT(p.Id) DESC

-- SELECT TOP 1 g.Name AS Gender, COUNT(p.id) AS FearfulPoems
-- FROM Poem p
-- LEFT JOIN PoemEmotion pe on pe.PoemId = p.Id
-- LEFT JOIN Emotion e on e.Id = pe.EmotionId
-- LEFT JOIN Author a on a.Id = p.AuthorId
-- LEFT JOIN Gender g on g.Id = a.GenderId
-- WHERE e.Name = 'Fear'
-- GROUP BY g.Name
-- ORDER BY COUNT(p.Id)

