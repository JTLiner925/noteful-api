TRUNCATE notes, folders RESTART IDENTITY CASCADE;

INSERT INTO folders
(id, folder_name)
VALUES
('1', 'Important'),
('2', 'Super'),
('3', 'Spangley');

INSERT INTO notes
(id, note_name, modified, folder_id, content)
VALUES
('11',
'Dogs',
'2019-01-03T00:00:00.000Z',  
'1',
'this is a note about dogs'
),
('12',
'Cats',
'2018-08-15T23:00:00.000Z',
'2',
'this is a note about cats'
),
('13',
'Pigs',
'2018-03-01T00:00:00.000Z',
'2',
'this is a note about pigs'
),
('14',
'Birds',
'2019-01-04T00:00:00.000Z',
'1',
'this is a note about birds'
),
('15',
'Bears',
'2018-07-12T23:00:00.000Z',
'3',
'this is a note about bears'
);