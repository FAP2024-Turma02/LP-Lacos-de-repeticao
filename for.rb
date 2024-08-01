numbers = [5,6,7,8,9]

fatoriais = {}

for number in numbers
    fatorial = 1
    for i in 1..number  
        fatorial *= i
    end

    fatoriais[number] = fatorial
end
fatoriais.each do |number, fatorial|
    puts "O fatorial de #{number} é #{fatorial}"  
end
puts "\n"

nomes = ["Alice", "Hernane", "Mathias", "Maria", "Mayara"]

nomes_com_maiuscula = []

for nome in nomes 
    if nome[0] == nome[0].upcase
    nomes_com_maiuscula << nome
    end
end

puts "Nomes com a primeira letra maiúscula:"
puts nomes_com_maiuscula.join(", ")