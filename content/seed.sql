-- Smart Scholarship Engine: seed data (30 Indian central and state scholarship records)
-- Run after schema.sql.  Amounts and rules change yearly; confirm on the official portal.
PRAGMA foreign_keys = ON;
BEGIN TRANSACTION;

INSERT INTO scholarships (id, name, provider, level, state, description, amount_text, amount_min_inr, amount_max_inr, min_marks, merit_criterion, max_income_inr, gender, requires_disability, requires_minority, education_levels, portal_name, portal_url, deadline_note, verification, notes) VALUES
  (1, 'Central Sector Scheme of Scholarship for College and University Students (PM-USP CSSS)', 'Department of Higher Education, Ministry of Education', 'Central', NULL, 'Merit scholarship for students above the 80th percentile in Class 12 boards, from families earning up to ₹4.5 lakh. Not available alongside another scholarship or fee reimbursement.', '₹12,000/yr (UG, first 3 years); ₹20,000/yr (PG and years 4–5 of professional courses)', 12000, 20000, 0, 'Above 80th percentile in Class 12 board exam', 450000, 'Any', 0, 0, 'UG, PG', 'National Scholarship Portal (NSP)', 'https://scholarships.gov.in', 'Expected around 31 Oct on NSP; check the portal', 'researched', 'Merit is a board percentile, not a raw mark percentage, so min_marks is left at 0.');
INSERT INTO scholarships (id, name, provider, level, state, description, amount_text, amount_min_inr, amount_max_inr, min_marks, merit_criterion, max_income_inr, gender, requires_disability, requires_minority, education_levels, portal_name, portal_url, deadline_note, verification, notes) VALUES
  (2, 'AICTE Pragati Scholarship for Girl Students', 'All India Council for Technical Education (AICTE)', 'Central', NULL, 'For girls admitted to the first year (or lateral entry to the second year) of an AICTE-approved technical degree or diploma. Up to two girls per family.', '₹50,000/yr', 50000, 50000, 0, NULL, 800000, 'Female', 0, 0, 'Degree, Diploma (technical)', 'National Scholarship Portal (NSP)', 'https://scholarships.gov.in', 'Last listed deadline 31 Oct 2026; check NSP for extensions', 'researched', 'Also covers other AICTE technical courses such as pharmacy and architecture; mapped to Engineering here.');
INSERT INTO scholarships (id, name, provider, level, state, description, amount_text, amount_min_inr, amount_max_inr, min_marks, merit_criterion, max_income_inr, gender, requires_disability, requires_minority, education_levels, portal_name, portal_url, deadline_note, verification, notes) VALUES
  (3, 'AICTE Saksham Scholarship for Specially Abled Students', 'All India Council for Technical Education (AICTE)', 'Central', NULL, 'For students with a disability of 40% or more, admitted to an AICTE-approved technical degree or diploma.', '₹50,000/yr', 50000, 50000, 0, NULL, 800000, 'Any', 1, 0, 'Degree, Diploma (technical)', 'National Scholarship Portal (NSP)', 'https://scholarships.gov.in', 'Previous cycle closed 15 Dec 2025; check NSP for the current window', 'researched', NULL);
INSERT INTO scholarships (id, name, provider, level, state, description, amount_text, amount_min_inr, amount_max_inr, min_marks, merit_criterion, max_income_inr, gender, requires_disability, requires_minority, education_levels, portal_name, portal_url, deadline_note, verification, notes) VALUES
  (4, 'PM-YASASVI Post-Matric Scholarship for OBC, EBC and DNT Students', 'Ministry of Social Justice and Empowerment', 'Central', NULL, 'Post-matric support for OBC, EBC and denotified/nomadic tribe students with family income below ₹2.5 lakh.', 'Maintenance allowance and fee support; rate depends on course group', NULL, NULL, 0, NULL, 250000, 'Any', 0, 0, 'UG, PG, Diploma', 'National Scholarship Portal (NSP)', 'https://scholarships.gov.in', 'Opens yearly on NSP; check the portal for the current window', 'researched', 'Amounts vary by course group and were not confirmed.');
