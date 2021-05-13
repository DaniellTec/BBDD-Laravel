drop database if exists SQL_v2;
create database if not exists SQL_v2;
use SQL_v2;

drop table if exists usuario;
create table usuario (
	idUsuario int(255) unsigned not null auto_increment,
    nombre VARCHAR(20) not null,
    apellido1 VARCHAR(20) not null,
    apellido2 VARCHAR(20) not null,
    email VARCHAR(255) not null,
    numeroTel int not null,
    primary key (idUsuario)
);

drop table if exists suscripción;
create table suscripción(
	idSuscripción int(255) unsigned not null auto_increment,
    fechaInicio date not null,
    fechaRenovación date not null,
	primary key (idSuscripción)
);

drop table if exists alumno;
create table alumno (
	idAlumno int(255) unsigned not null auto_increment,
    nota int (40) unsigned not null,
    primary key (idAlumno)
);

drop table if exists profesor;
create table profesor (
	idProfesor int(255) unsigned not null auto_increment,
    primary key (idProfesor)
);

drop table if exists modulo;
create table modulo (
	idModulo int(255) unsigned not null auto_increment,
    nombre VARCHAR(20) not null,
    nivel int(5) not null,
    ramaProfesional set('tipo1', 'tipo2', 'tipo3', 'tipo4', 'tipo5') not null,
    duracion set('corto', 'medio', 'largo') not null,
    primary key (idModulo)
);

drop table if exists elemento;
create table elemento(
	idElemento int(255) unsigned not null auto_increment,
	primary key (idElemento)
);

drop table if exists actividades;
create table actividades(
	idActividades int(255) unsigned not null auto_increment,
    tipo set('Examen','Tarea','Opcional'),
	primary key (idActividades)
);

drop table if exists contenido;
create table contenido(
	idContenido int(255) unsigned not null auto_increment,
	primary key (idContenido)
);

drop table if exists multimedia;
create table multimedia(
	idMultimedia int(255) unsigned not null auto_increment,
    URL varchar(255) not null,
    tipo set('Video','Imagen','Presentación'),
	primary key (idMultimedia)
);

drop table if exists elementoActividades;
create table elementoActividades(
	idelementoActividades int(255) unsigned not null auto_increment,
    fk_idElemento int(255) unsigned not null,
    fk_idActividades int(255) unsigned not null,
    FOREIGN KEY (fk_idElemento) REFERENCES elemento (idElemento),
    FOREIGN KEY (fk_idActividades) REFERENCES actividades (idActividades),
	primary key (idelementoActividades)
);

drop table if exists elementoContenido;
create table elementoContenido(
	idelementoContenido int(255) unsigned not null auto_increment,
    fk_idElemento int(255) unsigned not null,
    fk_idContenido int(255) unsigned not null,
    FOREIGN KEY (fk_idElemento) REFERENCES elemento (idElemento),
    FOREIGN KEY (fk_idContenido) REFERENCES contenido (idContenido),
	primary key (idelementoContenido)
);

drop table if exists elementoMultimedia;
create table elementoMultimedia(
	elementoMultimedia int(255) unsigned not null auto_increment,
    fk_idElemento int(255) unsigned not null,
    fk_idMultimedia int(255) unsigned not null,
    FOREIGN KEY (fk_idElemento) REFERENCES elemento (idElemento),
    FOREIGN KEY (fk_idMultimedia) REFERENCES multimedia (idMultimedia),
	primary key (elementoMultimedia)
);

drop table if exists usuarioModulo;
create table usuarioModulo (
	idUsuarioModulo int(255) unsigned not null auto_increment,
    fk_idUsuario int(255) unsigned not null,
    fk_idProfesor int(255) unsigned not null,
    fk_idModulo int(255) unsigned not null,
    FOREIGN KEY (fk_idUsuario) REFERENCES usuario (idUsuario),
	FOREIGN KEY (fk_idProfesor) REFERENCES profesor (idProfesor),
    FOREIGN KEY (fk_idModulo) REFERENCES modulo (idModulo),
    primary key (idUsuarioModulo)
);

show tables;

