CREATE TABLE conversations (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    phone_number VARCHAR(30) NOT NULL,
    state VARCHAR(50) NOT NULL,
    proposed_slots JSONB,
    confirmed_slot TIMESTAMP,
    constraints JSONB,
    created_at TIMESTAMP DEFAULT now(),
    updated_at TIMESTAMP DEFAULT now()
);