set search_path to project;
SET search_path TO project;


-- function to assign random first names
CREATE OR REPLACE FUNCTION first_name()
RETURNS text AS $$
BEGIN
    RETURN (SELECT first_name FROM (
        SELECT first_name
        FROM (
            SELECT unnest('{Ethan, Emma, Noah, Olivia, Liam, Ava, Jackson, Sophia, Aiden, Isabella, Caden, Mia, Grayson, Charlotte, Elijah, Harper, Lucas, Amelia, Mason, Abigail, Logan, Emily, Oliver, Elizabeth, Carter, Sofia, Owen, Avery, Brayden, Chloe, Samuel, Ella, Alexander, Scarlett, Benjamin, Victoria, Caleb, Madison, Luke, Grace, Christian, Riley, Daniel, Zoey, Gabriel, Penelope, Matthew, Layla, Ryan, Aubrey, Connor, Natalie, Josiah, Lily, Landon, Addison, William, Brooklyn, Julian, Hannah, Caleb, Mila, Isaac, Leah, Levi, Zoey, Nathan, Audrey, David, Bella, Adam, Savannah, Joseph, Aaliyah, Dylan, Ellie, Isaiah, Skylar, Evan, Paisley, Luke, Ariana, Jason, Eva, Carson, Claire, Cameron, Violet, Brandon, Madelyn, Tyler, Caroline, Michael, Anna, Logan, Kennedy, Dominic, Samantha, Henry, Stella, Ian, Maya, Sebastian, Addison, Levi, Hailey, Zachary, Elizabeth, Wyatt, Paisley, Jayden, Lila, Gabriel, Aurora, Owen, Maya, Andrew, Arianna, Josiah, Piper, Grayson, Naomi, Julian, Savannah, Justin, Peyton, Anthony, Kaylee, Colton, Julia, Jaxon, Taylor, Eli, Eliana, Braylon, Alexa, Lincoln, Gabriella, Jordan, Katherine, Xavier, Brooke, Easton, Penelope, Nathaniel, Eva, Jace, Maria, Gavin, Sadie, Evan, Ellie, Marcus, Mackenzie, Ryder, Hadley, Cooper, Arianna, Ayden, Ruby, Roman, Melanie, Miles, Reagan, Hayden, Faith, Parker, Isabelle, Ashton, Clara, Blake, Lauren, Nolan, Gabrielle, Kaden, Lily, Harrison, Annabelle, Adrian, Kinsley, Cole, Arielle, Easton, Ellie, Christopher, Melody, Cooper, Rachel, Austin, Molly, Jeremiah, Jasmine, Kai, Alexandra, Dominic, Jocelyn, Charles, Trinity, Hunter, Emerson, Peter, Valerie, Sean, Paige, Wyatt, Camila, Colton, Nora, Vincent, Maya, Damian, Angelina, Maxwell, Josephine, Carson, Alyssa, Brady, Reese, Tristan, Maria, Robert, Jordyn, Micah, Angel, Camden, Callie, Nathaniel, Jordan, George, Aria, Spencer, Ruby, Kai, Isla, Ryder, Makayla, Luis, Kayla, Leo, Sydney, Jonah, Sophie, Colin, Autumn, Hayden, Brooke, Leo, Adalynn, Nicholas, Violet, Jeremiah, Eva, Axel, Payton, Eric, Genesis, Sawyer, Mary, Roman, Brielle, Cole, Faith, Nolan, Trinity, Kian, Nora, Oliver, Aurora, Sawyer, Arabella, Jason, Madelyn, George, Harley, Kai, Ariella, Victor, Aurora, Trevor, Scarlett, Josue, Cora, Brady, Serenity, Landon, Athena, Justin, Summer, Jayce, Sierra, Julian, Jada, Eric, Peyton, Lane, Isabelle, Fernando, Elianna, Alejandro, Adeline, Luis, Rachel, Adriel, Gracie, Santiago, Paige, Nathalia, Jax, London, Bennett, Liliana, Colin, Jade, Simon, Kaylee, Jared, Alaina, Ruben, Adriana, Tate, Gabriela, Gunner, Raelynn, Jesse}'::text[]) AS first_name     
        ) AS names
        ORDER BY random()
        LIMIT 1
    ) AS name);
END;
$$ LANGUAGE plpgsql;


