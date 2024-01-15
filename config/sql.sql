CREATE TABLE IF NOT EXISTS simonn_redeemedcodes (
    identifier VARCHAR(255) NOT NULL,
    code VARCHAR(255) NOT NULL,
    PRIMARY KEY (identifier, code)
);
