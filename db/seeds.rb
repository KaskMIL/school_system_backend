months = ['Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre']

familia1 = Family.create(apellido: 'Milanesi')
familia2 = Family.create(apellido: 'Lopez')

alumno1 = Alumno.create(nombre: 'Tom', apellido: 'Milanesi', family: familia1)
alumno2 = Alumno.create(nombre: 'Maria', apellido: 'Milanesi', family: familia1)
alumno3 = Alumno.create(nombre: 'Guadalupe', apellido: 'Milanesi', family: familia1)

alumno4 = Alumno.create(nombre: 'Marcela', apellido: 'Lopez', family: familia2)
alumno5 = Alumno.create(nombre: 'Sebastian', apellido: 'Lopez', family: familia2)
alumno6 = Alumno.create(nombre: 'Lucas', apellido: 'Alcaraz', family: familia2)

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