INSERT INTO scholarships (id, name, provider, level, state, description, amount_text, amount_min_inr, amount_max_inr, min_marks, merit_criterion, max_income_inr, gender, requires_disability, requires_minority, education_levels, portal_name, portal_url, deadline_note, verification, notes) VALUES
  (5, 'Post Matric Scholarship for Scheduled Caste Students', 'Ministry of Social Justice and Empowerment', 'Central', NULL, 'Covers compulsory fees and a maintenance allowance for SC students in post-matric courses.', 'Compulsory fee reimbursement plus maintenance allowance; rate depends on course group', NULL, NULL, 0, NULL, 250000, 'Any', 0, 0, 'UG, PG, Diploma', 'National Scholarship Portal (NSP)', 'https://scholarships.gov.in', 'Opens yearly on NSP; check the portal for the current window', 'general-knowledge', NULL);
INSERT INTO scholarships (id, name, provider, level, state, description, amount_text, amount_min_inr, amount_max_inr, min_marks, merit_criterion, max_income_inr, gender, requires_disability, requires_minority, education_levels, portal_name, portal_url, deadline_note, verification, notes) VALUES
  (6, 'Post Matric Scholarship for Scheduled Tribe Students', 'Ministry of Tribal Affairs', 'Central', NULL, 'Covers compulsory fees and a maintenance allowance for ST students in post-matric courses.', 'Compulsory fee reimbursement plus maintenance allowance; rate depends on course group', NULL, NULL, 0, NULL, 250000, 'Any', 0, 0, 'UG, PG, Diploma', 'National Scholarship Portal (NSP)', 'https://scholarships.gov.in', 'Opens yearly on NSP; check the portal for the current window', 'general-knowledge', NULL);
INSERT INTO scholarships (id, name, provider, level, state, description, amount_text, amount_min_inr, amount_max_inr, min_marks, merit_criterion, max_income_inr, gender, requires_disability, requires_minority, education_levels, portal_name, portal_url, deadline_note, verification, notes) VALUES
  (7, 'Merit-cum-Means Scholarship for Professional and Technical Courses (Minorities)', 'Ministry of Minority Affairs', 'Central', NULL, 'For minority-community students in professional or technical UG/PG courses with at least 50% marks.', 'Course fee plus maintenance allowance; rates set by the Ministry', NULL, NULL, 50, NULL, 250000, 'Any', 0, 1, 'UG, PG (professional)', 'National Scholarship Portal (NSP)', 'https://scholarships.gov.in', 'Opens yearly on NSP; check the portal for the current window', 'general-knowledge', NULL);
INSERT INTO scholarships (id, name, provider, level, state, description, amount_text, amount_min_inr, amount_max_inr, min_marks, merit_criterion, max_income_inr, gender, requires_disability, requires_minority, education_levels, portal_name, portal_url, deadline_note, verification, notes) VALUES
  (8, 'Post Matric Scholarship for Minorities', 'Ministry of Minority Affairs', 'Central', NULL, 'For minority-community students in post-matric courses with at least 50% marks.', 'Admission and tuition fee plus maintenance allowance; rates set by the Ministry', NULL, NULL, 50, NULL, 200000, 'Any', 0, 1, 'UG, PG, Diploma', 'National Scholarship Portal (NSP)', 'https://scholarships.gov.in', 'Opens yearly on NSP; check the portal for the current window', 'general-knowledge', NULL);
INSERT INTO scholarships (id, name, provider, level, state, description, amount_text, amount_min_inr, amount_max_inr, min_marks, merit_criterion, max_income_inr, gender, requires_disability, requires_minority, education_levels, portal_name, portal_url, deadline_note, verification, notes) VALUES
  (9, 'INSPIRE Scholarship for Higher Education (SHE)', 'Department of Science and Technology', 'Central', NULL, 'For top Class 12 performers (or top rankers in national entrance exams) who take up natural or basic sciences.', 'About ₹80,000/yr (scholarship plus mentorship grant)', 80000, 80000, 0, 'Top 1% in Class 12 board exam, or top rank in national entrance exams', NULL, 'Any', 0, 0, 'UG, Integrated MSc', 'INSPIRE-SHE portal', 'https://online-inspire.gov.in', 'Usually opens Oct–Dec; check the portal', 'general-knowledge', NULL);
