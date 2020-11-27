class Welcome
  def self.start
    intro = Welcome.new
    intro.ship_shape

    if intro.selection == 'a'
      system('clear')
      intro.part_one
      if intro.selection == 'a'
        system('clear')
        intro.part_two
      end
    end

    sleep 0.5
    system('clear')
  end

  def initialize
    @input
  end

  def ship_shape
    paint = ['W  E  L C  O  M  E ', '       to          ', ' S     _           ', ' P    /_\\          ', ' A   |_|_|    S    ', ' C   |_|_|    C    ', ' E   |_|_|    H    ', '    /|_|_|\\   O    ', '      lll     O    ', '       lll    L    ', '        lll        ']

    paint.each do |i|
      puts Rainbow(i.to_s).red
      sleep 0.3
      puts ''
    end

    puts Rainbow("presiona 'a' para continuar").cyan
    puts ''
  end

  def part_one
    part_one = "Un grupo de valientes mentores fueron elegidos para viajar a las estrellas por el SpaceX junto a sus estudiantes, ¿te quieres unir a ellos?
    Presiona a..."

    part_one = part_one.chars

    part_one.each do |i|
    print Rainbow("#{i}").cyan
    sleep 0.3
  end
  puts ''

  def part_two
    part_two = "Bienvenido recluta al Space School, te daremos tu primera mision, debes atravesar el cinturon de meteoritos en un minuto para regresar con   vida a la tierra, recuerda que tu equipo depende de ti asi que si chocas con un meteorito sera el fin de tu mision......

    Conocer los controles de tu nave puede salvarte la vida por eso recuerda que puedes moverte a la derecha presionando la letra A y a la izquiera presionando la letra D

    ....RECLUTA EXITO Y QUE LA FUERZA TE ACOMPAÑE....."

    part_two = part_two.chars

    part_two.each do |i|
      print Rainbow("#{i}").red
      sleep 0.1
    end
  end

  def selection
    @input = gets.chomp

  end
end