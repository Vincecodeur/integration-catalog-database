CREATE TABLE contact (

    contact_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    partner_id INTEGER NOT NULL,

    first_name VARCHAR(100) NOT NULL,

    last_name VARCHAR(100) NOT NULL,

    email VARCHAR(255),

    phone VARCHAR(50),

    role VARCHAR(100),

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_contact_partner
        FOREIGN KEY (partner_id)
        REFERENCES partner(partner_id)

);