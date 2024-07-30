# Debug da execução do algoritmo com Laço

# Objetivo treinar laços aninhados
# AprendendoRuby\apresentar\eventoex.rb


#gem install colorize
require 'colorize'
system("cls")
# Código que simula a checagem de convidados na entrada de um evento !

filaDeEntrada = ["Carlos", "Fernando"] 
listaDeConvidados =  ["Alice", "Bob", "Carlos", "Diana", "Eduardo"] 

puts "\n---> Criando o array de pessoas na fila de entrada --> filadeEntrada =#{filaDeEntrada}"
  gets.chomp
puts "---> Criando o array de pessoas da lista de convidados --> listadeConvidados = #{listaDeConvidados}"
  gets.chomp
puts "---> Iniciando a simulação do evento..."
  gets.chomp

puts "\nBoa noite à todos e à todas! O evento comecará!".colorize(:red)
sleep 2
puts "\nMeu nome é Gabriel, sou o recepcionista e estarei checando a lista de convidados para liberar sua entrada no evento.".colorize(:red)
sleep 4
puts "\nPor favor façam uma fila e ao chegar a sua vez, diga o seu nome !".colorize(:red)
sleep 4
puts "\nOk, obrigado !!! Agora o primeiro da fila aproxime-se por favor, depois que for atendido, pode vir o próximo.".colorize(:red)
sleep 2

puts "\n---> Inicio do 1º Laço 'for' para simular o atendimento na fila de entrada..."
  gets.chomp
system("cls")
for pessoa in filaDeEntrada 
    puts "\n---> Lendo no array o elemento da vez: (#{pessoa}), e (re)inicializando a variavel booleana 'autorizado' como 'false'"
    autorizado = false 
    gets.chomp
    puts "\n#{pessoa}, se aproxima e diz seu nome !".colorize(:red) 
    sleep 2
    puts "\n---> Inicio do 2º Laço 'for' simulando a leitura da lista de convidados, caso ache o nome na lista, interrompe o laço imediatamente,\n     caso contario continua a leitura do proximo elemento"
    gets.chomp
    print "OK #{pessoa}, checando a lista - ".colorize(:red)
    sleep 2

    for convidado in listaDeConvidados 
          sleep 0.5
        print "...#{convidado} ".colorize(:red)
        if pessoa == convidado 
            sleep 2
            puts "\n\n---> achou o nome da pessoa na lista de convidados, atribui valor 'true' à variavel booleana 'autorizado' e interrompe o for imediatamente"
            gets.chomp
            autorizado = true 
            break 
        end 
    end 

    puts "\n---> Fim do 2º Laço 'for' que simula a leitura da lista de convidados"
    gets.chomp
    puts "\n---> Testa com um if a variavel boolena 'autorizado' para verificar seu valor (true ou false), autorizando ou não a entrada ao evento"
    gets.chomp
  
  if !autorizado
    puts "\nHuumm...".colorize(:red)
    sleep 2
    print  "Desculpe-me #{pessoa}, mas infelizmente seu nome não se encontra na lista de convidados !\n".colorize(:red)
    else
    puts "OK #{pessoa}, pode entrar, espero que goste do evento !".colorize(:red)
    sleep 2
  end
    puts "\n---> se ainda existir alguém na fila (algum elemento não lido no array filadeEntrada)\n     o loop continua até terminar o ultimo elemento"
    gets.chomp
    system("cls")
end 
sleep 2
puts "\n---> Não existindo mais nenhum elemento no array filadeEntrada, Fim do 1º Laço 'for' e FIM DO PROGRAMA"