INSERT INTO scholarships (id, name, provider, level, state, description, amount_text, amount_min_inr, amount_max_inr, min_marks, merit_criterion, max_income_inr, gender, requires_disability, requires_minority, education_levels, portal_name, portal_url, deadline_note, verification, notes) VALUES
  (10, 'Indira Gandhi Scholarship for Single Girl Child (PG)', 'University Grants Commission (UGC)', 'Central', NULL, 'For the only girl child of her parents, admitted to a regular full-time postgraduate course. An age limit applies.', '₹36,200/yr for 2 years', 36200, 36200, 0, NULL, NULL, 'Female', 0, 0, 'PG', 'UGC scholarships page', 'https://www.ugc.gov.in', 'Check UGC/NSP for the current window', 'general-knowledge', NULL);
INSERT INTO scholarships (id, name, provider, level, state, description, amount_text, amount_min_inr, amount_max_inr, min_marks, merit_criterion, max_income_inr, gender, requires_disability, requires_minority, education_levels, portal_name, portal_url, deadline_note, verification, notes) VALUES
  (11, 'UGC Scholarship for University Rank Holders (PG)', 'University Grants Commission (UGC)', 'Central', NULL, 'For students who secured a top rank in their final undergraduate exam and enrol in a postgraduate course.', '₹3,100/month for 2 years', 37200, 37200, 0, 'First or second rank in the final UG examination', NULL, 'Any', 0, 0, 'PG', 'UGC scholarships page', 'https://www.ugc.gov.in', 'Check UGC/NSP for the current window', 'general-knowledge', NULL);
INSERT INTO scholarships (id, name, provider, level, state, description, amount_text, amount_min_inr, amount_max_inr, min_marks, merit_criterion, max_income_inr, gender, requires_disability, requires_minority, education_levels, portal_name, portal_url, deadline_note, verification, notes) VALUES
  (12, 'Top Class Education Scheme for SC Students', 'Ministry of Social Justice and Empowerment', 'Central', NULL, 'Full fee support for SC students admitted to institutions notified under the scheme.', 'Tuition fee, living allowance and books/computer grant at notified institutions', NULL, NULL, 0, NULL, 800000, 'Any', 0, 0, 'UG, PG', 'National Scholarship Portal (NSP)', 'https://scholarships.gov.in', 'Opens yearly on NSP; check the portal for the current window', 'general-knowledge', NULL);
INSERT INTO scholarships (id, name, provider, level, state, description, amount_text, amount_min_inr, amount_max_inr, min_marks, merit_criterion, max_income_inr, gender, requires_disability, requires_minority, education_levels, portal_name, portal_url, deadline_note, verification, notes) VALUES
  (13, 'Top Class Education Scheme for ST Students', 'Ministry of Tribal Affairs', 'Central', NULL, 'Fee and living-cost support for ST students admitted to notified top institutions.', 'Tuition fee, living allowance and books/computer grant at notified institutions', NULL, NULL, 0, NULL, 600000, 'Any', 0, 0, 'UG, PG', 'National Scholarship Portal (NSP)', 'https://scholarships.gov.in', 'Opens yearly on NSP; check the portal for the current window', 'general-knowledge', 'Confirm the income limit on the portal.');
INSERT INTO scholarships (id, name, provider, level, state, description, amount_text, amount_min_inr, amount_max_inr, min_marks, merit_criterion, max_income_inr, gender, requires_disability, requires_minority, education_levels, portal_name, portal_url, deadline_note, verification, notes) VALUES
  (14, 'Post Matric Scholarship for Students with Disabilities', 'Department of Empowerment of Persons with Disabilities', 'Central', NULL, 'For students with a disability of 40% or more in post-matric courses.', 'Maintenance allowance and fee reimbursement; rate depends on course group', NULL, NULL, 0, NULL, 250000, 'Any', 1, 0, 'UG, PG, Diploma', 'National Scholarship Portal (NSP)', 'https://scholarships.gov.in', 'Opens yearly on NSP; check the portal for the current window', 'general-knowledge', NULL);
