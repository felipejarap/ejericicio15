#Ejercicio 2: Contando líneas
#Se tiene un peliculas.txt con diversas películas:
#
#~~~
#La Guerra de las Galaxias. Episodio I: La amenaza fantasma
#La Guerra de las Galaxias. Episodio II: El ataque de los clones
#La Guerra de las Galaxias. Episodio III: La venganza de los Sith
#La Guerra de las Galaxias. Episodio IV: Una nueva esperanza
#La Guerra de las Galaxias. Episodio V: El imperio contraataca
#La Guerra de las Galaxias. Episodio VI: El retorno del Jedi
#~~~
#
#- Crear un método que lea el archivo, lo abra y devuelva la cantidad de líneas que posee.



def seelines(file_name)
    lines = []
    File.open(file_name, 'r') { |file| lines = file.readlines }
    puts lines.count
    #puts x
end
#def metodo
#    'hola'
#end

seelines('peliculas.txt')