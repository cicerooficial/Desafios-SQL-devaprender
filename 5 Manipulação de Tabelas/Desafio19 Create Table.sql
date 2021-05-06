CREATE TABLE Canal(
Canalid				INT				PRIMARY KEY,
Nome				VARCHAR(150)	NOT NULL,
ContagemInscritos	INT				DEFAULT 0,
DataCriacao			DATETIME		NOT NULL
);

CREATE TABLE Video(
Videoid			INT				PRIMARY KEY,	
Nome			VARCHAR(150)	NOT NULL,
Visualização	INT				DEFAULT 0,
Likes			INT				DEFAULT 0,
Dislikes		INT				DEFAULT 0,
Duracao			INT				NOT NULL,
Canalid			INT				FOREIGN KEY REFERENCES Canal(CanalId)
);

