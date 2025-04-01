CREATE TABLE customer (
    id UUID PRIMARY KEY UNIQUE,
    lastname VARCHAR(100) NOT NULL,
    firstname VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);


-- Regular customers
INSERT INTO customer (id, lastname, firstname, email) VALUES
    ('f47ac10b-58cc-4372-a567-0e02b2c3d479', 'Smith', 'John', 'john.smith@example.com'),
    ('550e8400-e29b-41d4-a716-446655440000', 'Johnson', 'Emily', 'emily.johnson@example.com'),
    ('6ba7b810-9dad-11d1-80b4-00c04fd430c8', 'Williams', 'Michael', 'michael.williams@example.com'),
    ('7cb82c23-3f12-4a2b-b53c-d789e1234567', 'Brown', 'Sarah', 'sarah.brown@example.com'),
    ('8de93f45-5a21-4c3d-9876-e09876543210', 'Jones', 'David', 'david.jones@example.com');

-- Same lastname, different firstname
INSERT INTO customer (id, lastname, firstname, email) VALUES
    ('9ab04c67-6b32-5d4e-abcd-f12345678901', 'Smith', 'Jane', 'jane.smith@example.com'),
    ('a1b23c45-7d89-6e0f-bcde-123456789012', 'Smith', 'Robert', 'robert.smith@example.com'),
    ('b2c34d56-8e90-7f1a-cdef-234567890123', 'Smith', 'Emma', 'emma.smith@example.com');

-- Same firstname, different lastname
INSERT INTO customer (id, lastname, firstname, email) VALUES
    ('c3d45e67-9f01-8a2b-def0-345678901234', 'Davis', 'John', 'john.davis@example.com'),
    ('d4e56f78-0a12-9b3c-ef01-456789012345', 'Wilson', 'John', 'john.wilson@example.com'),
    ('e5f67a89-1b23-0c4d-fa01-567890123456', 'Taylor', 'John', 'john.taylor@example.com');

-- Special characters in names
INSERT INTO customer (id, lastname, firstname, email) VALUES
    ('f6a78b90-2c34-1d5e-ab01-678901234567', 'O''Brien', 'Mary', 'mary.obrien@example.com'),
    ('a7b89c01-3d45-2e6f-bc01-789012345678', 'Müller', 'Hans', 'hans.mueller@example.com'),
    ('b8c90d12-4e56-3f7a-cd01-890123456789', 'García', 'José', 'jose.garcia@example.com');

-- Edge cases
INSERT INTO customer (id, lastname, firstname, email) VALUES
    ('c9d01e23-5f67-4a8b-de01-901234567890', 'Lee', 'Li', 'li.lee@example.com'), -- Short names
    ('d0e12f34-6a78-5b9c-ef01-012345678901', 'Wolfeschlegelsteinhausenbergerdorff', 'Johann', 'johann.w@example.com'), -- Very long lastname
    ('e1f23a45-7b89-6c0d-ab01-123456789012', 'King-Smith', 'Mary-Jane', 'mj.kingsmith@example.com'), -- Hyphenated names
    ('f2a34b56-8c90-7d1e-cd01-234567890123', 'de la Cruz', 'Juan', 'juan.delacruz@example.com'), -- Multi-word lastname
    ('a3b45c67-9d01-8e2f-ef01-345678901234', 'Smith', 'John Jr.', 'john.smith.jr@example.com'), -- Name with suffix
    ('b4c56d78-0e12-9f3a-ab01-456789012345', 'UPPERCASE', 'FIRSTNAME', 'all.uppercase@example.com'); -- All uppercase
