
# Ejercicio 3: Contando palabras
#- Crear un método que reciba el archivo peliculas.txt, lo abra y cuente la cantidad total de palabras. El método debe devolver este valor.
#- Crear un método similar para que además reciba -como argumento- un *string*. En este caso el método debe contar únicamente las apariciones de ese *string* en el archivo.

def read_word_counter (filename, word)
    lines = []
    contador = 0
    word_counter = 0
    File.open(filename, 'r') { |file| lines = file.readlines }
    lines.each do |lines|
    palabras = lines.split(' ')
    # líneas separadas por palabras
    contador += palabras.count
    # puts palabras.count
        if palabras.include? "#{word.to_s}"
          word_counter += palabras.count "#{word.to_s}"    
        end
    end
    puts "El número de palabras del archivo '#{filename}' es #{contador}"
    print "la palabra '#{word.to_s}' en el archivo '#{filename}' existe y tiene #{word_counter} repeticiones\n" 
end

read_word_counter('peliculas.txt','Guerra')