INSERT INTO scholarships (id, name, provider, level, state, description, amount_text, amount_min_inr, amount_max_inr, min_marks, merit_criterion, max_income_inr, gender, requires_disability, requires_minority, education_levels, portal_name, portal_url, deadline_note, verification, notes) VALUES
  (15, 'Top Class Education Scheme for Students with Disabilities', 'Department of Empowerment of Persons with Disabilities', 'Central', NULL, 'Fee support for students with a disability of 40% or more at notified top institutions.', 'Tuition fee and living allowance at notified institutions', NULL, NULL, 0, NULL, 800000, 'Any', 1, 0, 'UG, PG', 'National Scholarship Portal (NSP)', 'https://scholarships.gov.in', 'Opens yearly on NSP; check the portal for the current window', 'general-knowledge', NULL);
INSERT INTO scholarships (id, name, provider, level, state, description, amount_text, amount_min_inr, amount_max_inr, min_marks, merit_criterion, max_income_inr, gender, requires_disability, requires_minority, education_levels, portal_name, portal_url, deadline_note, verification, notes) VALUES
  (16, 'Karnataka Post-Matric Scholarship for SC Students', 'Social Welfare Department, Government of Karnataka', 'State', 'Karnataka', 'For Karnataka-domiciled SC students in post-matric courses.', 'Full fee reimbursement plus maintenance allowance', NULL, NULL, 0, NULL, 250000, 'Any', 0, 0, 'UG, PG, Diploma', 'Karnataka State Scholarship Portal (SSP)', 'https://ssp.postmatric.karnataka.gov.in', '2025–26 window closed around 20 Mar 2026; check SSP for the next window', 'researched', NULL);
INSERT INTO scholarships (id, name, provider, level, state, description, amount_text, amount_min_inr, amount_max_inr, min_marks, merit_criterion, max_income_inr, gender, requires_disability, requires_minority, education_levels, portal_name, portal_url, deadline_note, verification, notes) VALUES
  (17, 'Karnataka Post-Matric Scholarship for ST Students', 'Tribal Welfare Department, Government of Karnataka', 'State', 'Karnataka', 'For Karnataka-domiciled ST students in post-matric courses.', 'Fee reimbursement plus maintenance allowance', NULL, NULL, 0, NULL, 250000, 'Any', 0, 0, 'UG, PG, Diploma', 'Karnataka State Scholarship Portal (SSP)', 'https://ssp.postmatric.karnataka.gov.in', 'Check SSP for the current window', 'researched', NULL);
INSERT INTO scholarships (id, name, provider, level, state, description, amount_text, amount_min_inr, amount_max_inr, min_marks, merit_criterion, max_income_inr, gender, requires_disability, requires_minority, education_levels, portal_name, portal_url, deadline_note, verification, notes) VALUES
  (18, 'Vidyasiri Food and Accommodation Scholarship (Karnataka)', 'Backward Classes Welfare Department, Government of Karnataka', 'State', 'Karnataka', 'Food and accommodation support for post-matric SC, ST and OBC students who study away from home.', '₹1,500/month for 10 months (₹15,000/yr)', 15000, 15000, 0, NULL, 250000, 'Any', 0, 0, 'UG, PG, Diploma', 'Karnataka State Scholarship Portal (SSP)', 'https://ssp.postmatric.karnataka.gov.in', '2025–26 window closed around 5 Mar 2026; check SSP', 'researched', 'Income limits can be lower for some OBC sub-categories.');
INSERT INTO scholarships (id, name, provider, level, state, description, amount_text, amount_min_inr, amount_max_inr, min_marks, merit_criterion, max_income_inr, gender, requires_disability, requires_minority, education_levels, portal_name, portal_url, deadline_note, verification, notes) VALUES
  (19, 'Karnataka Post-Matric Scholarship for Backward Classes (OBC)', 'Backward Classes Welfare Department, Government of Karnataka', 'State', 'Karnataka', 'Fee reimbursement and post-matric support for Karnataka-domiciled backward class students.', 'Fee reimbursement and/or post-matric scholarship', NULL, NULL, 0, NULL, 250000, 'Any', 0, 0, 'UG, PG, Diploma', 'Karnataka State Scholarship Portal (SSP)', 'https://ssp.postmatric.karnataka.gov.in', 'Check SSP for the current window', 'researched', 'The ₹2.5 lakh limit applies to Category 1; other categories have lower limits.');
