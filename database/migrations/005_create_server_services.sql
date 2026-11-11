CREATE TABLE server_services (
    server_id INTEGER NOT NULL REFERENCES servers(id),
    service_id INTEGER NOT NULL REFERENCES services(id),
    PRIMARY KEY (server_id, service_id)
);
