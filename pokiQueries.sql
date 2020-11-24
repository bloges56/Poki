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