-- function to assign random middle names
CREATE OR REPLACE FUNCTION middle_name()
RETURNS text AS $$
BEGIN
    RETURN (SELECT middle_name FROM (
        SELECT middle_name
        FROM (
            SELECT unnest('{Ethan, Emma, Noah, Olivia, Liam, Ava, Jackson, Sophia, Aiden, Isabella, Caden, Mia, Grayson, Charlotte, Elijah, Harper, Lucas, Amelia, Mason, Abigail, Logan, Emily, Oliver, Elizabeth, Carter, Sofia, Owen, Avery, Brayden, Chloe, Samuel, Ella, Alexander, Scarlett, Benjamin, Victoria, Caleb, Madison, Luke, Grace, Christian, Riley, Daniel, Zoey, Gabriel, Penelope, Matthew, Layla, Ryan, Aubrey, Connor, Natalie, Josiah, Lily, Landon, Addison, William, Brooklyn, Julian, Hannah, Caleb, Mila, Isaac, Leah, Levi, Zoey, Nathan, Audrey, David, Bella, Adam, Savannah, Joseph, Aaliyah, Dylan, Ellie, Isaiah, Skylar, Evan, Paisley, Luke, Ariana, Jason, Eva, Carson, Claire, Cameron, Violet, Brandon, Madelyn, Tyler, Caroline, Michael, Anna, Logan, Kennedy, Dominic, Samantha, Henry, Stella, Ian, Maya, Sebastian, Addison, Levi, Hailey, Zachary, Elizabeth, Wyatt, Paisley, Jayden, Lila, Gabriel, Aurora, Owen, Maya, Andrew, Arianna, Josiah, Piper, Grayson, Naomi, Julian, Savannah, Justin, Peyton, Anthony, Kaylee, Colton, Julia, Jaxon, Taylor, Eli, Eliana, Braylon, Alexa, Lincoln, Gabriella, Jordan, Katherine, Xavier, Brooke, Easton, Penelope, Nathaniel, Eva, Jace, Maria, Gavin, Sadie, Evan, Ellie, Marcus, Mackenzie, Ryder, Hadley, Cooper, Arianna, Ayden, Ruby, Roman, Melanie, Miles, Reagan, Hayden, Faith, Parker, Isabelle, Ashton, Clara, Blake, Lauren, Nolan, Gabrielle, Kaden, Lily, Harrison, Annabelle, Adrian, Kinsley, Cole, Arielle, Easton, Ellie, Christopher, Melody, Cooper, Rachel, Austin, Molly, Jeremiah, Jasmine, Kai, Alexandra, Dominic, Jocelyn, Charles, Trinity, Hunter, Emerson, Peter, Valerie, Sean, Paige, Wyatt, Camila, Colton, Nora, Vincent, Maya, Damian, Angelina, Maxwell, Josephine, Carson, Alyssa, Brady, Reese, Tristan, Maria, Robert, Jordyn, Micah, Angel, Camden, Callie, Nathaniel, Jordan, George, Aria, Spencer, Ruby, Kai, Isla, Ryder, Makayla, Luis, Kayla, Leo, Sydney, Jonah, Sophie, Colin, Autumn, Hayden, Brooke, Leo, Adalynn, Nicholas, Violet, Jeremiah, Eva, Axel, Payton, Eric, Genesis, Sawyer, Mary, Roman, Brielle, Cole, Faith, Nolan, Trinity, Kian, Nora, Oliver, Aurora, Sawyer, Arabella, Jason, Madelyn, George, Harley, Kai, Ariella, Victor, Aurora, Trevor, Scarlett, Josue, Cora, Brady, Serenity, Landon, Athena, Justin, Summer, Jayce, Sierra, Julian, Jada, Eric, Peyton, Lane, Isabelle, Fernando, Elianna, Alejandro, Adeline, Luis, Rachel, Adriel, Gracie, Santiago, Paige, Nathalia, Jax, London, Bennett, Liliana, Colin, Jade, Simon, Kaylee, Jared, Alaina, Ruben, Adriana, Tate, Gabriela, Gunner, Raelynn, Jesse}'::text[]) AS middle_name     
        ) AS names
        ORDER BY random()
        LIMIT 1
    ) AS name);
END;
$$ LANGUAGE plpgsql;


-- function to assign random last names
CREATE OR REPLACE FUNCTION last_name()
RETURNS text AS $$
BEGIN
    RETURN (SELECT last_name FROM (
        SELECT last_name
        FROM (
            SELECT unnest('{Smith, Johnson, Williams, Brown, Jones, Miller, Davis, Garcia, Rodriguez, Martinez, Hernandez, Lopez, Gonzalez, Perez, Taylor, Anderson, Wilson, Jackson, Collins, Lee, Baker, Nelson, Mitchell, Perez, Campbell, Carter, Parker, Evans, Edwards, Flores, Green, Hall, Turner, King, White, Young, Scott, Adams, Baker, Bailey, Bell, Bennett, Brooks, Butler, Carter, Clark, Coleman, Collins, Cook, Cooper, Cox, Cruz, Diaz, Dixon, Ellis, Freeman, Gardner, Gomez, Graham, Gray, Griffin, Hamilton, Harper, Harrison, Hart, Hayes, Hicks, Hill, Howard, Hughes, Hunter, Jackson, James, Jenkins, Johnson, Jones, Kelly, Kennedy, Kim, King, Knight, Lane, Lee, Lewis, Long, Martinez, Mason, Matthews, May, McDonald, Miller, Mitchell, Moore, Morales, Morgan, Morris, Murphy, Murray, Myers, Nelson, Nguyen, Ortiz, Owens, Parker, Patel, Patterson, Payne, Pearson, Perez, Perry, Peterson, Phillips, Powell, Price, Ramirez, Ramos, Reed, Reyes, Reynolds, Richardson, Rivera, Roberts, Robinson, Rodriguez, Rogers, Ross, Ruiz, Russell, Sanchez, Sanders, Scott, Shaw, Simmons, Simpson, Smith, Snyder, Spencer, Stevens, Stewart, Sullivan, Taylor, Thomas, Thompson, Torres, Turner, Vasquez, Wade, Walker, Wallace, Walsh, Ward, Washington, Watson, Weaver, Webb, Welch, Wells, West, Wheeler, White, Williams, Willis, Wilson, Wood, Wright, Young, Zimmerman, Bailey, Bates, Berry, Blake, Bowen, Brady, Bridges, Briggs, Brock, Buck, Burgess, Burns, Burton, Butler, Byrd, Cameron, Carpenter, Carroll, Casey, Chambers, Chandler, Chapman, Christensen, Clarke, Clay, Clayton, Cobb, Cohen, Cole, Coleman, Collins, Conner, Conrad, Cook, Cooper, Cope, Copeland, Costa, Cox, Crawford, Cross, Crouch, Cummings, Curry, Curtis, Dale, Dalton, Daniel, Davidson, Davis, Dean, Delgado, Dennis, Diaz, Dixon, Dodson, Dominguez, Douglas, Doyle, Drake, Duncan, Dunn, Edwards, Elliott, Ellis, Erickson, Espinoza, Estes, Estrada, Evans, Farmer, Farrell, Ferguson, Fernandez, Fields, Fisher, Fleming, Fletcher, Flores, Flowers, Floyd, Flynn, Ford, Foster, Fowler, Fox, Franklin, Freeman, French, Fuller, Gallagher, Garcia, Gardner, Garrett, Garrison, Gates, George, Gibbs, Gibson, Gilbert, Gill, Gillespie, Gomez, Gonzalez, Goodman, Gordon, Graham, Grant, Graves, Gray, Green, Greene, Gregory, Griffin, Griffith, Gross, Guerrero, Gutierrez, Guzman, Hahn, Haley, Hall, Hamilton, Hammond, Hancock, Hansen, Hanson, Hardin, Harding, Hardy, Harper, Harris, Harrison, Hart, Harvey, Hawkins, Hayes, Haynes, Hebert, Henderson, Henry, Herrera, Herring, Hicks, Higgins, Hill, Hines, Hodges, Hoffman, Hogan, Holden, Holland, Holloway, Holmes, Holt, Hood, Hopkins, Horton, House, Houston, Howard, Howell, Hubbard, Hudson, Huff, Huffman, Hughes, Hulbert, Hull, Humphrey, Hunt, Hunter, Hurst, Hutchinson, Ingram, Jackson, Jacobs, James, Jenkins, Jennings, Jensen, Jimenez, Johnson, Johnston, Jones, Jordan, Joseph, Joyce, Justice, Kane, Kaufman, Keith, Keller}'::text[]) AS last_name     
        ) AS names
        ORDER BY random()
        LIMIT 1
    ) AS name);
