use careerHub;

/*
5.Write an SQL query to count the number of applications received for each job listing in the 
"Jobs" table. Display the job title and the corresponding application count. Ensure that it lists all 
jobs, even if they have no applications.
*/
select jobs.jobTitle , count(applications.applicantId) as applicationCount 
	from jobs left join applications 
	on applications.jobId = jobs.jobId
    group by jobs.jobTitle;
    
/*
6.Develop an SQL query that retrieves job listings from the "Jobs" table within a specified salary 
range. Allow parameters for the minimum and maximum salary values. Display the job title, 
company name, location, and salary for each matching job.
*/
select j.jobTitle, c.companyName, j.jobLocation, j.salary from jobs j
	join companies c on j.companyId = c.companyId
    where j.salary between 80000 and 100000;
    
/*
7. Write an SQL query that retrieves the job application history for a specific applicant. Allow a 
parameter for the ApplicantID, and return a result set with the job titles, company names, and 
application dates for all the jobs the applicant has applied to.
*/
select j.jobTitle, c.companyName, a.applicationDate
	from applications a join jobs j on a.jobId = j.jobId
    join companies c on j.companyId = j.companyId
    where a.applicantId = 203;
    
/*
8. Create an SQL query that calculates and displays the average salary offered by all companies for 
job listings in the "Jobs" table. Ensure that the query filters out jobs with a salary of zero.
*/
select avg(salary) as avarageSalary from jobs;

/*
9. Write an SQL query to identify the company that has posted the most job listings. Display the 
company name along with the count of job listings they have posted. Handle ties if multiple 
companies have the same maximum count.
*/
select companyName , count(*) as jobCount from jobs j
	join companies c on j.companyId = c.companyId
    group by companyName
    order by jobCount desc
    limit 1;
    
/*
11. Retrieve a list of distinct job titles with salaries between $60,000 and $80,000
*/
select distinct jobTitle from jobs where salary between 60000 and 80000;

/*
12. Find the jobs that have not received any applications.
*/
select * from jobs where jobId not in (select distinct jobId from applications);

/*
13. Retrieve a list of job applicants along with the companies they have applied to and the positions 
they have applied for.
*/
select applicants.firstName as firstName, applicants.lastName as lastName, 
	c.companyName as companyName, jobs.jobTitle as jobTitle
    from applicants join applications on applicants.applicantId = applications.applicantId
	join jobs on applications.jobId = jobs.jobId
    join companies c on jobs.companyId = c.companyId;
    
/*
14.  Retrieve a list of companies along with the count of jobs they have posted, even if they have not 
received any applications.
*/
select c.companyName, count(j.jobId) as jobCount from companies c
	join jobs j on c.companyId = j.companyId
    group by companyName
    order by jobCount desc;

/*
15. List all applicants along with the companies and positions they have applied for, including those 
who have not applied.
*/
select a.firstName, a.lastName, companies.companyName, jobs.jobTitle from applicants a
	left join applications ap on a.applicantId = ap.applicantId
    left join jobs on ap.jobId = jobs.jobId
    left join companies on jobs.companyId = companies.companyId;

/*
16. Find companies that have posted jobs with a salary higher than the average salary of all jobs.
*/
select c.companyName, jobs.salary from companies c join jobs on c.companyId = jobs.companyId where jobs.salary > (
	select avg(salary) from jobs
);

/*
17. Display a list of applicants with their names and a concatenated string of their city and state.
*/
select concat(firstName, ' ', lastName) as fullName, concat(city, ',', state) as location from applicants;

/*
18.  Retrieve a list of jobs with titles containing either 'Developer' or 'Engineer'.
*/
select * from jobs where jobTitle like '%Developer%' or jobTitle like '%Engineer%';

/*
19. Retrieve a list of applicants and the jobs they have applied for, including those who have not 
applied and jobs without applicants.
*/
select a.applicantId, a.firstName, a.lastName, j.JobId, j.JobTitle from applicants a 
	left join applications ap on a.applicantId = ap.applicantId
    left join jobs j on ap.jobId = j.jobId;
    
/*
20. List all combinations of applicants and companies where the company is in a specific city and the 
applicant has more than 2 years of experience. For example: city=Chennai
*/
select a.applicantId, a.firstName, a.lastName, c.companyId, c.companyName from applicants a
	join applications ap on a.applicantId = ap.applicantId
    join jobs j on ap.jobId = j.jobId
    join companies c on j.companyId = c.companyId
    where c.location = 'Madurai' and a.experience > 2;