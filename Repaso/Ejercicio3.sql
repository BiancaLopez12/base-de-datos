DELETE FROM jobs
WHERE job_id NOT IN (
    SELECT job_id
    FROM employees
    GROUP BY job_id )