END;
$$ LANGUAGE plpgsql;


-- function to assign doctor speciality
CREATE OR REPLACE FUNCTION speciality()
RETURNS text AS $$
BEGIN
    RETURN (SELECT first_name FROM (
        SELECT first_name
        FROM (
            SELECT unnest('{ Family medicine, Internal Medicine, Pediatrician, Obstetricians/gynecologist (OBGYNs), Cardiologist, Oncologist, Gastroenterologist, Pulmonologist, Infectious disease, Nephrologist, Endocrinologist, Ophthalmologist, Otolaryngologist, Dermatologist , Psychiatrist}'::text[]) AS first_name     
        ) AS names
        ORDER BY random()
        LIMIT 1
    ) AS name);
END;
$$ LANGUAGE plpgsql;


-- function to assign hospital names
CREATE OR REPLACE FUNCTION hospital_name()
RETURNS text AS $$
BEGIN
    RETURN (SELECT first_name FROM (
        SELECT first_name
        FROM (
            SELECT unnest('{  Mayo Clinic, Cleveland Clinic, Johns Hopkins Hospital, Massachusetts General Hospital, University of Michigan Hospitals-Michigan Medicine, UCLA Medical Center, New York-Presbyterian Hospital-Columbia and Cornell, UCSF Medical Center, Brigham and Women’s Hospital, Cedars-Sinai Medical Center, Northwestern Memorial Hospital, Stanford Health Care-Stanford Hospital, Hospitals of the University of Pennsylvania-Penn Presbyterian, Barnes-Jewish Hospital/Washington University, Mount Sinai Hospital}'::text[]) AS first_name     
        ) AS names
        ORDER BY random()
        LIMIT 1
    ) AS name);
END;
$$ LANGUAGE plpgsql;


-- function to assign city
CREATE OR REPLACE FUNCTION city()
RETURNS text AS $$
BEGIN
    RETURN (SELECT first_name FROM (
        SELECT first_name
        FROM (
            SELECT unnest('{New York City, Los Angeles, Chicago, Houston, Phoenix, Philadelphia, San Antonio, San Diego, Dallas, San Jose, Austin, Jacksonville, Fort Worth, Columbus, San Francisco, Charlotte, Indianapolis, Seattle, Denver, Washington D.C. }'::text[]) AS first_name     
        ) AS names
        ORDER BY random()
        LIMIT 1
    ) AS name);
END;
$$ LANGUAGE plpgsql;


-- function to assign state
CREATE OR REPLACE FUNCTION state()
RETURNS text AS $$
BEGIN
    RETURN (SELECT first_name FROM (
        SELECT first_name
        FROM (
            SELECT unnest('{ New York City, Los Angeles, Chicago, Houston, Phoenix, Philadelphia, San Antonio, San Diego, Dallas, San Jose, Austin, Jacksonville, Fort Worth, Columbus, San Francisco, Charlotte, Indianapolis, Seattle, Denver, Washington D.C.}'::text[]) AS first_name     
        ) AS names
        ORDER BY random()
        LIMIT 1
    ) AS name);
END;
$$ LANGUAGE plpgsql;


