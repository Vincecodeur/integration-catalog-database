INSERT INTO integration_status_history
(
    integration_id,
    status_id,
    effective_date,
    end_date,
    notes
)
VALUES

(
    1,
    4,
    DATE '2026-01-01',
    DATE '2026-01-15',
    'Development started'
),

(
    1,
    5,
    DATE '2026-01-15',
    DATE '2026-01-31',
    'QA validation'
),

(
    1,
    6,
    DATE '2026-01-31',
    DATE '2026-02-07',
    'Released to production'
),

(
    1,
    7,
    DATE '2026-02-07',
    DATE '2026-03-01',
    'Pilot customer rollout'
),

(
    1,
    8,
    DATE '2026-03-01',
    NULL,
    'Available to all customers'
);