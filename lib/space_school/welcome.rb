def Welcome 
  attr_reader :welcome, :intro, :input

    self.start
      welcome = Welcome.new
      welcome.ship_shape
      input = gets.chomp
      if input == "a"
        system('clear')
      end

      welcome.intro_one
     
      if input == "a"
        system('clear')
      end 

      welcome.intro_two
      sleep 3
      system('clear')
    end

    def initialize
      @pship_shape = ship_shape
      @intro_one = intro_one
      @intro_two = intro_two
      #@input = input
    end

    def ship_shape

      paint = ["W  E  L C  O  M  E ","       to          "," S     _           "," P    /_\          ", " A   |_|_|    S    ", " C   |_|_|    C    ", " E   |_|_|    H    ", "    /|_|_|\   O    ", "      lll     O    ", "       lll    L    ", "        lll        "]

      paint.each do |i| 
        puts i
        sleep 0.3
        puts " "
        puts "presiona 'a' para continuar"
      end

    end

    def intro_one
      part_one = "Un grupo de valientes mentores fueron elegidos viajar a las estrellas por el SpaceX junto a sus estudiantes, ¿te quieres unir a ellos? Preciona a..."

      part_one = part_one.chars

      part_one.each do |i|
        print i
        sleep 1
      end

    end

    def intro_two
      part_two = "Bienvenido recluta al Space School, te daremos tu primera mision, debes atravesar el cinturon de meteoritos en un minuto para regresar con vida a la tierra, recuerda que tu equipo depende de ti asi que si chocas con un meteorito sera el fin de tu mision...... 
       Conocer los controles de tu nave puede salvarte la vida por eso recuerda que puedes moverte a la derecha precionando la letra A y a la izquiera precionando la letra D
      ....RECLUTA EXITO Y QUE LA FUERZA TE ACOMPAÑE....."

      part_two = part_two.chars 

      part_two.each do |i|
        print i
        sleep 1
      end
    end
  end 
end 