INSERT INTO scholarships (id, name, provider, level, state, description, amount_text, amount_min_inr, amount_max_inr, min_marks, merit_criterion, max_income_inr, gender, requires_disability, requires_minority, education_levels, portal_name, portal_url, deadline_note, verification, notes) VALUES
  (20, 'Karnataka Brahmin Development Board Post-Matric Scholarship (Sandeepani Shishya Vethana)', 'Karnataka State Brahmin Development Board', 'State', 'Karnataka', 'Post-matric support for students of the Brahmin community in Karnataka. Community cannot be checked by the matcher.', 'Amount varies by course', NULL, NULL, 0, NULL, 800000, 'Any', 0, 0, 'UG, PG, Diploma', 'Karnataka State Scholarship Portal (SSP)', 'https://ssp.postmatric.karnataka.gov.in', 'Check SSP for the current window', 'researched', NULL);
INSERT INTO scholarships (id, name, provider, level, state, description, amount_text, amount_min_inr, amount_max_inr, min_marks, merit_criterion, max_income_inr, gender, requires_disability, requires_minority, education_levels, portal_name, portal_url, deadline_note, verification, notes) VALUES
  (21, 'Rajarshi Chhatrapati Shahu Maharaj Shikshan Shulkh Shishyavrutti Yojana (EBC)', 'Government of Maharashtra (via MahaDBT)', 'State', 'Maharashtra', 'Tuition and exam fee concession for economically backward students admitted to professional courses through CAP.', '50% of tuition fee and 50% of exam fee', NULL, NULL, 0, NULL, 800000, 'Any', 0, 0, 'UG, PG (professional)', 'MahaDBT portal', 'https://mahadbtmahait.gov.in', '2025–26 deadline was 31 Mar 2026; 2026–27 applications are open, check MahaDBT', 'researched', 'No more than two children per family can benefit in a year.');
INSERT INTO scholarships (id, name, provider, level, state, description, amount_text, amount_min_inr, amount_max_inr, min_marks, merit_criterion, max_income_inr, gender, requires_disability, requires_minority, education_levels, portal_name, portal_url, deadline_note, verification, notes) VALUES
  (22, 'Pudhumai Penn Scheme (Moovalur Ramamirtham Ammaiyar Higher Education Assurance Scheme)', 'Social Welfare and Women Empowerment Department, Government of Tamil Nadu', 'State', 'Tamil Nadu', 'For girls who studied Classes 6–12 in Tamil Nadu government (or aided Tamil-medium) schools and now pursue UG, diploma or ITI courses.', '₹1,000/month until the course ends (₹12,000/yr)', 12000, 12000, 0, NULL, NULL, 'Female', 0, 0, 'UG, Diploma, ITI', 'Tamil Nadu Social Welfare Department', 'https://tnsocialwelfare.tn.gov.in', 'Applied for through your college; check the portal for dates', 'researched', NULL);
INSERT INTO scholarships (id, name, provider, level, state, description, amount_text, amount_min_inr, amount_max_inr, min_marks, merit_criterion, max_income_inr, gender, requires_disability, requires_minority, education_levels, portal_name, portal_url, deadline_note, verification, notes) VALUES
  (23, 'Tamil Pudhalvan Scheme', 'Government of Tamil Nadu', 'State', 'Tamil Nadu', 'Counterpart of Pudhumai Penn for boys who studied in Tamil Nadu government schools and pursue higher education.', '₹1,000/month (₹12,000/yr)', 12000, 12000, 0, NULL, NULL, 'Male', 0, 0, 'UG, Diploma, ITI', 'Government of Tamil Nadu', 'https://www.tn.gov.in', 'Applied for through your college; check for dates', 'researched', NULL);
INSERT INTO scholarships (id, name, provider, level, state, description, amount_text, amount_min_inr, amount_max_inr, min_marks, merit_criterion, max_income_inr, gender, requires_disability, requires_minority, education_levels, portal_name, portal_url, deadline_note, verification, notes) VALUES
  (24, 'Swami Vivekananda Merit-cum-Means Scholarship (SVMCM)', 'Government of West Bengal', 'State', 'West Bengal', 'For West Bengal students with at least 60% marks and family income up to ₹2.5 lakh, studying in the state.', '₹1,000–₹8,000/month (₹12,000–₹96,000/yr by course)', 12000, 96000, 60, NULL, 250000, 'Any', 0, 0, 'Class 11–12, UG, PG, PhD', 'SVMCM portal', 'https://svmcm.wbhed.gov.in', 'Previous cycle closed 30 Nov 2025; check the portal', 'researched', NULL);
