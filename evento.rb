# Objetivo treinar laços aninhados
# AprendendoRuby\apresentar\eventoex.rb


# Código que simula a checagem de convidados na entrada de um evento !
system("cls")
filaDeEntrada = ["Alice", "Fernando", "Carlos", "Gabriela", "Eduardo"] #array que simula as pessoas na fila de entrada
listaDeConvidados =  ["Alice", "Bob", "Carlos", "Diana", "Eduardo"] #array que simula a lista dos convidados

puts "\nBoa noite à todos e à todas! O evento comecará!"
sleep 2
puts "\nMeu nome é Gabriel, sou o recepcionista e estarei checando a lista de convidados para liberar sua entrada no evento."
sleep 4
puts "\nPor favor façam uma fila e ao chegar a sua vez, digam o seu nome !"
sleep 4
puts "\nOk, obrigado !!! Agora o primeiro da fila aproxime-se por favor, depois que for atendido, pode vir o próximo."
sleep 2


for pessoa in filaDeEntrada #Para cada elemento no Array filaDeEntrada ele associa o nome à variável "pessoa" e vai checar a lista de convidados
    
    autorizado = false # (re)inicializa o auxiliar booleano como "false", pois ainda não iniciou a pesquisa na lista
    #Seleciona o nome da proxima pessoa da fila (ou primeira)
    sleep 3
    puts "\n#{pessoa}, se aproxima e diz seu nome !" #Pessoa que está na vez de ser atendida diz o seu nome
    sleep 2
    print "OK #{pessoa}, checando a lista - " #Recepcionista interage com a pessoa

    for convidado in listaDeConvidados #Percorre o Array listaDeConvidados à procura do nome dito pela pessoa que estava na vez
        
        #Seleciona o nome do primeiro convidado na lista, depois o 2º, 3º, 4º e assim por diante
        sleep 0.5
        print "...#{convidado} "
        if pessoa == convidado # Verifica se o nome da pessoa e o nome do convidado lido na lista são iguais
            autorizado = true # os dois nomes sao iguais, logo a variavel boolena "autorizado" é inicilizada como "true"
            break # Encerra o loop do for (mesmo que não tenha chegado ao final) e vai postar o resultado
        end # Fim do If
    
    # Se o nome da não for igual ao matriculado , o loop continua até terminar de ler o array listaDeConvidados
  
    end # Fim do for que verifica se a pessoa está na listaDeConvidados
  
  # Comunica o resultado da pesquisa à pessoa, autorizando ou não a entrada no evento
  sleep 2
  if !autorizado
    puts "\nHuumm..."
    sleep 2
    print  "Desculpe-me #{pessoa}, mas infelizmente seu nome não se encontra na lista de convidados !\n"
  else
    puts "\nOK #{pessoa}, pode entrar, espero que goste do evento !"
  end

# Se ainda existir alguém na fila (se ainda existir algum elemento não lido no array filadeEntrada) o loop continua até terminar o ultimo elemento

end # Fim do for que verifica se as pessoas estão na listadeConvidados e fim do código

