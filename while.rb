numeros = [5,6,7,8,9]

fatoriais = {}

i=0
while i < numeros.length
    numero = numeros[i]
    
    fatorial = 1
    j = 1

    while j <= numero
        fatorial *= j
        j += 1
    end

    fatoriais[numero]= fatorial
    i += 1
end
fatoriais.each do |numero, fatorial|
    puts "O fatorial de #{numero} é #{fatorial}"
end

nomes = ["Alice", "bob", "Carlos", "daniel", "Eva"]

nomes_com_maiuscula = []

i = 0
while i < nomes.length
  nome = nomes[i]

  if nome[0] == nome[0].upcase
    nomes_com_maiuscula << nome
  end

  i += 1
end

puts "Nomes com a primeira letra maiúscula:"
puts nomes_com_maiuscula.join(", ")