-- function to assign gender
CREATE OR REPLACE FUNCTION generate_gender(gender FLOAT)
RETURNS CHAR(1) AS $$
BEGIN
    IF gender > 0.5 THEN
        RETURN 'M';
    ELSEIF gender <=0.5 THEN
        RETURN 'F';
    ELSE
        RETURN NULL;
    END IF;
END;
$$ LANGUAGE plpgsql;


-- function to assign fee
CREATE OR REPLACE FUNCTION fee(prob FLOAT)
RETURNS INT AS $$
BEGIN
    IF prob > 0.8 THEN
        RETURN 70;
    ELSEIF prob <= 0.8 THEN
        RETURN 50;
    ELSE
        RETURN NULL;
    END IF;
END;
$$ LANGUAGE plpgsql;



-- function to assign status
CREATE OR REPLACE FUNCTION status(prob FLOAT)
RETURNS text AS $$
BEGIN
    IF prob > 0.8 THEN
        RETURN 'Not Visited';
    ELSEIF prob <= 0.8 THEN
        RETURN 'Visited';
    ELSE
        RETURN NULL;
    END IF;
END;
$$ LANGUAGE plpgsql;



-- function to assign address
CREATE OR REPLACE FUNCTION companyaddress()
RETURNS text AS $$
BEGIN
    RETURN (SELECT companyaddress FROM (
        SELECT companyaddress
        FROM (
            SELECT unnest('{"The Tower at Midtown", "The Commerce Center", "The Plaza at Park Avenue", "The Metropolitan Tower", "The Corporate Commons", "The Business District", "The Promenade Plaza", "The Innovation Center", "The Executive Suites", "The Commerce Exchange", "The Business Park", "The Professional Plaza", "The Corporate Center", "The Commerce Tower", "The Executive Tower", "The Innovation Campus", "The Corporate Park", "The Enterprise Building", "The Business Exchange", "The Commerce Campus", "The Professional Tower", "The Executive Campus", "The Business Suites", "The Corporate Suites", "The Innovation Suites", "The Commerce Suites", "The Professional Exchange", "The Executive Exchange", "The Business Tower", "The Corporate Exchange"}'::text[]) AS companyaddress     
        ) AS names
        ORDER BY random()
        LIMIT 1
    ) AS name);
END;
$$ LANGUAGE plpgsql;



-- function to assign company name
CREATE OR REPLACE FUNCTION companyname()
RETURNS text AS $$
BEGIN
    RETURN (SELECT companyname FROM (
        SELECT companyname
        FROM (
            SELECT unnest('{State Farm,GEICO,Allstate,Progressive,Nationwide,Liberty Mutual,Farmers Insurance,USAA,Travelers,American Family Insurance,Chubb,The Hartford,Erie Insurance,Amica Mutual Insurance,MetLife,Mercury Insurance,AAA,AIG,Safeco Insurance,The General Insurance,Esurance,National General Insurance,Plymouth Rock Assurance,Kemper,MAPFRE Insurance,Hanover Insurance,COUNTRY Financial,Grange Insurance,Auto-Owners Insurance, The Cincinnati Insurance Company.}'::text[]) AS companyname     
        ) AS names
        ORDER BY random()
        LIMIT 1
    ) AS name);
END;
$$ LANGUAGE plpgsql;



-- function to assign paymentstatus
CREATE OR REPLACE FUNCTION paymentstatus(prob float)
RETURNS text AS $$
BEGIN
    IF prob > 0.8 THEN
        RETURN 'Rejected';
    ELSEIF prob <= 0.8 THEN
        RETURN 'Accepted';
    ELSE
        RETURN NULL;
    END IF;
END;
$$ LANGUAGE plpgsql;



-- function to assign payment type
CREATE OR REPLACE FUNCTION paymenttype()
RETURNS text AS $$
BEGIN
    RETURN (SELECT paymenttype FROM (
        SELECT paymenttype
        FROM (
            SELECT unnest('{"Electronic Fund Transfer","Credit Card","Debit Card","Online Payment","Cheque","Cash"}'::text[]) AS paymenttype     
        ) AS names
        ORDER BY random()
        LIMIT 1
    ) AS name);
END;
$$ LANGUAGE plpgsql;



-- function to assign payment amount
CREATE OR REPLACE FUNCTION paymentamount()
RETURNS int AS $$
BEGIN
    RETURN (SELECT paymentamount FROM (
        SELECT paymentamount
        FROM (
            SELECT unnest(ARRAY[900,1034,2203,1130,1175,708,479,111,387,1262,647,2050,871,1114,2476,989,1702,899,641,787,357,2117,1442,373,1873,1596,1960,951,296,1505,1151,2197,1437,533,1110,424,1756,2225,2276,932,535,1136,1372,1681,2474,1079,2355,847,234,1319,1037,1488,1418,514,1629,1412,2336,1058,745,427,2408,234,1136,981,434,979,1665,549,554,221,345,964,1400,1754,630,1143,1220,751,2259,825,1766,1561,343,1267,915,435,2044,1602,2433,329,854,684,2058,104,1746,1922,2405,571,1543,169]::int[]) AS paymentamount     
        ) AS names
        ORDER BY random()
        LIMIT 1
    ) AS name);
END;
$$ LANGUAGE plpgsql;

