# La librería utils maneja el control de input del usuario.
# Esto permite que la captura del input no detenga el juego mientras espera respuesta.
require_relative 'utils'
require_relative 'movements'
require_relative 'space'
require_relative 'ship'

class Game
  def self.start
    game = Game.new
    game.update

  end

  def initialize
    @ship = Ship.new
    @space = Space.new(@ship)
    @frames = 0
    @fps = 10 # cantidad de frames por segundo
  end

  def update
    loop do
      winner
      @frames += 1 # Cantidad de frame desde que el juego comenzó (puede ser útil... o ¡no!)
      calculate_speed_game
      draw
      handle_input # manejo de la la entrada del jugador
      sleep 3.0 / @fps # tiempo de refrescamiento
    end
  end

  def handle_input
    key = Utils.get_key&.chr # Se captura la entrada de jugador
    case key
    when 'a'
      # mover nave a la izquierda :left
<<<<<<< HEAD
      @ship.left
=======
      @ship.left if @ship.position[1] >= 1
>>>>>>> main
    when 'd'
      # mover nave a la derecha
      @ship.right if @ship.position[1] <= 5
    when 'x'
      game_over
    end
  end

 rubocop:disable Layout/EmptyLineBetweenDefs
  def game_over
    system 'clear'
    puts "¡Perdiste!"
    raise StopIteration
  end
 rubocop:enable Layout/EmptyLineBetweenDefs

  def draw
    system 'clear'
    puts "Frames: #{@frames}
    Velocidad de los asteroides: #{@space.speed}"
    @space.oficial_space
    show_menu
  end

  def winner
    if @frames == 200
      @space.space_winner
      system('clear')
      puts Rainbow("¡Ganaste! Eres un excelente piloto, tu tripulación cuenta contigo").cyan
      raise StopIteration
    end
  end



  # Propuesta de menú
  def show_menu
    puts ''
    puts 'a: izquierda, d: derecha, x: salir'
    puts ''
  end


  def calculate_speed_game

    if @frames >= 90 && @frames <= 150
      @space.speed = 2
    elsif @frames > 151 && @frames <= 200
      @space.speed = 3
    else
      @space.speed = 1
    end

  end
end