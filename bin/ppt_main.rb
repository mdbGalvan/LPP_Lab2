# File : ppt_main.rb

# Se simulará el juego de piedra, papel y tijera mediante Programación Imperativa

# Hash que almacena en las claves las opciones y en el valor a quien derrota
wins = { :rock=>:scissor, :paper=>:rock, :scissor=>:paper }
# Array que almacena las 3 opciones posibles
options = wins.keys
    
# Convierto la opción del jugador de string a Symbol y si 
player_option = (ARGV.shift || '').to_sym
      
# Lanzo un error en caso del que la opción introducida por el usuario no sea una de las posibles
raise SystaxError, " Jugada incorrecta, debes elegir : '#{opcions.join(', ')}'" unless options.include? player_option
      
# Mediante el hacer (sample) se elige una opción para la computadora
computer_option = options.sample
      
# Con ayuda del hash guardamos en answer como ha quedado nuestra apuesta
answer =  case player_option
	  when computer_option
	    " Hay un empate "
	  when wins[computer_option]
	    " Lo siento!!! Has perdido. "
	  else 
	    " Has ganado. "
	  end
      
puts answer


 

