# Se define la tarea por defecto
task :default => :ppt

# rake ppt["rock"] or rake ppt
desc " Run ppt_main with/without(random) argument "
task :ppt, :player_option do |t, args|
  options = %w[ rock paper scissor ]
    # En caso del argumento vacío, añado la opcion del jugador aleatoriamente
  player_option = args[:player_option] || options.sample
    # -w añado detalle 
  sh "ruby -w -Ilib bin/ppt_main.rb #{player_option}" 
end

# rake debug["rock"]
desc "Run ppt_main in debugger mode"
task :debug, :player_option do |t, args|
  options = %w[ rock paper scissor ]
  player_option = args[:player_option] || options.sample
  sh "ruby -w -Ilib -rdebug bin/ppt_main.rb #{player_option}"
end

