#Ejercicio 1: Escribiendo un archivo básico
#
#- Crear un método que reciba dos strings, este método creará un archivo index.html y pondrá como párrafo cada uno de los strings recibidos.
#- Crear un método similar al anterior, que además pueda recibir un arreglo. Si el arreglo no está vacío, agregar debajo de los párrafos una lista ordenada con cada uno de los elementos.
#- Crear un tercer método que además pueda recibir un color. Agregar color de fondo a los párrafos.
#- El retorno de los métodos debe devolver nil.

puts "Escribe dos párrafos"
    parrafo1 = gets.chomp.to_s
    parrafo2 = gets.chomp.to_s

def write2p (str1, str2)
    file_name = "index.html"
    file = File.open(file_name,'w') #Se indica una ubicación relativa, dependiendo del lugar donde se ubique al correr el archivo.
    file << ("<p>"+ str1 + "</p>\n")
    file << ("<p>"+ str2 + "</p>\n")
    return nil
end

def write_2p_1ol(str1, str2, array = ['1','2','3'])
    file_name = "index2.html"
    file = File.open(file_name, 'w')
    file << ("<p>"+ str1 + "</p>\n")
    file << ("<p>"+ str2 + "</p>\n")
    unless array.empty?
        file << ("<ol>\n")
        array.each do |element|
            file << ("  <li>" + element + "</li>\n")
        end
        file << ("</ol>\n")
    end
    return nil
end

def html(str1, str2, color = 'black', array = ['1','2','3'])
    file_name = "index3.html"
    file = File.open(file_name, 'w')
    file << ("<p style=\"color: #{color};\">"+ str1 + "</p>\n")
    file << ("<p style=\"color: #{color};\">"+ str2 + "</p>\n")
    unless array.empty?
        file << ("<ol>\n")
        array.each do |element|
            file << ("  <li>" + element + "</li>\n")
        end
        file << ("</ol>\n")
    end
    return nil
end

write2p(parrafo1,parrafo2)
write_2p_1ol(parrafo1,parrafo2)
html(parrafo1,parrafo2,'red')