insert into usuario (idUsuario, nombre, apellido1, apellido2, email, numeroTel) values (1, 'Dane', 'Muggleton', 'Wegener', 'dwegener0@sphinn.com', '6268424147');
insert into usuario (idUsuario, nombre, apellido1, apellido2, email, numeroTel) values (2, 'Elmira', 'Presman', 'Waterhouse', 'ewaterhouse1@blogspot.com', '6921610829');
insert into usuario (idUsuario, nombre, apellido1, apellido2, email, numeroTel) values (3, 'Rebeca', 'Lathleiffure', 'Huckin', 'rhuckin2@usa.gov', '1182628502');
insert into usuario (idUsuario, nombre, apellido1, apellido2, email, numeroTel) values (4, 'Brock', 'Riguard', 'Paling', 'bpaling3@mapquest.com', '7277378350');
insert into usuario (idUsuario, nombre, apellido1, apellido2, email, numeroTel) values (5, 'Basilius', 'McCarlich', 'Crat', 'bcrat4@tamu.edu', '3565898926');
insert into usuario (idUsuario, nombre, apellido1, apellido2, email, numeroTel) values (6, 'Chancey', 'Hintze', 'Kewley', 'ckewley5@cafepress.com', '2688245096');
insert into usuario (idUsuario, nombre, apellido1, apellido2, email, numeroTel) values (7, 'Mickie', 'Goldsbrough', 'Perrin', 'mperrin6@goo.gl', '4686908731');
insert into usuario (idUsuario, nombre, apellido1, apellido2, email, numeroTel) values (8, 'Raimondo', 'Brachell', 'Copperwaite', 'rcopperwaite7@cloudflare.com', '8621853038');
insert into usuario (idUsuario, nombre, apellido1, apellido2, email, numeroTel) values (9, 'Clemens', 'Vince', 'McCartan', 'cmccartan8@cbc.ca', '1446926185');
insert into usuario (idUsuario, nombre, apellido1, apellido2, email, numeroTel) values (10, 'Danni', 'Bonder', 'Mattson', 'dmattson9@redcross.org', '5718804370');
insert into usuario (idUsuario, nombre, apellido1, apellido2, email, numeroTel) values (11, 'Katusha', 'Kemish', 'Denzey', 'kdenzeya@admin.ch', '4922098809');
insert into usuario (idUsuario, nombre, apellido1, apellido2, email, numeroTel) values (12, 'Matteo', 'Marcus', 'Sheraton', 'msheratonb@flickr.com', '3948744876');
insert into usuario (idUsuario, nombre, apellido1, apellido2, email, numeroTel) values (13, 'Jarrod', 'Harper', 'Coniam', 'jconiamc@slashdot.org', '9163909980');
insert into usuario (idUsuario, nombre, apellido1, apellido2, email, numeroTel) values (14, 'Harry', 'Knott', 'Brinded', 'hbrindedd@springer.com', '7152980293');
insert into usuario (idUsuario, nombre, apellido1, apellido2, email, numeroTel) values (15, 'Paolo', 'Warbey', 'Decreuze', 'pdecreuzee@ox.ac.uk', '9189757320');
insert into usuario (idUsuario, nombre, apellido1, apellido2, email, numeroTel) values (16, 'Glori', 'Mehaffey', 'Orthmann', 'gorthmannf@nsw.gov.au', '8093751828');
insert into usuario (idUsuario, nombre, apellido1, apellido2, email, numeroTel) values (17, 'Hartwell', 'Rawe', 'Rounsefell', 'hrounsefellg@booking.com', '9381692672');
insert into usuario (idUsuario, nombre, apellido1, apellido2, email, numeroTel) values (18, 'Allyn', 'Stirley', 'Dron', 'adronh@archive.org', '9313849145');
insert into usuario (idUsuario, nombre, apellido1, apellido2, email, numeroTel) values (19, 'Gertrud', 'Beneze', 'Jahnel', 'gjahneli@virginia.edu', '5618356735');
insert into usuario (idUsuario, nombre, apellido1, apellido2, email, numeroTel) values (20, 'Nico', 'Digman', 'Theodore', 'ntheodorej@icq.com', '5762105282');
insert into usuario (idUsuario, nombre, apellido1, apellido2, email, numeroTel) values (21, 'Amy', 'Hirth', 'Thorald', 'athoraldk@who.int', '7661380587');
insert into usuario (idUsuario, nombre, apellido1, apellido2, email, numeroTel) values (22, 'Ashlie', 'Conisbee', 'Caulwell', 'acaulwelll@infoseek.co.jp', '8326086351');
insert into usuario (idUsuario, nombre, apellido1, apellido2, email, numeroTel) values (23, 'Ines', 'Claxson', 'Kleanthous', 'ikleanthousm@shop-pro.jp', '6091889729');
insert into usuario (idUsuario, nombre, apellido1, apellido2, email, numeroTel) values (24, 'Derrick', 'Mattiato', 'Rubenovic', 'drubenovicn@devhub.com', '5479170499');
insert into usuario (idUsuario, nombre, apellido1, apellido2, email, numeroTel) values (25, 'Kurtis', 'Tours', 'Merredy', 'kmerredyo@home.pl', '9366627012');
insert into usuario (idUsuario, nombre, apellido1, apellido2, email, numeroTel) values (26, 'Diana', 'Carreck', 'Ruger', 'drugerp@cbslocal.com', '6666843413');
insert into usuario (idUsuario, nombre, apellido1, apellido2, email, numeroTel) values (27, 'Phillida', 'Drewett', 'MacMenamy', 'pmacmenamyq@comsenz.com', '1274048111');
insert into usuario (idUsuario, nombre, apellido1, apellido2, email, numeroTel) values (28, 'Thornie', 'Calderwood', 'Elsmore', 'telsmorer@istockphoto.com', '4695547634');
insert into usuario (idUsuario, nombre, apellido1, apellido2, email, numeroTel) values (29, 'Tommi', 'Belk', 'Britzius', 'tbritziuss@symantec.com', '2364006947');
insert into usuario (idUsuario, nombre, apellido1, apellido2, email, numeroTel) values (30, 'Marissa', 'MacRonald', 'Ambrogioni', 'mambrogionit@ca.gov', '4506669122');

insert into suscripción (idSuscripción, fechaInicio, fechaRenovación) values (1, '12/25/2020', '7/14/2020');
insert into suscripción (idSuscripción, fechaInicio, fechaRenovación) values (2, '6/16/2020', '6/10/2020');
insert into suscripción (idSuscripción, fechaInicio, fechaRenovación) values (3, '10/28/2020', '3/1/2021');
insert into suscripción (idSuscripción, fechaInicio, fechaRenovación) values (4, '6/8/2020', '1/7/2021');
insert into suscripción (idSuscripción, fechaInicio, fechaRenovación) values (5, '2/4/2021', '4/28/2020');
insert into suscripción (idSuscripción, fechaInicio, fechaRenovación) values (6, '6/28/2020', '9/30/2020');
insert into suscripción (idSuscripción, fechaInicio, fechaRenovación) values (7, '4/9/2021', '7/15/2020');
insert into suscripción (idSuscripción, fechaInicio, fechaRenovación) values (8, '2/16/2021', '2/28/2021');
insert into suscripción (idSuscripción, fechaInicio, fechaRenovación) values (9, '12/25/2020', '2/21/2021');
insert into suscripción (idSuscripción, fechaInicio, fechaRenovación) values (10, '10/19/2020', '4/25/2021');
insert into suscripción (idSuscripción, fechaInicio, fechaRenovación) values (11, '6/4/2020', '6/7/2020');
insert into suscripción (idSuscripción, fechaInicio, fechaRenovación) values (12, '1/30/2021', '12/1/2020');
insert into suscripción (idSuscripción, fechaInicio, fechaRenovación) values (13, '2/13/2021', '4/14/2021');
insert into suscripción (idSuscripción, fechaInicio, fechaRenovación) values (14, '3/19/2021', '12/4/2020');
insert into suscripción (idSuscripción, fechaInicio, fechaRenovación) values (15, '7/31/2020', '4/13/2021');
insert into suscripción (idSuscripción, fechaInicio, fechaRenovación) values (16, '2/23/2021', '3/18/2021');
insert into suscripción (idSuscripción, fechaInicio, fechaRenovación) values (17, '11/3/2020', '9/17/2020');
insert into suscripción (idSuscripción, fechaInicio, fechaRenovación) values (18, '11/30/2020', '5/2/2020');
insert into suscripción (idSuscripción, fechaInicio, fechaRenovación) values (19, '2/3/2021', '8/11/2020');
insert into suscripción (idSuscripción, fechaInicio, fechaRenovación) values (20, '9/3/2020', '8/5/2020');
insert into suscripción (idSuscripción, fechaInicio, fechaRenovación) values (21, '1/28/2021', '6/17/2020');
insert into suscripción (idSuscripción, fechaInicio, fechaRenovación) values (22, '4/26/2020', '6/5/2020');
insert into suscripción (idSuscripción, fechaInicio, fechaRenovación) values (23, '9/9/2020', '4/19/2021');
insert into suscripción (idSuscripción, fechaInicio, fechaRenovación) values (24, '7/1/2020', '4/7/2021');
insert into suscripción (idSuscripción, fechaInicio, fechaRenovación) values (25, '9/1/2020', '5/22/2020');
insert into suscripción (idSuscripción, fechaInicio, fechaRenovación) values (26, '4/21/2021', '1/20/2021');
insert into suscripción (idSuscripción, fechaInicio, fechaRenovación) values (27, '1/23/2021', '10/8/2020');
insert into suscripción (idSuscripción, fechaInicio, fechaRenovación) values (28, '12/2/2020', '3/13/2021');
insert into suscripción (idSuscripción, fechaInicio, fechaRenovación) values (29, '7/11/2020', '10/2/2020');
insert into suscripción (idSuscripción, fechaInicio, fechaRenovación) values (30, '6/10/2020', '5/17/2020');

