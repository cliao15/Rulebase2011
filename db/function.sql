#	function.sql

DROP TABLE IF EXISTS function;
#@ _CREATE_TABLE_
CREATE TABLE function
(
	name		VARCHAR(255)     NOT NULL,
	parameters	VARCHAR(255)	 NOT NULL,
    expression  VARCHAR(255)	 NOT NULL
);
#@ _CREATE_TABLE_

INSERT INTO function (name,parameters,expression) VALUES

#	basal rate
    ('basal_rate','k','k'),

#	MassAction-one
	('mass_action_1','k,x','k*x'),

#	MassAction-two
	('mass_action_2','k,x,y','k*x*y'),

#	Hill kinetics 
	('hill_kinetics','Vm,n,Kp,S','Vm*S^n/(Kp+S^n)'),

#	Henri-Michaelis-Menten
	('henri_michaelis_menten','kcat,E0,Km,S','kcat*E0*S/(Km+S)'),

#	Ordered-Bi-Bi
	('ordered_bi_bi','kcat,E0,Kma,Kmb,Ks,A,B','kcat*E0/(Kma/A+Kmb/B+Ks/A/B+1)');
