WITH ranked_applications AS (
    SELECT
        customer_id,
        application_id,
        application_date,
        loan_status,
        ROW_NUMBER() OVER (
            PARTITION BY customer_id
            ORDER BY application_date DESC, application_id DESC
        ) AS rn
    FROM loan_applications
)
SELECT
    customer_id,
    application_id,
    application_date,
    loan_status
FROM ranked_applications
WHERE rn = 1
ORDER BY customer_id;