insert into alumno (idAlumno, nota) values (1, 3);
insert into alumno (idAlumno, nota) values (2, 5);
insert into alumno (idAlumno, nota) values (3, 1);
insert into alumno (idAlumno, nota) values (4, 9);
insert into alumno (idAlumno, nota) values (5, 4);
insert into alumno (idAlumno, nota) values (6, 3);
insert into alumno (idAlumno, nota) values (7, 9);
insert into alumno (idAlumno, nota) values (8, 9);
insert into alumno (idAlumno, nota) values (9, 0);
insert into alumno (idAlumno, nota) values (10, 6);
insert into alumno (idAlumno, nota) values (11, 3);
insert into alumno (idAlumno, nota) values (12, 0);
insert into alumno (idAlumno, nota) values (13, 10);
insert into alumno (idAlumno, nota) values (14, 8);
insert into alumno (idAlumno, nota) values (15, 9);
insert into alumno (idAlumno, nota) values (16, 2);
insert into alumno (idAlumno, nota) values (17, 2);
insert into alumno (idAlumno, nota) values (18, 6);
insert into alumno (idAlumno, nota) values (19, 4);
insert into alumno (idAlumno, nota) values (20, 2);
insert into alumno (idAlumno, nota) values (21, 7);
insert into alumno (idAlumno, nota) values (22, 8);
insert into alumno (idAlumno, nota) values (23, 1);
insert into alumno (idAlumno, nota) values (24, 5);
insert into alumno (idAlumno, nota) values (25, 10);
insert into alumno (idAlumno, nota) values (26, 5);
insert into alumno (idAlumno, nota) values (27, 2);
insert into alumno (idAlumno, nota) values (28, 3);
insert into alumno (idAlumno, nota) values (29, 5);
insert into alumno (idAlumno, nota) values (30, 5);

insert into profesor (idProfesor) values (1);
insert into profesor (idProfesor) values (2);
insert into profesor (idProfesor) values (3);
insert into profesor (idProfesor) values (4);
insert into profesor (idProfesor) values (5);
insert into profesor (idProfesor) values (6);
insert into profesor (idProfesor) values (7);

insert into modulo (idModulo, nombre, nivel, ramaProfesional, duracion) values (1, 'Biodex', 8, 1, 1);
insert into modulo (idModulo, nombre, nivel, ramaProfesional, duracion) values (2, 'Hatity', 9, 2, 2);
insert into modulo (idModulo, nombre, nivel, ramaProfesional, duracion) values (3, 'Fixflex', 8, 3, 3);
insert into modulo (idModulo, nombre, nivel, ramaProfesional, duracion) values (4, 'Lotlux', 9, 4, 4);
insert into modulo (idModulo, nombre, nivel, ramaProfesional, duracion) values (5, 'Duobam', 8, 5, 5);
insert into modulo (idModulo, nombre, nivel, ramaProfesional, duracion) values (6, 'Latlux', 8, 6, 6);
insert into modulo (idModulo, nombre, nivel, ramaProfesional, duracion) values (7, 'Sonair', 6, 7, 7);
insert into modulo (idModulo, nombre, nivel, ramaProfesional, duracion) values (8, 'Home Ing', 10, 8, 8);
insert into modulo (idModulo, nombre, nivel, ramaProfesional, duracion) values (9, 'Quo Lux', 9, 9, 9);
insert into modulo (idModulo, nombre, nivel, ramaProfesional, duracion) values (10, 'Transcof', 5, 10, 10);

insert into elemento (idElemento) values (1);
insert into elemento (idElemento) values (2);
insert into elemento (idElemento) values (3);
insert into elemento (idElemento) values (4);
insert into elemento (idElemento) values (5);
insert into elemento (idElemento) values (6);
insert into elemento (idElemento) values (7);
insert into elemento (idElemento) values (8);
insert into elemento (idElemento) values (9);
insert into elemento (idElemento) values (10);
insert into elemento (idElemento) values (11);
insert into elemento (idElemento) values (12);
insert into elemento (idElemento) values (13);
insert into elemento (idElemento) values (14);
insert into elemento (idElemento) values (15);
insert into elemento (idElemento) values (16);
insert into elemento (idElemento) values (17);
insert into elemento (idElemento) values (18);
insert into elemento (idElemento) values (19);
insert into elemento (idElemento) values (20);
insert into elemento (idElemento) values (21);
insert into elemento (idElemento) values (22);
insert into elemento (idElemento) values (23);
insert into elemento (idElemento) values (24);
insert into elemento (idElemento) values (25);

insert into actividades (idActividades, tipo) values (1, 1);
insert into actividades (idActividades, tipo) values (2, 2);
insert into actividades (idActividades, tipo) values (3, 3);
insert into actividades (idActividades, tipo) values (4, 4);
insert into actividades (idActividades, tipo) values (5, 5);
insert into actividades (idActividades, tipo) values (6, 6);
insert into actividades (idActividades, tipo) values (7, 7);
insert into actividades (idActividades, tipo) values (8, 8);
insert into actividades (idActividades, tipo) values (9, 9);
insert into actividades (idActividades, tipo) values (10, 10);
insert into actividades (idActividades, tipo) values (11, 11);
insert into actividades (idActividades, tipo) values (12, 12);
insert into actividades (idActividades, tipo) values (13, 13);
insert into actividades (idActividades, tipo) values (14, 14);
insert into actividades (idActividades, tipo) values (15, 15);
insert into actividades (idActividades, tipo) values (16, 16);
insert into actividades (idActividades, tipo) values (17, 17);
insert into actividades (idActividades, tipo) values (18, 18);
insert into actividades (idActividades, tipo) values (19, 19);
insert into actividades (idActividades, tipo) values (20, 20);
insert into actividades (idActividades, tipo) values (21, 21);
insert into actividades (idActividades, tipo) values (22, 22);
insert into actividades (idActividades, tipo) values (23, 23);
insert into actividades (idActividades, tipo) values (24, 24);
insert into actividades (idActividades, tipo) values (25, 25);

