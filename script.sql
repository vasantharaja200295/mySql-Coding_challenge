-- initializing database
create database if not exists careerHub;

use careerHub;

-- creating tables:

-- 2. Create tables for Companies, Jobs, Applicants and Applications.
create table if not exists companies(
	companyId int not null unique primary key,
    companyName varchar(255),
    location varchar(255)
);

create table if not exists jobs(
	jobId int not null unique primary key,
    companyId int,
    jobTitle varchar(255),
    jobDescription  varchar(1255),
    jobLocation varchar(255),
    salary decimal,
    jobType varchar(255),
    postedDate datetime
);

create table if not exists applicants (
	applicantId int not null unique primary key,
    firstName varchar(255),
    lastName varchar(255),
    email varchar(255),
    phone varchar(10),
    city varchar(30),
    state varchar(30),  -- modified the table to add 3 more columns city state and experience to make sure some queries to work
    experience int,
    resume text
);

create table if not exists applications (
	applicationId int not null unique primary key,
    jobId int,
    applicantId int,
    applicationDate datetime,
    coverLetter text
);


-- 3. Define appropriate primary keys, foreign keys, and constraints.
alter table jobs add foreign key (companyId) references companies(companyId);
alter table applications add foreign key (jobId) references jobs(jobId);
alter table applications add foreign key (applicantId) references applicants(applicantId);
