# Sergio Dominguez
# Prueba - Introducción a la programación POOcon Ruby

class Person
    attr_accessor  :first, :last, :age

    def initialize(first, last, age)
        @first_name = first
        @last_name = last
        @age = age
    end

    def birthday
        @age += 1
        puts "tu edad ahora es -> #{@age}"
    end
    
end

# sub clase estudiante
class Student < Person
    def talk
        puts "Aquí es la clase de programación con Ruby?"
    end
    def introduce
        puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."  
    end
end
# sub clase profesor
class Teacher < Person
    def talk
        puts "Bienvenidos a la clase de programación con Ruby!"
    end

    def introduce
        puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}." 
    end
end
# sub clase apoderado
class Parent < Person
    def talk
        puts "Aquí es la reunión de apoderados?"
    end
    def introduce
        puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end
end

# puts Student.ancestors
# puts Teacher.ancestors
# puts Parent.ancestors

profesor= Teacher.new('Brayan','Diaz', 30)
alumno1= Student.new('Sergio','Dominguez', 47)
apoderado1= Parent.new('Nelson','Viveros', 65)

puts '*************** '
alumno1.talk
alumno1.introduce
puts '*************** '
profesor.talk
profesor.introduce

puts '*************** '
apoderado1.talk
apoderado1.introduce

puts '*************** '
alumno1.birthday
profesor.birthday
apoderado1.birthday