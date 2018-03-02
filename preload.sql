INSERT INTO pulse.location_status (name)
VALUES ('Active'), ('Suspended'), ('Inactive');

INSERT INTO pulse.endpoint_status (name)
VALUES ('Active'), ('Suspended'), ('Error'), ('Off'), ('Entered-in-error'), ('Test');

INSERT INTO pulse.event_action_code (code , description)
    VALUES ('C', 'Create'), ('E', 'Execute');
    
INSERT INTO pulse.pulse_event_action_code (code , description)
    VALUES ('PC', 'Patient Creation'), ('DV', 'Document View'), ('PD', 'Patient Discharge'), ('FE', 'ACF Edit');
    
INSERT INTO pulse.network_access_point_type_code (code , description)
	VALUES ('1', 'Machine Name'), ('2', 'IP Address');
	
INSERT INTO pulse.participant_object_type_code (code , description)
	VALUES ('1', 'Person'), ('2', 'System');
	
INSERT INTO pulse.participant_object_type_code_role (code , description)
	VALUES ('3', 'Report'), ('1', 'Patient') , ('24', 'Query');

INSERT INTO pulse.endpoint_type (name, code)
    VALUES ('Patient Discovery', 'nwhin-xcpd'), ('Query for Documents', 'nwhin-xca-query'), ('Retrieve Documents', 'nwhin-xca-retrieve');

INSERT INTO pulse.query_status (status)
	VALUES ('Active'), ('Complete'), ('Closed');
	
INSERT INTO pulse.query_endpoint_status (status)
    VALUES ('Active'), ('Successful'), ('Cancelled'), ('Failed'), ('Closed');

INSERT INTO pulse.name_representation (code, description)
    VALUES ('A', 'Alphabetic (i.e. Default or some single-byte)'),
	('I', 'Ideographic (i.e. Kanji)'),
	('P', 'Phonetic (i.e. ASCII, Katakana, Hiragana, etc.)');

INSERT INTO pulse.name_type (code, description)
    VALUES ('A', 'Alias Name'), ('B', 'Name at Birth'), ('C', 'Adopted Name'),
	('D', 'Display Name'), ('I', 'Licensing Name'), ('L', 'Legal Name'),
	('M', 'Maiden Name'), ('N', 'Nickname/"Call me" Name/Street Name'),
	('S', 'Coded Pseudo-Name to ensure anonymity'),
	('T', 'Indigenous/Tribal/Community Name'), ('U', 'Unspecified');

INSERT INTO pulse.name_assembly (code, description)
    VALUES('F', 'Prefix Family Middle Given Suffix'),
    ('G', 'Prefix Given Middle Family Suffix');

INSERT INTO pulse.patient_gender (code_enc, description_enc)
VALUES(pgp_pub_encrypt('F', dearmor((SELECT * from public_key())::text)), pgp_pub_encrypt('Female', dearmor((SELECT * from public_key())::text))),
(pgp_pub_encrypt('M', dearmor((SELECT * from public_key())::text)), pgp_pub_encrypt('Male', dearmor((SELECT * from public_key())::text))),
(pgp_pub_encrypt('UN', dearmor((SELECT * from public_key())::text)), pgp_pub_encrypt('Undifferentiated', dearmor((SELECT * from public_key())::text)));
