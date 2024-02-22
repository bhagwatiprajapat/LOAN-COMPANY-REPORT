-- Total Applications
select count(id) as "count of Aplications"
from lc_2016_2017;


-- Require Loan Amount 
select 
sum(case when loan_amnt <10000 then 1 else 0 end) as " <10K",
sum(case when loan_amnt >=10000 and loan_amnt <20000 then 1 else 0 end) as "10k - 20k",
sum(case when loan_amnt >=20000 and loan_amnt <30000 then 1 else 0 end) as "20k - 30k",
sum(case when loan_amnt >=30000 then 1 else 0 end) as ">35K"
from lc_2016_2017;

-- Total Funded Amount
select sum(funded_amnt)as "Total Funded Amount"
from lc_2016_2017;

--  Grade wise Avg Rate of Interest
select avg(int_rate) as "Avg Interest of Rate" ,grade
from lc_2016_2017
group by grade;

-- Count of Duration Time period
select count(term)as "Count of Term",term
from lc_2016_2017
group by term;

-- How Many Grade 
select count(id) as "Count of Grade", grade
from lc_2016_2017
group by grade;

-- Total Count of Home Ownership
select count(home_ownership)as "Count of Home Ownership", home_ownership
from lc_2016_2017
group by home_ownership;

-- All Verification Status of Loan Aplications
select count(verification_status) "Count of Verification Status",verification_status
from lc_2016_2017
group by verification_status;

-- All Loan Status
select count(id)"count of loan Status", loan_status
from lc_2016_2017
group by loan_status;

-- Month Wise Issue Loan
select count(issue_d) "count of issue Month", issue_d
from lc_2016_2017
group by issue_d;

-- Count of loan Purpose
select count(purpose)"Count of Loan Purpose",purpose
from lc_2016_2017
group by purpose;

-- State wise Count of Loan Aplications
select state, count(id) "Count of Aplications"
from lc_2016_2017 join us_state_codes on lc_2016_2017.addr_state = us_state_codes.state_code
group by state;

-- Applicant Gross income 
select 
sum(case when annual_inc <500000 then 1 else 0 end) as "< 50K",
sum(case when annual_inc >=50000 and annual_inc >100000 then 1 else 0 end) as "50k - 100K",
sum(case when annual_inc >=100000 and annual_inc <200000 then 1 else 0 end) as "100k - 200k",
sum(case when annual_inc >=200000 and annual_inc >300000 then 1 else 0 end) as "200k - 300k",
sum(case when annual_inc >=300000 and annual_inc >400000 then 1 else 0 end) as "300k - 400k",
sum(case when annual_inc >=400000 and annual_inc <500000 then 1 else 0 end) as "400k - 500k",
sum(case when annual_inc >=500000 then 1 else 0 end) as "> 600k"
from lc_2016_2017;

-- Total Received Principal Amount
select sum(total_rec_prncp) as "Total Recived Principal Amount"
from lc_2016_2017;
 
-- Total Received Interest Amount
select sum(total_rec_int) as "Total Received Interest Amount" 
from lc_2016_2017;

-- Total Received Payment CAP+INT
select sum(total_pymnt)" Total Recived Payment CAP+INT" 
from lc_2016_2017;

-- Total Recoveries Amount
select sum(recoveries)"Total Recoveries"
from lc_2016_2017;

-- Total Received Late Fee
select sum(total_rec_late_fee)"Total Recived Late Fee"
from lc_2016_2017;