-- function to assign cptcode in chargesanddiagnosis
CREATE OR REPLACE FUNCTION cptcode()
RETURNS text AS $$
BEGIN
    RETURN (SELECT cptcode FROM (
        SELECT cptcode
        FROM (
            SELECT unnest('{00600, 96900, 97010, 97802, 97810, 98925, 99000, 99100, 99151, 99170, 99439, 99450, 99460, 00671, 97780, 97799, 97151, 00681, 99468, 90791, 96570, 94005, 95250, 95732, 82044, 85025, 86003, 86874, 87077, 88007, 88108, 88269, 88309, 88743, 89190, 89296, 90376, 90472, 90480, 90903, 90969, 91020}'::text[]) AS cptcode     
        ) AS names
        ORDER BY random()
        LIMIT 1
    ) AS name);
END;
$$ LANGUAGE plpgsql;


-- function to assign pos
CREATE OR REPLACE FUNCTION place_of_service()
RETURNS text AS $$
BEGIN
    RETURN (SELECT placeofservice FROM (
        SELECT placeofservice
        FROM (
            SELECT unnest('{OT1,OT2,OT3,OT4,OT5,GR1,GR2,GR3,GR4,GR5,SP1,SP2,SP3,SP4,SP5}'::text[]) AS placeofservice   
        ) AS names
        ORDER BY random()
        LIMIT 1
    ) AS name);
END;
$$ LANGUAGE plpgsql;



-- function to assign claim status
-- CREATE OR REPLACE FUNCTION claimstatus(prob FLOAT)
-- RETURNS text AS $$
-- BEGIN
--     IF prob <= 0.7 THEN
--         RETURN 'Insurance Accepted';
--     ELSEIF prob > 0.7 THEN
--         RETURN 'Insurance Rejected';
--     ELSE
--         RETURN NULL;
--     END IF;
-- END;
-- $$ LANGUAGE plpgsql;



-- function to assign payment resp
CREATE OR REPLACE FUNCTION paymentresponsibility(prob FLOAT)
RETURNS text AS $$
BEGIN
    IF prob <= 0.3 THEN
        RETURN 'Self';
    ELSEIF prob > 0.3 AND prob < 0.6 THEN
        RETURN 'Insurance Company';
    ELSE
        RETURN 'Both';
    END IF;
END;
$$ LANGUAGE plpgsql;



CREATE OR REPLACE FUNCTION random_between(low INT ,high INT) 
   RETURNS INT AS
$$
BEGIN
   RETURN floor(random()* (high-low + 1) + low);
END;
$$ language 'plpgsql' STRICT;

----------------------------------------- END OF FUNCTIONS ---------------------------------------------




INSERT INTO Location (postalCode, city, state, country)
SELECT 
    generate_series(39002,39052), 
    city(), 
    state(), 
    'USA' 
;



INSERT INTO Patient (patientID, firstName, middleName, lastName, gender, emailID, DOB, postalCode)
SELECT 
	'p_' || generate_series(1,350),
    first_name(), 
    middle_name(), 
    last_name(), 
    generate_gender(random()), 
    'patient_' || generate_series(1,350) || '@gmail.com', 
    '1990-01-01'::date + (random() * (now() - '1990-01-01'::date))::interval,
    floor(random() * (39052-39002+1) + 39002)::int;
;



INSERT INTO Hospital (hospitalID,hospitalName,postalCode,email)
SELECT 
	'h_' || generate_series(1,20), 
    hospital_name(), 
    floor(random() * (39052-39002+1) + 39002)::int,
	'hospital_' || generate_series(1,20) || '@gmail.com';   
;



INSERT INTO Doctor (doctorID,officeNo,firstName,middleName,lastName,NPI,email,speciality,taxID)
SELECT 
	'd_' || generate_series(1,50), 
    generate_series(1,50), 
    first_name(),
	middle_name(),
	last_name(),
	'NPI'||generate_series(1003000201,1003000250)	,
	'doctor_' || generate_series(1,50) || '@gmail.com',
	speciality(),
	generate_series(258456301,258456350);    
;



INSERT INTO Appointment(AppID,patientID,doctorID,AppDate,AppFee,Appstatus)
SELECT
	'app_' || generate_series(1,350),
	'p_' || generate_series(1,350),
	'd_' || floor(random() * (50-1+1) + 1)::int,
	'2023-01-01'::date + (random() * (now() - '2023-01-01'::date))::interval,
	fee(random()),
	status(random())
	
UPDATE Appointment SET AppFee = 0 WHERE Appstatus = 'Not Visited';



INSERT INTO insurancecompany (insuranceproviderid,emailiD,companyaddress, companyname)
SELECT 
	'provider_' || generate_series(1,25),
    'insuranceprovider_' || generate_series(1,25) || '@example.com',
	companyaddress(),
	companyname();
;



INSERT INTO PatientInsurance(policyno,insuranceproviderid,patientid,subscriberdob,subscribername)
SELECT 
	'policy_' || generate_series(1,350),
	'provider_' || floor(random() * (25-1+1) + 1)::int,
	'p_' || generate_series(1,350),
	'1970-01-01'::date + floor(random() * 10000)::int,
	first_name()



