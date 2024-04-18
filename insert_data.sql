use careerHub;

select * from companies;

-- Inserting data into the Companies table
INSERT INTO companies (companyId, companyName, location) VALUES
(1, 'ABC Corporation', 'Chennai'),
(2, 'XYZ Solutions', 'Coimbatore'),
(3, 'PQR Enterprises', 'Madurai'),
(4, 'LMN Technologies', 'Tiruchirappalli'),
(5, 'EFG Innovations', 'Salem'),
(6, 'RST Services', 'Tirunelveli'),
(7, 'UVW Solutions', 'Vellore'),
(8, 'IJK Industries', 'Erode'),
(9, 'OPQ Corporation', 'Thanjavur'),
(10, 'MNO Enterprises', 'Kanyakumari');

-- Inserting data into the Jobs table
INSERT INTO jobs (jobId, companyId, jobTitle, jobDescription, jobLocation, salary, jobType, postedDate) VALUES
(101, 1, 'Software Engineer', 'Developing software applications', 'Chennai', 100000, 'Full-time', '2024-04-16 09:00:00'),
(102, 2, 'Data Analyst', 'Analyzing data sets', 'Coimbatore', 80000, 'Full-time', '2024-04-16 10:00:00'),
(103, 3, 'Marketing Manager', 'Marketing strategy development', 'Madurai', 120000, 'Full-time', '2024-04-16 11:00:00'),
(104, 4, 'Web Developer', 'Building websites and web applications', 'Tiruchirappalli', 90000, 'Full-time', '2024-04-16 09:00:00'),
(105, 5, 'Data Scientist', 'Analyzing and interpreting complex data sets', 'Salem', 110000, 'Full-time', '2024-04-16 10:00:00'),
(106, 6, 'Business Analyst', 'Analyzing business processes and requirements', 'Tirunelveli', 85000, 'Full-time', '2024-04-16 11:00:00'),
(107, 7, 'UX/UI Designer', 'Designing user interfaces for digital products', 'Vellore', 95000, 'Full-time', '2024-04-16 09:00:00'),
(108, 8, 'Network Engineer', 'Designing and implementing computer networks', 'Erode', 105000, 'Full-time', '2024-04-16 10:00:00'),
(109, 9, 'Content Writer', 'Creating content for websites and marketing materials', 'Thanjavur', 75000, 'Full-time', '2024-04-16 11:00:00'),
(110, 10, 'Sales Executive', 'Promoting and selling products or services', 'Kanyakumari', 80000, 'Full-time', '2024-04-16 09:00:00'),
(111, 10, 'Python Developer', 'Entry level Python developer', 'Chennai', 80000, 'Full-time', '2024-04-16 06:00:00');


-- Inserting data into the Applicants table
INSERT INTO applicants (applicantId, firstName, lastName, email, phone, city, state, experience, resume) VALUES
(201, 'Aravind', 'Kumar', 'aravind.kumar@example.com', '9876543201', 'Chennai', 'Tamil Nadu', 3, 'Aravind_Kumar_Resume.pdf'),
(202, 'Priya', 'Raj', 'priya.raj@example.com', '9876543202', 'Chennai', 'Tamil Nadu', 2, 'Priya_Raj_Resume.pdf'),
(203, 'Manoj', 'Sharma', 'manoj.sharma@example.com', '9876543203', 'Chennai', 'Tamil Nadu',3, 'Manoj_Sharma_Resume.pdf'),
(204, 'Deepika', 'Nair', 'deepika.nair@example.com', '9876543204', 'Chennai', 'Tamil Nadu',3, 'Deepika_Nair_Resume.pdf'),
(205, 'Suresh', 'Venkat', 'suresh.venkat@example.com', '9876543205', 'Chennai', 'Tamil Nadu', 1, 'Suresh_Venkat_Resume.pdf'),
(206, 'Lavanya', 'Chandran', 'lavanya.chandran@example.com', '9876543206', 'Chennai', 'Tamil Nadu', 0, 'Lavanya_Chandran_Resume.pdf'),
(207, 'Rajesh', 'Sundar', 'rajesh.sundar@example.com', '9876543207', 'Chennai', 'Tamil Nadu',0, 'Rajesh_Sundar_Resume.pdf'),
(208, 'Anusha', 'Srinivasan', 'anusha.srinivasan@example.com', '9876543208', 'Chennai', 'Tamil Nadu', 2, 'Anusha_Srinivasan_Resume.pdf'),
(209, 'Ganesh', 'Krishnan', 'ganesh.krishnan@example.com', '9876543209', 'Chennai', 'Tamil Nadu', 2, 'Ganesh_Krishnan_Resume.pdf'),
(210, 'Divya', 'Ravi', 'divya.ravi@example.com', '9876543210', 'Chennai', 'Tamil Nadu', 3, 'Divya_Ravi_Resume.pdf');


-- Insert data into Applications table
INSERT INTO applications (applicationId, jobId, applicantId, applicationDate, coverLetter) VALUES
(301, 101, 201, '2024-04-16 12:00:00', 'Dear Hiring Manager, I am excited to apply for the Software Engineer position...'),
(302, 102, 202, '2024-04-16 13:00:00', 'Dear Hiring Manager, I am writing to express my interest in the Data Analyst role...'),
(303, 103, 203, '2024-04-16 14:00:00', 'Dear Hiring Manager, I am confident that my skills and experience make me a great fit for the Marketing Manager position...'),
(304, 104, 204, '2024-04-16 15:00:00', 'Dear Hiring Manager, I am interested in the Web Developer role and eager to contribute my expertise...'),
(305, 105, 205, '2024-04-16 16:00:00', 'Dear Hiring Manager, I am passionate about data analysis and excited to apply for the Data Scientist position...'),
(306, 106, 206, '2024-04-16 17:00:00', 'Dear Hiring Manager, I am applying for the Business Analyst role and confident in my ability to analyze and interpret data...'),
(307, 107, 207, '2024-04-16 18:00:00', 'Dear Hiring Manager, I am a creative UX/UI Designer with a strong portfolio and excited to join your team...'),
(308, 108, 208, '2024-04-16 19:00:00', 'Dear Hiring Manager, I am interested in the Network Engineer position and eager to apply my networking skills...'),
(309, 109, 209, '2024-04-16 20:00:00', 'Dear Hiring Manager, I am a skilled Content Writer with experience in creating engaging content...'),
(310, 110, 210, '2024-04-16 21:00:00', 'Dear Hiring Manager, I am enthusiastic about sales and eager to apply for the Sales Executive role...');