INSERT INTO scholarships (id, name, provider, level, state, description, amount_text, amount_min_inr, amount_max_inr, min_marks, merit_criterion, max_income_inr, gender, requires_disability, requires_minority, education_levels, portal_name, portal_url, deadline_note, verification, notes) VALUES
  (25, 'Mukhyamantri Yuva Swavalamban Yojana (MYSY)', 'Education Department, Government of Gujarat', 'State', 'Gujarat', 'Tuition fee assistance for Gujarat students with family income up to ₹6 lakh who score at least the 80th percentile in Class 10/12.', 'Up to ₹25,000/yr (non-professional UG), ₹50,000 (engineering/pharmacy), ₹2 lakh (medical); hostel up to ₹12,000/yr', 25000, 200000, 0, 'At least 80th percentile in Class 10 or 12 board exam', 600000, 'Any', 0, 0, 'UG, Diploma', 'MYSY portal', 'https://mysy.gujarat.gov.in', 'Expected around 31 Oct; 2026–27 registration opened on Digital Gujarat', 'researched', NULL);
INSERT INTO scholarships (id, name, provider, level, state, description, amount_text, amount_min_inr, amount_max_inr, min_marks, merit_criterion, max_income_inr, gender, requires_disability, requires_minority, education_levels, portal_name, portal_url, deadline_note, verification, notes) VALUES
  (26, 'Uttar Pradesh Post-Matric and Other-than-Post-Matric Scholarship', 'Department of Social Welfare, Government of Uttar Pradesh', 'State', 'Uttar Pradesh', 'Open to General, OBC, SC, ST and minority students from Uttar Pradesh in post-matric courses.', 'Fee reimbursement and/or scholarship; rates depend on course and category', NULL, NULL, 0, NULL, 250000, 'Any', 0, 0, 'UG, PG, Diploma', 'UP Scholarship portal', 'https://scholarship.up.gov.in', 'Usually opens Jul–Oct; check the portal', 'general-knowledge', 'Income limit is lower (about ₹2 lakh) for General/OBC/minority applicants; confirm on the portal.');
INSERT INTO scholarships (id, name, provider, level, state, description, amount_text, amount_min_inr, amount_max_inr, min_marks, merit_criterion, max_income_inr, gender, requires_disability, requires_minority, education_levels, portal_name, portal_url, deadline_note, verification, notes) VALUES
  (27, 'Bihar Mukhyamantri Kanya Utthan Yojana', 'Government of Bihar', 'State', 'Bihar', 'One-time grant for unmarried girls from Bihar on passing intermediate and again on completing graduation.', '₹25,000 (intermediate) / ₹50,000 (graduation), one time', 25000, 50000, 0, NULL, NULL, 'Female', 0, 0, 'Intermediate, UG', 'Government of Bihar', 'https://www.bihar.gov.in', 'Check the state education department for dates', 'general-knowledge', NULL);
INSERT INTO scholarships (id, name, provider, level, state, description, amount_text, amount_min_inr, amount_max_inr, min_marks, merit_criterion, max_income_inr, gender, requires_disability, requires_minority, education_levels, portal_name, portal_url, deadline_note, verification, notes) VALUES
  (28, 'Madhya Pradesh Mukhyamantri Medhavi Vidyarthi Yojana', 'Government of Madhya Pradesh', 'State', 'Madhya Pradesh', 'Fee reimbursement for MP students with at least 70% in Class 12 who get admission to professional courses through entrance exams.', 'Tuition fee reimbursement', NULL, NULL, 70, NULL, 600000, 'Any', 0, 0, 'UG (professional)', 'MP Scholarship portal', 'https://scholarshipportal.mp.nic.in', 'Check the portal for the current window', 'general-knowledge', NULL);