INSERT INTO CurrentProcedureDescription (cptCode, cptDescription, chargeFee)
VALUES 
    ('00600', 'Anesthesia for Procedure and Services on the Spine and Spinal Cord', 1500),
    ('96900', 'Special Dermatological Procedure and Services', 800),
    ('97010', 'Physical Medicine and Rehabilitation Evaluations', 1200),
    ('97802', 'Medical Nutrition Therapy Procedure and Services', 500),
    ('97810', 'Acupuncture Procedure and Services', 1000),
    ('98925', 'Osteopathic Manipulative Treatment Procedure and Services', 900),
    ('99000', 'Special Services, Procedure and Services and Reports', 600),
    ('99100', 'Qualifying Circumstances for Anesthesia', 2000),
    ('99151', 'Moderate (Conscious) Sedation', 1500),
    ('99170', 'Other Medicine Services and Procedure and Services', 1000),
    ('99439', 'Care Management Evaluation and Management Services', 800),
    ('99450', 'Special Evaluation and Management Services', 1200),
    ('99460', 'Newborn Care Services', 900),
    ('00671', 'Anesthesia for Procedure and Services on the Spine and Spinal Cord - additional 30 minutes', 500),
    ('97780', 'Physical performance test or measurement (e.g., musculoskeletal, functional capacity), with written report, each 15 minutes', 300),
    ('97799', 'Physical medicine procedure', 400),
    ('97151', 'Adaptive Behavior Services', 800),
    ('00681', 'Anesthesia for Procedures on Anterior Nerves, Cervical Plexus, and Brachial Plexus', 2000),
    ('99468', 'Prolonged Services Without Direct Patient Contact', 700),
    ('90791', 'Psychiatric Diagnostic Evaluation', 1500),
  ('96570', 'Photodynamic therapy for precancerous lesion, per treatment session',1200),
  ('94005', 'Pulmonary function testing, with maximal or voluntary ventilation',120),
  ('95250', 'Continuous glucose monitoring (CGM) of interstitial tissue fluid via a subcutaneous sensor for a minimum of 72 hours; interpretation and report',200),
  ('95732', 'Needle electromyography; thoracic paraspinal muscles, one side',700),
  ('82044', 'Qualitative drug screen, multi-drug class method, each procedure',800),
  ('85025', 'Complete blood count (CBC), automated (Hgb, Hct, RBC, WBC and platelet count)',400),
  ('86003', 'Allergen specific IgE; quantitative, multiallergen screen (eg, profile), serum',800),
  ('86874', 'Rh(D) typing; fetal cells in maternal circulation (noninvasive prenatal testing)',900),
  ('87077', 'Culture, presumptive, pathogenic fungi, isolation and presumptive identification, each specimen',500),
  ('88007', 'Microdissection, manual',600),
  ('88108', 'Morphometric analysis, in situ hybridization (quantitative or semi-quantitative)',3400),
  ('88269', 'Chromosome analysis; additional karyotype study',4300),
  ('88309', 'Level IV - Surgical pathology, gross and microscopic examination',2300),
  ('88743', 'Oxygen saturation (oximetry) monitoring, 24 hours or more, technician attendance only',600),
  ('89190', 'Assay of methylmalonic acid, serum',700),
  ('89296', 'Unlisted reproductive medicine service or procedure',200),
  ('90376', 'Respiratory syncytial virus immune globulin, intramuscular, 50 mg',400),
  ('90472', 'Initial hospital or office visit for immunization administration',100),
  ('90480', 'Influenza virus vaccine, quadrivalent (IIV4), inactivated, adjuvanted, preservative free, 0.25 mL dosage, for intramuscular use',100),
  ('90903', 'Biofeedback training, perineal muscles, anorectal or urethral sphincter, including EMG and/or manometry',120),
  ('90969', 'Dialysis procedure other than hemodialysis (e.g., peritoneal dialysis)',125),
  ('91020', 'Gastrointestinal tract endoscopy, diagnostic, with or without collection of specimen(s) by brushing or washing (separate procedure)',721); 



INSERT INTO chargesanddiagnosis (procedureid, appid, cptcode, quantity)
SELECT 
	'procedure_' || generate_series(1,350),
	'app_' || generate_series(1,350),
    cptcode(), 
    random_between(1,5); 
;


INSERT INTO claim (claimID, claimdate, claimstatus, paymentresponsibility, startdos, enddos,placeofservice)
SELECT 
	'claim_' || generate_series(1,350),
	NULL,
    NULL,  
    paymentresponsibility(random()),  
    NULL,
	NULL,
	place_of_service();
;

UPDATE claim
SET startdos = appointment.appdate + floor(random() * 10)::integer
FROM descriptionof
JOIN chargesanddiagnosis ON descriptionof.procedureid = chargesanddiagnosis.procedureid
JOIN appointment ON chargesanddiagnosis.appid = appointment.appid
WHERE claim.claimid = descriptionof.claimid;

UPDATE claim 
SET enddos=startdos + floor(random()*15)::integer


INSERT INTO descriptionof (procedureid, claimid)
SELECT 
	'procedure_' || generate_series(1,350),
	'claim_' || generate_series(1,350);
;


INSERT INTO insurancepayment (paymentID, claimid, paymentstatus, paymenttype, paymentdate, paymentamount)
SELECT 
	'payment_' || generate_series(1,350),
	'claim_' || generate_series(1,350),
    paymentstatus(random()), 
    paymenttype(),  
    NULL,
    NULL;
;

UPDATE insurancepayment
SET paymentdate = claim.enddos + floor(random_between(10,30))::integer
FROM claim
WHERE claim.claimid = insurancepayment.claimid;


INSERT INTO patientpayment (paymentID, claimid, paymentstatus, paymentamount, paymentdate, paymenttype)
SELECT 
	'payment_' || generate_series(1,350),
	'claim_' || generate_series(1,350),
    paymentstatus(random()), 
	paymentamount(),
    NULL,  
    paymenttype();
