CREATE TABLE servers (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    hostname VARCHAR(50) NOT NULL UNIQUE,
    ip_address INET NOT NULL UNIQUE,
    operating_system VARCHAR(50) NOT NULL,
    os_version VARCHAR(50) NOT NULL,
    cpu INTEGER NOT NULL,
    ram INTEGER NOT NULL,
    disk INTEGER NOT NULL,
    status VARCHAR(50) NOT NULL,
    environment_id INTEGER NOT NULL REFERENCES environments(id)
);
