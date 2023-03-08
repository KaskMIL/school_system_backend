months = ['Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre']

familia1 = Family.create(apellido: 'Milanesi', direccion: 'Direccion 1', nombre_responsable_1: 'Nombre 1', nombre_responsable_2: 'nombre 2', email: 'email1@mail.com', telefono: 44555400, ocupacion: 'ocupacion 1');

familia2 = Family.create(apellido: 'Lopez', direccion: 'Direccion 2', nombre_responsable_1: 'Nombre 2', nombre_responsable_2: 'nombre 2', email: 'email2@mail.com', telefono: 44555400, ocupacion: 'ocupacion 2');

alumno1 = Alumno.create(nombre: 'Tom', apellido: 'Milanesi', family: familia1, dni: 38040657, fecha_de_nacimiento: '1993-12-26');

alumno2 = Alumno.create(nombre: 'Maria', apellido: 'Milanesi', family: familia1, dni: 38040657, fecha_de_nacimiento: '1997-04-06');

alumno3 = Alumno.create(nombre: 'Guadalupe', apellido: 'Milanesi', family: familia1,  dni: 38040657, fecha_de_nacimiento: '2000-03-19');

alumno4 = Alumno.create(nombre: 'Marcela', apellido: 'Lopez', family: familia2,  dni: 38040657, fecha_de_nacimiento: '1967-02-11');

alumno5 = Alumno.create(nombre: 'Sebastian', apellido: 'Lopez', family: familia2,  dni: 38040657, fecha_de_nacimiento: '1966-07-07');

alumno6 = Alumno.create(nombre: 'Lucas', apellido: 'Alcaraz', family: familia2,  dni: 38040657, fecha_de_nacimiento: '1993-12-26');

curso1 = Curso.create(año: 'Primero', seccion: 'A', nivel: 'Primaria')
curso2 = Curso.create(año: 'Segundo', seccion: 'B', nivel: 'Secundaria')

insc1 = Inscription.create(curso: curso1, alumno: alumno1)
insc2 = Inscription.create(curso: curso1, alumno: alumno2)
insc3 = Inscription.create(curso: curso1, alumno: alumno3)

insc4 = Inscription.create(curso: curso2, alumno: alumno4)
insc5 = Inscription.create(curso: curso2, alumno: alumno5)
insc6 = Inscription.create(curso: curso2, alumno: alumno6)

Alumno.all.each do |alumno|
  year = Year.create(year: 2023, alumno: alumno)
  months.each { |month| Concept.create(nombre: month, precio: 5000, year: year)}
end