INSERT INTO scholarships (id, name, provider, level, state, description, amount_text, amount_min_inr, amount_max_inr, min_marks, merit_criterion, max_income_inr, gender, requires_disability, requires_minority, education_levels, portal_name, portal_url, deadline_note, verification, notes) VALUES
  (29, 'Telangana ePASS Post-Matric Scholarship', 'Government of Telangana', 'State', 'Telangana', 'Fee reimbursement and maintenance support for SC, ST, BC, EBC and minority students from Telangana.', 'Tuition fee reimbursement plus maintenance fee', NULL, NULL, 0, NULL, 200000, 'Any', 0, 0, 'UG, PG, Diploma', 'Telangana ePASS', 'https://telanganaepass.cgg.gov.in', 'Usually opens Aug–Dec; check ePASS', 'general-knowledge', NULL);
INSERT INTO scholarships (id, name, provider, level, state, description, amount_text, amount_min_inr, amount_max_inr, min_marks, merit_criterion, max_income_inr, gender, requires_disability, requires_minority, education_levels, portal_name, portal_url, deadline_note, verification, notes) VALUES
  (30, 'Odisha Post-Matric Scholarship for SC and ST Students', 'Government of Odisha', 'State', 'Odisha', 'Post-matric fee and maintenance support for Odisha SC and ST students.', 'Fee reimbursement plus maintenance allowance', NULL, NULL, 0, NULL, 250000, 'Any', 0, 0, 'UG, PG, Diploma', 'Odisha Scholarship portal', 'https://scholarship.odisha.gov.in', 'Check the portal for the current window', 'general-knowledge', NULL);

INSERT INTO scholarship_courses (scholarship_id, course) VALUES (1, 'Engineering');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (1, 'Medicine');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (1, 'Science');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (1, 'Commerce');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (1, 'Arts');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (2, 'Engineering');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (3, 'Engineering');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (4, 'Engineering');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (4, 'Medicine');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (4, 'Science');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (4, 'Commerce');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (4, 'Arts');
INSERT INTO scholarship_categories (scholarship_id, category) VALUES (4, 'OBC');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (5, 'Engineering');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (5, 'Medicine');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (5, 'Science');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (5, 'Commerce');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (5, 'Arts');
INSERT INTO scholarship_categories (scholarship_id, category) VALUES (5, 'SC');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (6, 'Engineering');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (6, 'Medicine');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (6, 'Science');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (6, 'Commerce');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (6, 'Arts');
INSERT INTO scholarship_categories (scholarship_id, category) VALUES (6, 'ST');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (7, 'Engineering');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (7, 'Medicine');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (8, 'Engineering');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (8, 'Medicine');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (8, 'Science');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (8, 'Commerce');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (8, 'Arts');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (9, 'Science');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (10, 'Engineering');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (10, 'Medicine');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (10, 'Science');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (10, 'Commerce');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (10, 'Arts');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (11, 'Engineering');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (11, 'Medicine');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (11, 'Science');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (11, 'Commerce');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (11, 'Arts');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (12, 'Engineering');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (12, 'Medicine');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (12, 'Commerce');
INSERT INTO scholarship_categories (scholarship_id, category) VALUES (12, 'SC');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (13, 'Engineering');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (13, 'Medicine');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (13, 'Commerce');
INSERT INTO scholarship_categories (scholarship_id, category) VALUES (13, 'ST');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (14, 'Engineering');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (14, 'Medicine');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (14, 'Science');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (14, 'Commerce');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (14, 'Arts');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (15, 'Engineering');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (15, 'Medicine');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (15, 'Commerce');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (16, 'Engineering');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (16, 'Medicine');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (16, 'Science');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (16, 'Commerce');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (16, 'Arts');
INSERT INTO scholarship_categories (scholarship_id, category) VALUES (16, 'SC');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (17, 'Engineering');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (17, 'Medicine');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (17, 'Science');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (17, 'Commerce');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (17, 'Arts');
INSERT INTO scholarship_categories (scholarship_id, category) VALUES (17, 'ST');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (18, 'Engineering');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (18, 'Medicine');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (18, 'Science');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (18, 'Commerce');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (18, 'Arts');
INSERT INTO scholarship_categories (scholarship_id, category) VALUES (18, 'SC');
INSERT INTO scholarship_categories (scholarship_id, category) VALUES (18, 'ST');
INSERT INTO scholarship_categories (scholarship_id, category) VALUES (18, 'OBC');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (19, 'Engineering');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (19, 'Medicine');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (19, 'Science');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (19, 'Commerce');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (19, 'Arts');
INSERT INTO scholarship_categories (scholarship_id, category) VALUES (19, 'OBC');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (20, 'Engineering');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (20, 'Medicine');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (20, 'Science');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (20, 'Commerce');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (20, 'Arts');
INSERT INTO scholarship_categories (scholarship_id, category) VALUES (20, 'General');
INSERT INTO scholarship_categories (scholarship_id, category) VALUES (20, 'EWS');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (21, 'Engineering');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (21, 'Medicine');
INSERT INTO scholarship_categories (scholarship_id, category) VALUES (21, 'General');
INSERT INTO scholarship_categories (scholarship_id, category) VALUES (21, 'EWS');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (22, 'Engineering');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (22, 'Medicine');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (22, 'Science');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (22, 'Commerce');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (22, 'Arts');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (23, 'Engineering');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (23, 'Medicine');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (23, 'Science');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (23, 'Commerce');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (23, 'Arts');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (24, 'Engineering');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (24, 'Medicine');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (24, 'Science');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (24, 'Commerce');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (24, 'Arts');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (25, 'Engineering');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (25, 'Medicine');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (25, 'Science');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (25, 'Commerce');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (25, 'Arts');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (26, 'Engineering');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (26, 'Medicine');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (26, 'Science');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (26, 'Commerce');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (26, 'Arts');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (27, 'Engineering');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (27, 'Medicine');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (27, 'Science');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (27, 'Commerce');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (27, 'Arts');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (28, 'Engineering');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (28, 'Medicine');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (29, 'Engineering');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (29, 'Medicine');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (29, 'Science');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (29, 'Commerce');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (29, 'Arts');
INSERT INTO scholarship_categories (scholarship_id, category) VALUES (29, 'SC');
INSERT INTO scholarship_categories (scholarship_id, category) VALUES (29, 'ST');
INSERT INTO scholarship_categories (scholarship_id, category) VALUES (29, 'OBC');
INSERT INTO scholarship_categories (scholarship_id, category) VALUES (29, 'EWS');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (30, 'Engineering');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (30, 'Medicine');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (30, 'Science');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (30, 'Commerce');
INSERT INTO scholarship_courses (scholarship_id, course) VALUES (30, 'Arts');
INSERT INTO scholarship_categories (scholarship_id, category) VALUES (30, 'SC');
INSERT INTO scholarship_categories (scholarship_id, category) VALUES (30, 'ST');