;

UPDATE patientpayment
SET paymentdate = claim.enddos + floor(random_between(10,30))::integer
FROM claim
WHERE claim.claimid = patientpayment.claimid;



UPDATE claim
SET claimdate = pp.paymentdate + random_between(10,30)
FROM patientpayment pp
JOIN claim c ON pp.claimid = c.claimid;

UPDATE claim
SET claimdate = ip.paymentdate + random_between(10,30)
FROM insurancepayment ip
JOIN claim c ON ip.claimid = c.claimid
WHERE c.claimdate <= ip.paymentdate;


-- insurance only
UPDATE insurancepayment 
SET paymentamount = chargefee + random_between(500,1000)
FROM claim
JOIN descriptionof ON descriptionof.claimid = claim.claimid
JOIN chargesanddiagnosis ON descriptionof.procedureid = chargesanddiagnosis.procedureid
JOIN currentproceduredescription ON chargesanddiagnosis.cptcode = currentproceduredescription.cptcode
WHERE insurancepayment.claimid = claim.claimid AND paymentresponsibility = 'Insurance Company' AND paymentstatus = 'Accepted';


-- self only
UPDATE patientpayment 
SET paymentamount = chargefee + random_between(500,1000)
FROM claim
JOIN descriptionof ON descriptionof.claimid = claim.claimid
JOIN chargesanddiagnosis ON descriptionof.procedureid = chargesanddiagnosis.procedureid
JOIN currentproceduredescription ON chargesanddiagnosis.cptcode = currentproceduredescription.cptcode
WHERE patientpayment.claimid = claim.claimid AND paymentresponsibility = 'Self' AND paymentstatus = 'Accepted';


-- Deleting tuples from ip having only self pay
DELETE FROM insurancepayment ip
WHERE claimid IN (SELECT claimid FROM claim WHERE paymentresponsibility = 'Self');


-- Deleting tuples from pp having only insurance pay
DELETE FROM patientpayment pp
WHERE claimid IN (SELECT claimid FROM claim WHERE paymentresponsibility = 'Insurance Company');


-- assigning patient payment for both pay
UPDATE patientpayment 
SET paymentamount = chargefee * random_between(20,40) / 100
FROM claim
JOIN descriptionof ON descriptionof.claimid = claim.claimid
JOIN chargesanddiagnosis ON descriptionof.procedureid = chargesanddiagnosis.procedureid
JOIN currentproceduredescription ON chargesanddiagnosis.cptcode = currentproceduredescription.cptcode
WHERE patientpayment.claimid = claim.claimid AND paymentresponsibility = 'Both' AND paymentstatus = 'Accepted';


-- assigning insurance payment for both pay
UPDATE insurancepayment 
SET paymentamount = chargefee - patientpayment.paymentamount + random_between(200,1000)
FROM claim
JOIN patientpayment ON patientpayment.claimid = claim.claimid
JOIN descriptionof ON descriptionof.claimid = claim.claimid
JOIN chargesanddiagnosis ON descriptionof.procedureid = chargesanddiagnosis.procedureid
JOIN currentproceduredescription ON chargesanddiagnosis.cptcode = currentproceduredescription.cptcode
WHERE insurancepayment.claimid = claim.claimid AND paymentresponsibility = 'Both' AND insurancepayment.paymentstatus = 'Accepted';



-- assign '277 finalized' for insurance accepted
UPDATE claim 
SET claimstatus = '227 Finalized'
FROM insurancepayment 
WHERE insurancepayment.claimid = claim.claimid 
AND claim.paymentresponsibility = 'Insurance Company' 
AND insurancepayment.paymentstatus = 'Accepted'



-- assign '277 finalized' for self accepted
UPDATE claim 
SET claimstatus = '227 Finalized'
FROM patientpayment 
WHERE patientpayment.claimid = claim.claimid 
AND claim.paymentresponsibility = 'Self' 
AND patienpayment.paymentstatus = 'Accepted'

-- inserting data into diseasetype
INSERT INTO diseasetype (appid, diseasetype)
SELECT 
	'app_' || generate_series(1,350),
   'NULLDisease'; 
;

--updating disease with speciality
UPDATE DiseaseType 
SET DiseaseType = get_disease_for_speciality(Doctor.speciality)
FROM Appointment
JOIN Doctor ON Appointment.doctorID = Doctor.doctorID
WHERE Appointment.AppID = DiseaseType.AppID ;

