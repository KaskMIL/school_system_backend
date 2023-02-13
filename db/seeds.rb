familia1 = Family.create(apellido: 'Milanesi')
familia2 = Family.create(apellido: 'Lopez')

alumno1 = Alumno.create(nombre: 'Tom', apellido: 'Milanesi', family: familia1)
alumno2 = Alumno.create(nombre: 'Maria', apellido: 'Milanesi', family: familia1)
alumno3 = Alumno.create(nombre: 'Guadalupe', apellido: 'Milanesi', family: familia1)

alumno4 = Alumno.create(nombre: 'Marcela', apellido: 'Lopez', family: familia2)
alumno5 = Alumno.create(nombre: 'Sebastian', apellido: 'Lopez', family: familia2)