INSERT INTO scholarship_levels (scholarship_id, level) VALUES (1, 'UG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (1, 'PG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (2, 'Diploma/ITI');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (2, 'UG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (3, 'Diploma/ITI');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (3, 'UG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (4, 'Diploma/ITI');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (4, 'UG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (4, 'PG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (5, 'Diploma/ITI');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (5, 'UG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (5, 'PG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (6, 'Diploma/ITI');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (6, 'UG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (6, 'PG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (7, 'UG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (7, 'PG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (8, 'Diploma/ITI');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (8, 'UG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (8, 'PG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (9, 'UG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (10, 'PG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (11, 'PG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (12, 'UG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (12, 'PG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (13, 'UG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (13, 'PG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (14, 'Diploma/ITI');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (14, 'UG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (14, 'PG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (15, 'UG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (15, 'PG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (16, 'Diploma/ITI');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (16, 'UG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (16, 'PG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (17, 'Diploma/ITI');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (17, 'UG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (17, 'PG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (18, 'Diploma/ITI');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (18, 'UG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (18, 'PG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (19, 'Diploma/ITI');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (19, 'UG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (19, 'PG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (20, 'Diploma/ITI');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (20, 'UG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (20, 'PG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (21, 'UG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (21, 'PG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (22, 'Diploma/ITI');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (22, 'UG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (23, 'Diploma/ITI');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (23, 'UG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (24, 'Class 11-12');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (24, 'UG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (24, 'PG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (24, 'PhD');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (25, 'Diploma/ITI');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (25, 'UG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (26, 'Diploma/ITI');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (26, 'UG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (26, 'PG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (27, 'Class 11-12');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (27, 'UG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (28, 'UG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (29, 'Diploma/ITI');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (29, 'UG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (29, 'PG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (30, 'Diploma/ITI');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (30, 'UG');
INSERT INTO scholarship_levels (scholarship_id, level) VALUES (30, 'PG');

COMMIT;
