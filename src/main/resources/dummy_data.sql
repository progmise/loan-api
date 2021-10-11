/*
DROP TABLE IF EXISTS public."USER" CASCADE;

CREATE TABLE public."USER" (
	"ID" serial NOT NULL,
	"EMAIL" character varying(80) NOT NULL,
	"FIRST_NAME" character varying(25) NOT NULL, 
	"LAST_NAME" character varying(45) NOT NULL, 
	CONSTRAINT "USER_PK" PRIMARY KEY ("ID")
);

DROP TABLE IF EXISTS public."LOAN";

CREATE TABLE public."LOAN" (
	"ID" serial NOT NULL, 
	"TOTAL" numeric NOT NULL, 
	"USER_ID" integer NOT NULL, 
	CONSTRAINT "LOAN_PK" PRIMARY KEY ("ID"), 
	CONSTRAINT "LOAN_FK" FOREIGN KEY ("USER_ID")
		REFERENCES public."USER" ("ID")	
); 
*/

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('pinopaulino@gmail.com','Araceli','Diéguez') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(76606.92,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('hoyosarsenio@ibanez.com','José Manuel','Monreal') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(41602.65,(SELECT user_id FROM rows)),
	(3061.49,(SELECT user_id FROM rows)),
	(147833.29,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('cloebauza@clemente.com','Lope','Casares') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(1928.57,(SELECT user_id FROM rows)),
	(46584.95,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('sluna@hotmail.com','Rosenda','Mosquera') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(121472.67,(SELECT user_id FROM rows)),
	(54643.34,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('feliciana04@hotmail.com','Ovidio','Salgado') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(58997.09,(SELECT user_id FROM rows))
;

INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('dora48@gmail.com','Concepción','Guardia');

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('jordandimas@gmail.com','Graciano','Olmedo') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(111720.86,(SELECT user_id FROM rows)),
	(57677.41,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('bernarda53@hotmail.com','Ismael','Vilar') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(149935.36,(SELECT user_id FROM rows)),
	(121424.09,(SELECT user_id FROM rows))
;

INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('zcorral@landa-chacon.com','Luís','Andres');

INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('corona06@calderon.net','Inocencio','Bautista');

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('tbejarano@gmail.com','Carmen','Garcés') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(142192.18,(SELECT user_id FROM rows)),
	(82784.54,(SELECT user_id FROM rows)),
	(26048.43,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('iguillen@chaves-castaneda.es','Dulce','Tur') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(55273.73,(SELECT user_id FROM rows)),
	(23239.12,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('jaenlisandro@gmail.com','Cayetana','Santos') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(6414.61,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('josep02@manso.com','Trini','Estevez') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(68481.57,(SELECT user_id FROM rows)),
	(27897.92,(SELECT user_id FROM rows)),
	(26833.51,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('lprada@gmail.com','Carmelita','Bolaños') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(8730.23,(SELECT user_id FROM rows)),
	(44323.81,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('judith71@palacios-burgos.es','Nadia','Carretero') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(2696.45,(SELECT user_id FROM rows)),
	(64886.9,(SELECT user_id FROM rows)),
	(29170.56,(SELECT user_id FROM rows))
;

INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('cruzgloria@yahoo.com','Almudena','Escalona');

INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('atilio61@alfaro-huguet.es','Eligia','Elorza');

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('llanoslilia@gmail.com','Marciano','Blazquez') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(7211.14,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('fguillen@yahoo.com','Magdalena','Maestre') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(57185.0,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('rosaliavillalobos@gmail.com','Apolonia','Planas') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(140786.24,(SELECT user_id FROM rows)),
	(64905.01,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('maricelasebastian@hotmail.com','Brunilda','Falcón') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(19902.03,(SELECT user_id FROM rows))
;

INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('aranahilda@yahoo.com','Jonatan','Clavero');

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('cornelio85@martinez.es','Eleuterio','Ramos') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(121289.33,(SELECT user_id FROM rows)),
	(147745.68,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('jose-ignaciomontes@calatayud.es','Casemiro','Goicoechea') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(148208.7,(SELECT user_id FROM rows)),
	(66690.39,(SELECT user_id FROM rows)),
	(31327.4,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('ogallo@plaza.es','Ana Belén','Azcona') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(131345.51,(SELECT user_id FROM rows)),
	(16134.03,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('paolamartin@fernandez.es','Candelaria','Calderon') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(53090.5,(SELECT user_id FROM rows)),
	(59177.51,(SELECT user_id FROM rows)),
	(98455.79,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('waguilera@espanol.es','Gertrudis','Martinez') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(149521.46,(SELECT user_id FROM rows)),
	(49394.64,(SELECT user_id FROM rows)),
	(145292.39,(SELECT user_id FROM rows))
;

INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('albano25@hotmail.com','Godofredo','Mesa');

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('rechevarria@anguita.com','Faustino','Espada') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(108745.99,(SELECT user_id FROM rows)),
	(102405.97,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('hernandezcristina@bermudez.es','Aníbal','Fernandez') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(61027.69,(SELECT user_id FROM rows)),
	(16038.38,(SELECT user_id FROM rows)),
	(83575.51,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('elodiavalero@alvaro-gargallo.net','Luis Miguel','Larrea') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(92724.38,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('belensanchez@ferrandiz-gisbert.es','Pablo','Arranz') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(12251.13,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('ramon75@marin-mayoral.es','Hipólito','Alegria') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(44185.45,(SELECT user_id FROM rows)),
	(111597.27,(SELECT user_id FROM rows)),
	(24951.73,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('paezherberto@garriga.es','Eva','Melero') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(76519.44,(SELECT user_id FROM rows)),
	(144693.53,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('esparzageronimo@noguera-cal.es','Cruz','Serna') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(73528.43,(SELECT user_id FROM rows)),
	(129150.62,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('fmateos@madrid.com','Pío','Carbonell') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(40653.88,(SELECT user_id FROM rows)),
	(109212.13,(SELECT user_id FROM rows)),
	(132644.21,(SELECT user_id FROM rows))
;

INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('ponciocapdevila@yahoo.com','Hernán','Rocamora');

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('pepecerda@guardia.com','Lucho','Torrents') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(12120.93,(SELECT user_id FROM rows)),
	(6070.56,(SELECT user_id FROM rows)),
	(113207.92,(SELECT user_id FROM rows))
;

INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('vteruel@briones-zaragoza.com','Soraya','Parra');

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('oroman@hotmail.com','Susanita','Muñoz') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(90765.38,(SELECT user_id FROM rows)),
	(86271.08,(SELECT user_id FROM rows))
;

INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('mancebosaturnina@gmail.com','Fortunata','Francisco');

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('pilarlamas@cobo.com','Jenny','Barba') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(134988.83,(SELECT user_id FROM rows)),
	(24020.79,(SELECT user_id FROM rows)),
	(77220.39,(SELECT user_id FROM rows))
;

INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('abonilla@samper-saenz.net','Constanza','Romeu');

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('caminosol@lamas-palma.org','María Manuela','Landa') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(100098.07,(SELECT user_id FROM rows)),
	(63386.64,(SELECT user_id FROM rows)),
	(88443.24,(SELECT user_id FROM rows))
;

INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('faustino65@yahoo.com','Leocadia','Uría');

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('calixtaroig@gmail.com','Joaquina','Alfaro') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(85585.15,(SELECT user_id FROM rows)),
	(140691.81,(SELECT user_id FROM rows)),
	(124496.85,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('paezraquel@yahoo.com','Bruno','Cases') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(106745.99,(SELECT user_id FROM rows)),
	(2509.44,(SELECT user_id FROM rows)),
	(67797.56,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('emateos@galiano-almansa.org','Cornelio','Roda') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(62100.92,(SELECT user_id FROM rows))
;

INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('selenaroda@miranda.com','Apolonia','Marqués');

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('giraltpaola@hotmail.com','Aránzazu','Calvo') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(19729.93,(SELECT user_id FROM rows)),
	(47059.19,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('eulalia04@barranco.es','Andrés','Llano') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(86889.99,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('maria-luisa53@yahoo.com','Arsenio','Merino') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(129251.42,(SELECT user_id FROM rows)),
	(87229.62,(SELECT user_id FROM rows)),
	(6496.39,(SELECT user_id FROM rows))
;

INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('doraelorza@rubio-molins.com','Carolina','Benito');

INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('lcasanovas@menendez.es','Cristóbal','Vega');

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('garagones@pinol.org','Norberto','Morales') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(25847.08,(SELECT user_id FROM rows)),
	(146444.74,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('vribes@cadenas.es','Osvaldo','Luís') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(143486.8,(SELECT user_id FROM rows)),
	(72540.91,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('reyesolive@bauza.es','Azucena','Tomás') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(5378.69,(SELECT user_id FROM rows)),
	(107692.92,(SELECT user_id FROM rows)),
	(111852.46,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('begonafranch@hotmail.com','Jose Antonio','Lamas') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(79652.72,(SELECT user_id FROM rows)),
	(10110.67,(SELECT user_id FROM rows))
;

INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('benignojodar@yahoo.com','Alma','Seco');

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('morapaola@yahoo.com','Juanito','Sales') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(69281.3,(SELECT user_id FROM rows)),
	(60562.99,(SELECT user_id FROM rows)),
	(103161.97,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('chaconnacio@bueno.es','Isaura','Carmona') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(93331.84,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('juliananicolau@yahoo.com','Pía','Cantón') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(97268.02,(SELECT user_id FROM rows)),
	(124170.82,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('amor14@vives-aznar.es','Jesusa','Bermudez') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(101131.46,(SELECT user_id FROM rows)),
	(14658.88,(SELECT user_id FROM rows)),
	(112968.88,(SELECT user_id FROM rows))
;

INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('hortensia18@zamorano.org','Lilia','Arco');

INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('ecervantes@yahoo.com','Alejandro','Adán');

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('gloria37@moll.net','Jesusa','Ordóñez') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(3601.23,(SELECT user_id FROM rows)),
	(34378.6,(SELECT user_id FROM rows)),
	(68229.19,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('olastra@yahoo.com','Fernando','Castro') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(82140.42,(SELECT user_id FROM rows)),
	(61657.87,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('leonardofrias@yahoo.com','Aarón','Téllez') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(95815.53,(SELECT user_id FROM rows)),
	(68466.43,(SELECT user_id FROM rows)),
	(31351.39,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('ceciliaripoll@riquelme.es','Tecla','Coca') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(19086.32,(SELECT user_id FROM rows)),
	(37175.54,(SELECT user_id FROM rows)),
	(95338.32,(SELECT user_id FROM rows))
;

INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('dvaquero@zapata.org','Lara','Vigil');

INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('brigida01@araujo.es','Virginia','Enríquez');

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('azaharsebastian@hotmail.com','Juana','Páez') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(9741.32,(SELECT user_id FROM rows)),
	(93852.48,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('mauricioabellan@hotmail.com','Ángela','Jáuregui') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(13278.99,(SELECT user_id FROM rows)),
	(28806.44,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('nietotadeo@ricart-vilaplana.org','Trinidad','Garay') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(23688.87,(SELECT user_id FROM rows))
;

INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('pulidoloreto@yahoo.com','Amelia','Pou');

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('canovastiburcio@peinado-domingo.net','Néstor','Trillo') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(90375.68,(SELECT user_id FROM rows)),
	(62363.47,(SELECT user_id FROM rows)),
	(78677.08,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('consuelomora@hotmail.com','Rodolfo','Soriano') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(57847.76,(SELECT user_id FROM rows))
;

INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('chema30@figuerola-nino.es','Roxana','Carrasco');

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('rieramarisol@caro.es','Marcos','Pedraza') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(15196.9,(SELECT user_id FROM rows))
;

INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('graciana71@gmail.com','Octavia','Diaz');

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('gabrielaaragones@marino-marquez.org','Dalila','Páez') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(101072.58,(SELECT user_id FROM rows)),
	(93103.46,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('lobotoni@yahoo.com','Graciela','Franco') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(66171.11,(SELECT user_id FROM rows)),
	(91593.14,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('maria-del-carmen92@hotmail.com','Germán','Atienza') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(27762.63,(SELECT user_id FROM rows)),
	(5653.87,(SELECT user_id FROM rows)),
	(14649.01,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('martinllano@yahoo.com','Serafina','Rodriguez') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(107205.03,(SELECT user_id FROM rows)),
	(131474.8,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('baqueroaurelio@barriga-rivero.com','Dafne','Jordán') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(48574.14,(SELECT user_id FROM rows)),
	(35012.22,(SELECT user_id FROM rows)),
	(19306.76,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('cheloroman@gallego.es','Purificación','Pujadas') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(15715.71,(SELECT user_id FROM rows)),
	(76530.35,(SELECT user_id FROM rows)),
	(130229.83,(SELECT user_id FROM rows))
;

INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('pio45@aller.es','Lara','Lobato');

INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('armengoleli@yahoo.com','Quirino','Garay');

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('sanchofatima@gmail.com','Inmaculada','Bayona') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(26384.39,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('lgarate@gmail.com','Plácido','Marco') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(134498.59,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('eescobar@ribas.com','Cristian','Toro') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(85269.27,(SELECT user_id FROM rows)),
	(17715.59,(SELECT user_id FROM rows))
;

INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('nsedano@calderon.es','Luciana','Aguado');

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('diazalondra@mata.es','Alejo','Álvaro') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(109408.06,(SELECT user_id FROM rows)),
	(10432.3,(SELECT user_id FROM rows)),
	(24247.99,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('simovasco@tejera.com','Ligia','Alegria') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(85926.74,(SELECT user_id FROM rows)),
	(47592.19,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('claudio74@hotmail.com','José Luis','Bayona') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(64183.2,(SELECT user_id FROM rows)),
	(71476.37,(SELECT user_id FROM rows)),
	(119045.85,(SELECT user_id FROM rows))
;

INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('olamas@sevilla.net','Moisés','Bellido');

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('kcanas@armas.es','Noé','Casal') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(33718.38,(SELECT user_id FROM rows))
;

WITH rows AS (
	INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('jose-miguelguzman@cabezas-castro.net','Máxima','Balaguer') RETURNING "ID" as user_id
	)
INSERT INTO "LOAN" ("TOTAL","USER_ID") VALUES
	(78681.72,(SELECT user_id FROM rows)),
	(27230.49,(SELECT user_id FROM rows))
;

INSERT INTO "USER" ("EMAIL","FIRST_NAME","LAST_NAME") VALUES ('camilo13@cardenas-valcarcel.es','Primitiva','Menéndez');

