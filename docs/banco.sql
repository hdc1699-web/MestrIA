CREATE TABLE professores (
  id          SERIAL PRIMARY KEY,
  nome        TEXT NOT NULL,
  sobrenome   TEXT NOT NULL,
  email       TEXT UNIQUE NOT NULL,
  senha_hash  TEXT NOT NULL,
  criado_em   TIMESTAMP DEFAULT NOW()
);

ALTER TABLE professores ENABLE ROW LEVEL SECURITY;

CREATE TABLE planejamentos (
  id                    SERIAL PRIMARY KEY,
  professor_id          INTEGER NOT NULL REFERENCES professores(id),
  titulo                TEXT NOT NULL,
  disciplina            TEXT,
  turma                 TEXT,
  codigo_habilidade     TEXT,
  objeto_conhecimento   TEXT,
  acoes_didaticas       TEXT,
  recuperar_avancar     TEXT,
  criterios_avaliativos TEXT,
  observacoes           TEXT,
  criado_em             TIMESTAMP DEFAULT NOW()
);

ALTER TABLE planejamentos ENABLE ROW LEVEL SECURITY;