insert into contenido (idContenido) values (1);
insert into contenido (idContenido) values (2);
insert into contenido (idContenido) values (3);
insert into contenido (idContenido) values (4);
insert into contenido (idContenido) values (5);
insert into contenido (idContenido) values (6);
insert into contenido (idContenido) values (7);
insert into contenido (idContenido) values (8);
insert into contenido (idContenido) values (9);
insert into contenido (idContenido) values (10);
insert into contenido (idContenido) values (11);
insert into contenido (idContenido) values (12);
insert into contenido (idContenido) values (13);
insert into contenido (idContenido) values (14);
insert into contenido (idContenido) values (15);
insert into contenido (idContenido) values (16);
insert into contenido (idContenido) values (17);
insert into contenido (idContenido) values (18);
insert into contenido (idContenido) values (19);
insert into contenido (idContenido) values (20);
insert into contenido (idContenido) values (21);
insert into contenido (idContenido) values (22);
insert into contenido (idContenido) values (23);
insert into contenido (idContenido) values (24);
insert into contenido (idContenido) values (25);

insert into multimedia (idMultimedia, URL) values (1, 'https://miitbeian.gov.cn/congue/vivamus.json?lorem=pellentesque&integer=volutpat&tincidunt=dui&ante=maecenas&vel=tristique&ipsum=est&praesent=et&blandit=tempus&lacinia=semper&erat=est&vestibulum=quam&sed=pharetra&magna=magna&at=ac&nunc=consequat&commodo=metus&placerat=sapien&praesent=ut&blandit=nunc&nam=vestibulum&nulla=ante&integer=ipsum&pede=primis&justo=in&lacinia=faucibus&eget=orci&tincidunt=luctus&eget=et&tempus=ultrices&vel=posuere&pede=cubilia&morbi=curae&porttitor=mauris&lorem=viverra&id=diam&ligula=vitae&suspendisse=quam&ornare=suspendisse&consequat=potenti&lectus=nullam&in=porttitor&est=lacus&risus=at&auctor=turpis');
insert into multimedia (idMultimedia, URL) values (2, 'https://netscape.com/pede/malesuada/in.jpg?venenatis=a&non=libero&sodales=nam&sed=dui&tincidunt=proin&eu=leo&felis=odio&fusce=porttitor&posuere=id&felis=consequat&sed=in&lacus=consequat&morbi=ut&sem=nulla&mauris=sed&laoreet=accumsan&ut=felis&rhoncus=ut&aliquet=at&pulvinar=dolor&sed=quis&nisl=odio&nunc=consequat&rhoncus=varius&dui=integer&vel=ac&sem=leo&sed=pellentesque&sagittis=ultrices&nam=mattis&congue=odio&risus=donec&semper=vitae&porta=nisi&volutpat=nam');
insert into multimedia (idMultimedia, URL) values (3, 'http://wiley.com/sapien/dignissim/vestibulum.jsp?turpis=consequat&integer=varius&aliquet=integer');
insert into multimedia (idMultimedia, URL) values (4, 'https://google.pl/mauris/lacinia/sapien.js?tincidunt=sapien&lacus=non&at=mi&velit=integer&vivamus=ac&vel=neque&nulla=duis&eget=bibendum&eros=morbi&elementum=non&pellentesque=quam&quisque=nec&porta=dui&volutpat=luctus&erat=rutrum&quisque=nulla&erat=tellus&eros=in&viverra=sagittis&eget=dui&congue=vel&eget=nisl&semper=duis&rutrum=ac&nulla=nibh&nunc=fusce&purus=lacus&phasellus=purus&in=aliquet');
insert into multimedia (idMultimedia, URL) values (5, 'http://exblog.jp/sociis/natoque/penatibus/et/magnis/dis.html?ut=elementum&erat=ligula&id=vehicula&mauris=consequat&vulputate=morbi&elementum=a&nullam=ipsum&varius=integer&nulla=a&facilisi=nibh&cras=in&non=quis&velit=justo&nec=maecenas&nisi=rhoncus&vulputate=aliquam&nonummy=lacus&maecenas=morbi&tincidunt=quis&lacus=tortor&at=id&velit=nulla&vivamus=ultrices');
insert into multimedia (idMultimedia, URL) values (6, 'http://msn.com/nulla/dapibus/dolor.js?ipsum=ac&aliquam=diam&non=cras&mauris=pellentesque&morbi=volutpat&non=dui&lectus=maecenas&aliquam=tristique&sit=est&amet=et&diam=tempus&in=semper&magna=est&bibendum=quam&imperdiet=pharetra&nullam=magna&orci=ac&pede=consequat&venenatis=metus&non=sapien&sodales=ut&sed=nunc&tincidunt=vestibulum&eu=ante&felis=ipsum');
insert into multimedia (idMultimedia, URL) values (7, 'https://photobucket.com/eget/orci/vehicula.png?enim=non&in=lectus&tempor=aliquam&turpis=sit&nec=amet&euismod=diam&scelerisque=in&quam=magna&turpis=bibendum&adipiscing=imperdiet&lorem=nullam&vitae=orci&mattis=pede&nibh=venenatis&ligula=non&nec=sodales&sem=sed&duis=tincidunt&aliquam=eu&convallis=felis&nunc=fusce&proin=posuere&at=felis&turpis=sed&a=lacus&pede=morbi&posuere=sem&nonummy=mauris&integer=laoreet&non=ut&velit=rhoncus&donec=aliquet&diam=pulvinar&neque=sed&vestibulum=nisl&eget=nunc&vulputate=rhoncus&ut=dui&ultrices=vel&vel=sem&augue=sed&vestibulum=sagittis&ante=nam&ipsum=congue&primis=risus&in=semper&faucibus=porta&orci=volutpat&luctus=quam&et=pede&ultrices=lobortis&posuere=ligula&cubilia=sit&curae=amet&donec=eleifend&pharetra=pede&magna=libero&vestibulum=quis&aliquet=orci&ultrices=nullam&erat=molestie&tortor=nibh&sollicitudin=in&mi=lectus&sit=pellentesque&amet=at&lobortis=nulla&sapien=suspendisse&sapien=potenti&non=cras&mi=in&integer=purus&ac=eu&neque=magna&duis=vulputate&bibendum=luctus&morbi=cum&non=sociis&quam=natoque&nec=penatibus&dui=et&luctus=magnis&rutrum=dis&nulla=parturient&tellus=montes&in=nascetur');
insert into multimedia (idMultimedia, URL) values (8, 'http://ifeng.com/vel/nisl/duis.aspx?justo=mattis&in=odio&hac=donec&habitasse=vitae&platea=nisi&dictumst=nam&etiam=ultrices&faucibus=libero&cursus=non&urna=mattis&ut=pulvinar&tellus=nulla');
insert into multimedia (idMultimedia, URL) values (9, 'http://economist.com/consequat/ut/nulla/sed.jsp?primis=consequat&in=morbi&faucibus=a&orci=ipsum&luctus=integer&et=a&ultrices=nibh&posuere=in&cubilia=quis&curae=justo&donec=maecenas&pharetra=rhoncus&magna=aliquam&vestibulum=lacus&aliquet=morbi&ultrices=quis&erat=tortor&tortor=id&sollicitudin=nulla&mi=ultrices&sit=aliquet&amet=maecenas&lobortis=leo&sapien=odio&sapien=condimentum&non=id&mi=luctus&integer=nec&ac=molestie&neque=sed&duis=justo&bibendum=pellentesque&morbi=viverra&non=pede&quam=ac&nec=diam&dui=cras&luctus=pellentesque&rutrum=volutpat&nulla=dui&tellus=maecenas&in=tristique&sagittis=est&dui=et&vel=tempus&nisl=semper&duis=est&ac=quam&nibh=pharetra&fusce=magna&lacus=ac&purus=consequat&aliquet=metus&at=sapien&feugiat=ut&non=nunc&pretium=vestibulum&quis=ante&lectus=ipsum&suspendisse=primis&potenti=in&in=faucibus&eleifend=orci&quam=luctus&a=et&odio=ultrices&in=posuere&hac=cubilia&habitasse=curae&platea=mauris&dictumst=viverra&maecenas=diam&ut=vitae&massa=quam&quis=suspendisse');
insert into multimedia (idMultimedia, URL) values (10, 'https://comsenz.com/lacus/morbi/sem/mauris/laoreet/ut/rhoncus.html?laoreet=sit&ut=amet&rhoncus=sem&aliquet=fusce&pulvinar=consequat&sed=nulla&nisl=nisl&nunc=nunc&rhoncus=nisl&dui=duis&vel=bibendum&sem=felis&sed=sed&sagittis=interdum&nam=venenatis&congue=turpis&risus=enim&semper=blandit&porta=mi&volutpat=in&quam=porttitor&pede=pede&lobortis=justo&ligula=eu&sit=massa&amet=donec&eleifend=dapibus&pede=duis&libero=at&quis=velit&orci=eu&nullam=est&molestie=congue&nibh=elementum&in=in&lectus=hac&pellentesque=habitasse&at=platea&nulla=dictumst&suspendisse=morbi&potenti=vestibulum&cras=velit&in=id&purus=pretium&eu=iaculis&magna=diam&vulputate=erat&luctus=fermentum&cum=justo&sociis=nec&natoque=condimentum&penatibus=neque&et=sapien&magnis=placerat&dis=ante&parturient=nulla&montes=justo&nascetur=aliquam&ridiculus=quis&mus=turpis&vivamus=eget&vestibulum=elit&sagittis=sodales&sapien=scelerisque&cum=mauris&sociis=sit&natoque=amet&penatibus=eros&et=suspendisse&magnis=accumsan&dis=tortor&parturient=quis');
insert into multimedia (idMultimedia, URL) values (11, 'https://example.com/quam.json?id=dui&sapien=maecenas&in=tristique&sapien=est&iaculis=et&congue=tempus&vivamus=semper&metus=est&arcu=quam&adipiscing=pharetra&molestie=magna&hendrerit=ac&at=consequat&vulputate=metus&vitae=sapien&nisl=ut&aenean=nunc&lectus=vestibulum&pellentesque=ante&eget=ipsum&nunc=primis&donec=in&quis=faucibus&orci=orci&eget=luctus&orci=et&vehicula=ultrices&condimentum=posuere&curabitur=cubilia&in=curae&libero=mauris&ut=viverra&massa=diam&volutpat=vitae&convallis=quam&morbi=suspendisse&odio=potenti&odio=nullam&elementum=porttitor&eu=lacus&interdum=at&eu=turpis&tincidunt=donec&in=posuere&leo=metus&maecenas=vitae&pulvinar=ipsum&lobortis=aliquam&est=non&phasellus=mauris&sit=morbi&amet=non&erat=lectus&nulla=aliquam&tempus=sit&vivamus=amet&in=diam&felis=in&eu=magna&sapien=bibendum&cursus=imperdiet&vestibulum=nullam&proin=orci&eu=pede&mi=venenatis&nulla=non&ac=sodales&enim=sed&in=tincidunt&tempor=eu&turpis=felis&nec=fusce&euismod=posuere&scelerisque=felis&quam=sed&turpis=lacus&adipiscing=morbi&lorem=sem&vitae=mauris&mattis=laoreet&nibh=ut&ligula=rhoncus&nec=aliquet&sem=pulvinar&duis=sed&aliquam=nisl&convallis=nunc&nunc=rhoncus&proin=dui&at=vel');
insert into multimedia (idMultimedia, URL) values (12, 'https://census.gov/mauris/lacinia/sapien/quis/libero.png?augue=sed&luctus=vestibulum&tincidunt=sit&nulla=amet&mollis=cursus&molestie=id&lorem=turpis&quisque=integer&ut=aliquet&erat=massa&curabitur=id&gravida=lobortis&nisi=convallis&at=tortor&nibh=risus&in=dapibus&hac=augue&habitasse=vel&platea=accumsan&dictumst=tellus&aliquam=nisi&augue=eu&quam=orci&sollicitudin=mauris&vitae=lacinia&consectetuer=sapien&eget=quis&rutrum=libero&at=nullam&lorem=sit&integer=amet&tincidunt=turpis&ante=elementum&vel=ligula&ipsum=vehicula&praesent=consequat&blandit=morbi&lacinia=a&erat=ipsum&vestibulum=integer&sed=a&magna=nibh&at=in&nunc=quis&commodo=justo&placerat=maecenas&praesent=rhoncus&blandit=aliquam&nam=lacus&nulla=morbi&integer=quis&pede=tortor&justo=id&lacinia=nulla&eget=ultrices&tincidunt=aliquet&eget=maecenas&tempus=leo&vel=odio&pede=condimentum&morbi=id&porttitor=luctus&lorem=nec&id=molestie&ligula=sed&suspendisse=justo&ornare=pellentesque&consequat=viverra');
insert into multimedia (idMultimedia, URL) values (13, 'http://ameblo.jp/ipsum/primis/in/faucibus/orci/luctus.png?massa=pellentesque&id=ultrices&nisl=phasellus&venenatis=id&lacinia=sapien&aenean=in&sit=sapien&amet=iaculis&justo=congue&morbi=vivamus&ut=metus&odio=arcu&cras=adipiscing&mi=molestie&pede=hendrerit&malesuada=at&in=vulputate&imperdiet=vitae&et=nisl&commodo=aenean&vulputate=lectus&justo=pellentesque&in=eget&blandit=nunc&ultrices=donec&enim=quis&lorem=orci&ipsum=eget&dolor=orci&sit=vehicula&amet=condimentum&consectetuer=curabitur&adipiscing=in&elit=libero&proin=ut&interdum=massa&mauris=volutpat&non=convallis&ligula=morbi&pellentesque=odio&ultrices=odio&phasellus=elementum&id=eu&sapien=interdum&in=eu&sapien=tincidunt&iaculis=in&congue=leo');
insert into multimedia (idMultimedia, URL) values (14, 'https://spiegel.de/vehicula/consequat/morbi/a/ipsum.jpg?in=turpis&faucibus=adipiscing&orci=lorem&luctus=vitae&et=mattis&ultrices=nibh&posuere=ligula&cubilia=nec&curae=sem&duis=duis&faucibus=aliquam&accumsan=convallis&odio=nunc&curabitur=proin&convallis=at&duis=turpis&consequat=a&dui=pede&nec=posuere&nisi=nonummy&volutpat=integer&eleifend=non&donec=velit&ut=donec&dolor=diam&morbi=neque&vel=vestibulum&lectus=eget&in=vulputate&quam=ut&fringilla=ultrices&rhoncus=vel&mauris=augue&enim=vestibulum&leo=ante&rhoncus=ipsum&sed=primis&vestibulum=in&sit=faucibus&amet=orci&cursus=luctus&id=et&turpis=ultrices&integer=posuere&aliquet=cubilia&massa=curae&id=donec&lobortis=pharetra&convallis=magna&tortor=vestibulum&risus=aliquet&dapibus=ultrices&augue=erat&vel=tortor&accumsan=sollicitudin&tellus=mi&nisi=sit&eu=amet&orci=lobortis&mauris=sapien&lacinia=sapien&sapien=non&quis=mi&libero=integer&nullam=ac&sit=neque&amet=duis&turpis=bibendum&elementum=morbi&ligula=non&vehicula=quam&consequat=nec&morbi=dui&a=luctus&ipsum=rutrum&integer=nulla&a=tellus&nibh=in&in=sagittis&quis=dui&justo=vel&maecenas=nisl&rhoncus=duis&aliquam=ac&lacus=nibh&morbi=fusce&quis=lacus&tortor=purus&id=aliquet&nulla=at&ultrices=feugiat&aliquet=non&maecenas=pretium&leo=quis&odio=lectus');
insert into multimedia (idMultimedia, URL) values (15, 'https://cisco.com/nibh/fusce/lacus.html?consequat=erat&metus=quisque&sapien=erat&ut=eros&nunc=viverra&vestibulum=eget&ante=congue&ipsum=eget&primis=semper&in=rutrum&faucibus=nulla&orci=nunc&luctus=purus&et=phasellus&ultrices=in&posuere=felis&cubilia=donec&curae=semper&mauris=sapien&viverra=a&diam=libero&vitae=nam&quam=dui&suspendisse=proin&potenti=leo&nullam=odio&porttitor=porttitor&lacus=id&at=consequat&turpis=in&donec=consequat&posuere=ut&metus=nulla&vitae=sed&ipsum=accumsan&aliquam=felis&non=ut&mauris=at&morbi=dolor&non=quis&lectus=odio&aliquam=consequat&sit=varius&amet=integer&diam=ac&in=leo&magna=pellentesque&bibendum=ultrices&imperdiet=mattis&nullam=odio&orci=donec&pede=vitae&venenatis=nisi&non=nam&sodales=ultrices&sed=libero&tincidunt=non&eu=mattis&felis=pulvinar&fusce=nulla&posuere=pede&felis=ullamcorper&sed=augue&lacus=a&morbi=suscipit&sem=nulla&mauris=elit&laoreet=ac');
insert into multimedia (idMultimedia, URL) values (16, 'https://gov.uk/elit/ac/nulla/sed/vel/enim.xml?quis=elit&turpis=proin&eget=interdum&elit=mauris&sodales=non&scelerisque=ligula&mauris=pellentesque&sit=ultrices&amet=phasellus&eros=id&suspendisse=sapien&accumsan=in&tortor=sapien&quis=iaculis&turpis=congue&sed=vivamus&ante=metus&vivamus=arcu&tortor=adipiscing&duis=molestie&mattis=hendrerit&egestas=at&metus=vulputate&aenean=vitae&fermentum=nisl&donec=aenean&ut=lectus&mauris=pellentesque&eget=eget&massa=nunc&tempor=donec&convallis=quis&nulla=orci&neque=eget&libero=orci&convallis=vehicula&eget=condimentum&eleifend=curabitur&luctus=in&ultricies=libero&eu=ut&nibh=massa&quisque=volutpat&id=convallis&justo=morbi&sit=odio&amet=odio&sapien=elementum&dignissim=eu&vestibulum=interdum&vestibulum=eu&ante=tincidunt&ipsum=in&primis=leo&in=maecenas&faucibus=pulvinar&orci=lobortis&luctus=est&et=phasellus&ultrices=sit&posuere=amet&cubilia=erat&curae=nulla&nulla=tempus&dapibus=vivamus&dolor=in&vel=felis&est=eu&donec=sapien&odio=cursus&justo=vestibulum&sollicitudin=proin&ut=eu&suscipit=mi&a=nulla&feugiat=ac&et=enim&eros=in');
insert into multimedia (idMultimedia, URL) values (17, 'http://pbs.org/convallis/morbi.html?aliquam=dui&convallis=maecenas&nunc=tristique&proin=est&at=et&turpis=tempus&a=semper&pede=est&posuere=quam&nonummy=pharetra&integer=magna&non=ac');
insert into multimedia (idMultimedia, URL) values (18, 'https://bizjournals.com/ornare/imperdiet.html?vestibulum=ullamcorper&quam=augue');
insert into multimedia (idMultimedia, URL) values (19, 'https://cdbaby.com/nisi/volutpat/eleifend/donec.aspx?maecenas=morbi&leo=vestibulum&odio=velit&condimentum=id&id=pretium&luctus=iaculis&nec=diam&molestie=erat&sed=fermentum');
insert into multimedia (idMultimedia, URL) values (20, 'https://samsung.com/urna/ut/tellus/nulla/ut.js?justo=primis&etiam=in&pretium=faucibus&iaculis=orci&justo=luctus&in=et&hac=ultrices&habitasse=posuere&platea=cubilia&dictumst=curae&etiam=nulla&faucibus=dapibus&cursus=dolor&urna=vel&ut=est&tellus=donec&nulla=odio&ut=justo&erat=sollicitudin&id=ut&mauris=suscipit&vulputate=a&elementum=feugiat&nullam=et&varius=eros&nulla=vestibulum&facilisi=ac&cras=est&non=lacinia&velit=nisi&nec=venenatis&nisi=tristique&vulputate=fusce&nonummy=congue&maecenas=diam&tincidunt=id&lacus=ornare&at=imperdiet&velit=sapien&vivamus=urna&vel=pretium&nulla=nisl&eget=ut&eros=volutpat&elementum=sapien&pellentesque=arcu&quisque=sed&porta=augue&volutpat=aliquam&erat=erat&quisque=volutpat&erat=in&eros=congue&viverra=etiam&eget=justo&congue=etiam&eget=pretium&semper=iaculis&rutrum=justo&nulla=in&nunc=hac&purus=habitasse&phasellus=platea&in=dictumst&felis=etiam&donec=faucibus&semper=cursus&sapien=urna&a=ut&libero=tellus&nam=nulla&dui=ut&proin=erat&leo=id&odio=mauris&porttitor=vulputate&id=elementum&consequat=nullam&in=varius&consequat=nulla&ut=facilisi&nulla=cras&sed=non&accumsan=velit&felis=nec&ut=nisi&at=vulputate&dolor=nonummy&quis=maecenas&odio=tincidunt&consequat=lacus&varius=at');
insert into multimedia (idMultimedia, URL) values (21, 'https://pagesperso-orange.fr/sem/fusce/consequat/nulla.png?posuere=semper&cubilia=rutrum&curae=nulla&duis=nunc&faucibus=purus&accumsan=phasellus&odio=in&curabitur=felis&convallis=donec&duis=semper&consequat=sapien&dui=a&nec=libero&nisi=nam&volutpat=dui&eleifend=proin&donec=leo&ut=odio&dolor=porttitor&morbi=id&vel=consequat&lectus=in&in=consequat&quam=ut&fringilla=nulla&rhoncus=sed&mauris=accumsan&enim=felis&leo=ut&rhoncus=at&sed=dolor&vestibulum=quis&sit=odio&amet=consequat&cursus=varius&id=integer');
insert into multimedia (idMultimedia, URL) values (22, 'https://weebly.com/id/turpis.png?vestibulum=erat&velit=fermentum&id=justo&pretium=nec&iaculis=condimentum&diam=neque&erat=sapien&fermentum=placerat&justo=ante&nec=nulla&condimentum=justo&neque=aliquam&sapien=quis&placerat=turpis&ante=eget&nulla=elit&justo=sodales&aliquam=scelerisque&quis=mauris&turpis=sit&eget=amet&elit=eros&sodales=suspendisse&scelerisque=accumsan&mauris=tortor&sit=quis&amet=turpis&eros=sed&suspendisse=ante');
insert into multimedia (idMultimedia, URL) values (23, 'http://rakuten.co.jp/nulla.jpg?nam=id&dui=nisl&proin=venenatis&leo=lacinia&odio=aenean&porttitor=sit&id=amet&consequat=justo&in=morbi&consequat=ut&ut=odio&nulla=cras&sed=mi&accumsan=pede&felis=malesuada&ut=in&at=imperdiet&dolor=et&quis=commodo&odio=vulputate&consequat=justo&varius=in&integer=blandit&ac=ultrices&leo=enim&pellentesque=lorem&ultrices=ipsum&mattis=dolor&odio=sit&donec=amet&vitae=consectetuer&nisi=adipiscing&nam=elit&ultrices=proin&libero=interdum&non=mauris&mattis=non&pulvinar=ligula&nulla=pellentesque&pede=ultrices&ullamcorper=phasellus&augue=id&a=sapien&suscipit=in&nulla=sapien&elit=iaculis&ac=congue&nulla=vivamus&sed=metus&vel=arcu&enim=adipiscing&sit=molestie&amet=hendrerit&nunc=at&viverra=vulputate&dapibus=vitae');
insert into multimedia (idMultimedia, URL) values (24, 'http://buzzfeed.com/volutpat/dui.png?in=molestie&hac=lorem&habitasse=quisque&platea=ut&dictumst=erat&etiam=curabitur&faucibus=gravida&cursus=nisi&urna=at&ut=nibh&tellus=in&nulla=hac&ut=habitasse&erat=platea&id=dictumst&mauris=aliquam&vulputate=augue&elementum=quam&nullam=sollicitudin&varius=vitae&nulla=consectetuer&facilisi=eget&cras=rutrum&non=at&velit=lorem&nec=integer&nisi=tincidunt&vulputate=ante&nonummy=vel&maecenas=ipsum&tincidunt=praesent&lacus=blandit&at=lacinia&velit=erat&vivamus=vestibulum&vel=sed&nulla=magna&eget=at&eros=nunc&elementum=commodo&pellentesque=placerat&quisque=praesent&porta=blandit&volutpat=nam&erat=nulla&quisque=integer&erat=pede&eros=justo&viverra=lacinia&eget=eget&congue=tincidunt&eget=eget&semper=tempus&rutrum=vel&nulla=pede&nunc=morbi&purus=porttitor&phasellus=lorem&in=id&felis=ligula&donec=suspendisse&semper=ornare&sapien=consequat&a=lectus&libero=in&nam=est&dui=risus&proin=auctor&leo=sed&odio=tristique');
insert into multimedia (idMultimedia, URL) values (25, 'https://indiatimes.com/aenean/lectus/pellentesque/eget/nunc/donec.js?pede=tincidunt&ac=ante&diam=vel&cras=ipsum&pellentesque=praesent&volutpat=blandit&dui=lacinia&maecenas=erat&tristique=vestibulum&est=sed&et=magna&tempus=at&semper=nunc&est=commodo&quam=placerat&pharetra=praesent&magna=blandit&ac=nam&consequat=nulla&metus=integer&sapien=pede&ut=justo&nunc=lacinia&vestibulum=eget&ante=tincidunt&ipsum=eget&primis=tempus&in=vel&faucibus=pede&orci=morbi&luctus=porttitor&et=lorem&ultrices=id&posuere=ligula&cubilia=suspendisse&curae=ornare&mauris=consequat');
insert into multimedia (idMultimedia, URL) values (26, 'http://china.com.cn/ultrices/posuere/cubilia/curae/donec.png?ante=ut&nulla=odio&justo=cras&aliquam=mi&quis=pede&turpis=malesuada&eget=in&elit=imperdiet&sodales=et&scelerisque=commodo&mauris=vulputate&sit=justo&amet=in&eros=blandit&suspendisse=ultrices&accumsan=enim&tortor=lorem&quis=ipsum&turpis=dolor&sed=sit&ante=amet&vivamus=consectetuer&tortor=adipiscing&duis=elit&mattis=proin&egestas=interdum&metus=mauris&aenean=non&fermentum=ligula&donec=pellentesque&ut=ultrices&mauris=phasellus');
insert into multimedia (idMultimedia, URL) values (27, 'https://gmpg.org/a/libero/nam/dui/proin.html?viverra=donec&diam=posuere&vitae=metus&quam=vitae&suspendisse=ipsum&potenti=aliquam&nullam=non&porttitor=mauris&lacus=morbi&at=non&turpis=lectus&donec=aliquam&posuere=sit&metus=amet&vitae=diam&ipsum=in&aliquam=magna&non=bibendum&mauris=imperdiet&morbi=nullam&non=orci&lectus=pede&aliquam=venenatis&sit=non&amet=sodales&diam=sed&in=tincidunt&magna=eu&bibendum=felis&imperdiet=fusce&nullam=posuere&orci=felis&pede=sed&venenatis=lacus&non=morbi&sodales=sem&sed=mauris&tincidunt=laoreet&eu=ut&felis=rhoncus&fusce=aliquet&posuere=pulvinar&felis=sed&sed=nisl&lacus=nunc&morbi=rhoncus&sem=dui&mauris=vel&laoreet=sem&ut=sed&rhoncus=sagittis&aliquet=nam&pulvinar=congue&sed=risus&nisl=semper&nunc=porta&rhoncus=volutpat&dui=quam&vel=pede&sem=lobortis&sed=ligula&sagittis=sit&nam=amet&congue=eleifend&risus=pede&semper=libero&porta=quis&volutpat=orci&quam=nullam&pede=molestie&lobortis=nibh&ligula=in&sit=lectus&amet=pellentesque&eleifend=at&pede=nulla&libero=suspendisse&quis=potenti&orci=cras&nullam=in&molestie=purus&nibh=eu&in=magna&lectus=vulputate&pellentesque=luctus&at=cum&nulla=sociis');
insert into multimedia (idMultimedia, URL) values (28, 'https://webeden.co.uk/quis/orci/eget/orci/vehicula/condimentum/curabitur.aspx?orci=ipsum&luctus=aliquam&et=non&ultrices=mauris&posuere=morbi&cubilia=non&curae=lectus&duis=aliquam&faucibus=sit&accumsan=amet&odio=diam&curabitur=in&convallis=magna&duis=bibendum&consequat=imperdiet&dui=nullam&nec=orci');
insert into multimedia (idMultimedia, URL) values (29, 'https://51.la/quis.js?pede=blandit&lobortis=nam&ligula=nulla&sit=integer&amet=pede&eleifend=justo&pede=lacinia&libero=eget&quis=tincidunt&orci=eget&nullam=tempus&molestie=vel&nibh=pede&in=morbi&lectus=porttitor&pellentesque=lorem&at=id&nulla=ligula&suspendisse=suspendisse&potenti=ornare&cras=consequat&in=lectus&purus=in&eu=est&magna=risus&vulputate=auctor&luctus=sed&cum=tristique&sociis=in&natoque=tempus&penatibus=sit&et=amet&magnis=sem&dis=fusce&parturient=consequat&montes=nulla&nascetur=nisl&ridiculus=nunc&mus=nisl&vivamus=duis&vestibulum=bibendum&sagittis=felis&sapien=sed&cum=interdum&sociis=venenatis&natoque=turpis&penatibus=enim&et=blandit&magnis=mi&dis=in&parturient=porttitor&montes=pede&nascetur=justo&ridiculus=eu&mus=massa&etiam=donec&vel=dapibus&augue=duis&vestibulum=at&rutrum=velit&rutrum=eu&neque=est');
insert into multimedia (idMultimedia, URL) values (30, 'https://si.edu/nulla/eget/eros/elementum/pellentesque/quisque.aspx?eu=velit&sapien=nec&cursus=nisi&vestibulum=vulputate&proin=nonummy&eu=maecenas&mi=tincidunt&nulla=lacus&ac=at&enim=velit&in=vivamus&tempor=vel&turpis=nulla&nec=eget&euismod=eros&scelerisque=elementum&quam=pellentesque&turpis=quisque&adipiscing=porta&lorem=volutpat&vitae=erat&mattis=quisque&nibh=erat&ligula=eros&nec=viverra&sem=eget&duis=congue&aliquam=eget&convallis=semper&nunc=rutrum&proin=nulla&at=nunc&turpis=purus&a=phasellus&pede=in&posuere=felis&nonummy=donec&integer=semper&non=sapien&velit=a&donec=libero&diam=nam&neque=dui&vestibulum=proin&eget=leo&vulputate=odio&ut=porttitor&ultrices=id&vel=consequat&augue=in&vestibulum=consequat&ante=ut&ipsum=nulla&primis=sed&in=accumsan');
insert into multimedia (idMultimedia, URL) values (31, 'https://cbslocal.com/magnis/dis/parturient/montes/nascetur/ridiculus.aspx?at=porta&velit=volutpat&eu=quam&est=pede&congue=lobortis&elementum=ligula&in=sit&hac=amet&habitasse=eleifend&platea=pede&dictumst=libero&morbi=quis&vestibulum=orci&velit=nullam&id=molestie&pretium=nibh&iaculis=in&diam=lectus&erat=pellentesque&fermentum=at&justo=nulla&nec=suspendisse&condimentum=potenti&neque=cras&sapien=in&placerat=purus&ante=eu&nulla=magna&justo=vulputate&aliquam=luctus&quis=cum&turpis=sociis&eget=natoque&elit=penatibus&sodales=et&scelerisque=magnis&mauris=dis&sit=parturient&amet=montes&eros=nascetur&suspendisse=ridiculus&accumsan=mus');
insert into multimedia (idMultimedia, URL) values (32, 'http://lulu.com/sodales.json?vivamus=dictumst&in=maecenas&felis=ut&eu=massa&sapien=quis&cursus=augue&vestibulum=luctus&proin=tincidunt&eu=nulla&mi=mollis&nulla=molestie&ac=lorem&enim=quisque&in=ut&tempor=erat&turpis=curabitur&nec=gravida&euismod=nisi&scelerisque=at&quam=nibh&turpis=in&adipiscing=hac&lorem=habitasse&vitae=platea&mattis=dictumst&nibh=aliquam&ligula=augue&nec=quam&sem=sollicitudin&duis=vitae&aliquam=consectetuer&convallis=eget&nunc=rutrum&proin=at&at=lorem&turpis=integer&a=tincidunt&pede=ante&posuere=vel&nonummy=ipsum&integer=praesent&non=blandit&velit=lacinia&donec=erat&diam=vestibulum&neque=sed&vestibulum=magna&eget=at&vulputate=nunc&ut=commodo&ultrices=placerat&vel=praesent&augue=blandit&vestibulum=nam&ante=nulla&ipsum=integer&primis=pede&in=justo&faucibus=lacinia&orci=eget');
insert into multimedia (idMultimedia, URL) values (33, 'https://hao123.com/a.json?pede=parturient&venenatis=montes&non=nascetur&sodales=ridiculus&sed=mus&tincidunt=vivamus&eu=vestibulum&felis=sagittis&fusce=sapien&posuere=cum&felis=sociis&sed=natoque&lacus=penatibus&morbi=et');
insert into multimedia (idMultimedia, URL) values (34, 'https://livejournal.com/interdum/mauris/non.jsp?cras=dui&mi=maecenas&pede=tristique&malesuada=est&in=et&imperdiet=tempus&et=semper&commodo=est&vulputate=quam&justo=pharetra&in=magna&blandit=ac&ultrices=consequat&enim=metus&lorem=sapien');