-- checking for speciality and disease type
CREATE OR REPLACE FUNCTION get_disease_for_speciality(speciality text)
RETURNS text AS $$
BEGIN
    IF speciality = 'Family medicine' THEN
        RETURN (SELECT diseasetype FROM (SELECT diseasetype FROM(SELECT unnest('{Flu, Common Cold, Asthma, Hypertension, Diabetes}'::text[])AS diseasetype  ) AS diseasetype1 ORDER BY random() LIMIT 1) AS diseasetype2);
    ELSIF speciality = 'Internal Medicine' THEN
        RETURN (SELECT diseasetype FROM (SELECT diseasetype FROM(SELECT unnest('{Heart Disease, Diabetes, Hypertension, Osteoporosis, Arthritis}'::text[])AS diseasetype  ) AS diseasetype1 ORDER BY random() LIMIT 1) AS diseasetype2);
    ELSIF speciality = 'Pediatrician' THEN
        RETURN (SELECT diseasetype FROM (SELECT diseasetype FROM(SELECT unnest('{Asthma, Common Cold, Chickenpox, Eczema, ADHD}'::text[])AS diseasetype  ) AS diseasetype1 ORDER BY random() LIMIT 1) AS diseasetype2);
    ELSIF speciality = 'Obstetricians/gynecologist (OBGYNs)' THEN
        RETURN (SELECT diseasetype FROM (SELECT diseasetype FROM(SELECT unnest('{Endometriosis, Polycystic Ovary Syndrome (PCOS), Cervical Cancer, Ovarian Cancer, Breast Cancer}'::text[])AS diseasetype  ) AS diseasetype1 ORDER BY random() LIMIT 1) AS diseasetype2);
    ELSIF speciality = 'Cardiologist' THEN
        RETURN (SELECT diseasetype FROM (SELECT diseasetype FROM(SELECT unnest('{Coronary Artery Disease, Heart Attack, Arrhythmia, Heart Failure, Valvular Heart Disease}'::text[])AS diseasetype  ) AS diseasetype1 ORDER BY random() LIMIT 1) AS diseasetype2);
    ELSIF speciality = 'Oncologist' THEN
        RETURN (SELECT diseasetype FROM (SELECT diseasetype FROM(SELECT unnest('{Breast Cancer, Lung Cancer, Prostate Cancer, Colon Cancer, Leukemia}'::text[])AS diseasetype  ) AS diseasetype1 ORDER BY random() LIMIT 1) AS diseasetype2);
    ELSIF speciality = 'Gastroenterologist' THEN
        RETURN (SELECT diseasetype FROM (SELECT diseasetype FROM(SELECT unnest('{Gastroesophageal Reflux Disease (GERD), Irritable Bowel Syndrome (IBS), Ulcerative Colitis, Crohn’s Disease, Pancreatitis}'::text[])AS diseasetype  ) AS diseasetype1 ORDER BY random() LIMIT 1) AS diseasetype2);
    ELSIF speciality = 'Pulmonologist' THEN
        RETURN (SELECT diseasetype FROM (SELECT diseasetype FROM(SELECT unnest('{Asthma, Chronic Obstructive Pulmonary Disease (COPD), Pneumonia, Lung Cancer, Pulmonary Fibrosis}'::text[])AS diseasetype  ) AS diseasetype1 ORDER BY random() LIMIT 1) AS diseasetype2);
    ELSIF speciality = 'Infectious disease' THEN
        RETURN (SELECT diseasetype FROM (SELECT diseasetype FROM(SELECT unnest('{HIV/AIDS, Tuberculosis, Malaria, Influenza, Ebola}'::text[])AS diseasetype  ) AS diseasetype1 ORDER BY random() LIMIT 1) AS diseasetype2);
    ELSIF speciality = 'Nephrologist' THEN
        RETURN (SELECT diseasetype FROM (SELECT diseasetype FROM(SELECT unnest('{Kidney Stones, Chronic Kidney Disease, Polycystic Kidney Disease, Glomerulonephritis, Nephrotic Syndrome}'::text[])AS diseasetype  ) AS diseasetype1 ORDER BY random() LIMIT 1) AS diseasetype2);
    ELSIF speciality = 'Endocrinologist' THEN
        RETURN (SELECT diseasetype FROM (SELECT diseasetype FROM(SELECT unnest('{Diabetes, Hypothyroidism, Hyperthyroidism, Cushing Syndrome, Addison’s Disease}'::text[])AS diseasetype  ) AS diseasetype1 ORDER BY random() LIMIT 1) AS diseasetype2);
    ELSIF speciality = 'Ophthalmologist' THEN
        RETURN (SELECT diseasetype FROM (SELECT diseasetype FROM(SELECT unnest('{Cataracts, Glaucoma, Diabetic Retinopathy, Age-Related Macular Degeneration, Retinal Detachment}'::text[])AS diseasetype  ) AS diseasetype1 ORDER BY random() LIMIT 1) AS diseasetype2);
    ELSIF speciality = 'Otolaryngologist' THEN
        RETURN (SELECT diseasetype FROM (SELECT diseasetype FROM (SELECT unnest('{Sinusitis, Tinnitus, Hearing loss, Vertigo, Sleep apnea}'::text[])AS diseasetype  ) AS diseasetype1 ORDER BY random() LIMIT 1) AS diseasetype2);
    ELSIF speciality = 'Dermatologist' THEN
        RETURN (SELECT diseasetype FROM (SELECT diseasetype FROM (SELECT unnest('{Acne, Eczema, Psoriasis, Skin cancer, Rosacea}'::text[])AS diseasetype  ) AS diseasetype1 ORDER BY random() LIMIT 1) AS diseasetype2);

    ELSIF speciality = 'Psychiatrist' THEN
        RETURN (SELECT diseasetype FROM (SELECT diseasetype FROM (SELECT unnest('{Depression, Anxiety disorders, Bipolar disorder, Schizophrenia, ADHD}'::text[])AS diseasetype  ) AS diseasetype1 ORDER BY random() LIMIT 1) AS diseasetype2); 
	END IF;
	
END;
$$ LANGUAGE plpgsql;
------------------------------------------------------- DONE -------------------------------------------------------

select * from patientpayment;
select * from claim;
select * from diseasetype;
delete from diseasetype;

select ap.appid,ds.diseasetype,d.doctorid,d.speciality from
appointment ap natural join diseasetype ds natural join doctor d
where speciality='Dermatologist';













