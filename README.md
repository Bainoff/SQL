![PostgreSQL](https://developer.asustor.com/uploadIcons/0020_999_1617260086_postgresql-icon_256.png)


# SQL

Hands-on experience in all kinds of CRUD operations.

```SQL        
select distinct employees.employee_name, roles.role_name, salary.monthly_salary 
from employees
join employee_salary on employees.id = employee_salary.employee_id
join salary on employee_salary.salary_id = salary.id
join roles_salary on salary.id = roles_salary.id_salary
join roles on roles_salary.id_role = roles.id
where salary.monthly_salary in (
	select monthly_salary
	from salary
	where monthly_salary >= 1700
	and monthly_salary <= 2300
);
```
