SELECT DISTINCT department_name, count( DISTINCT first_name), sum( DISTINCT salary) FROM departments d JOIN employees e ON d.department_id = e.department_id 
GROUP by department_name