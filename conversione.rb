#!/usr/bin/env ruby
def main()
  puts "Vuoi convertire da binario a decimale(bindec) o da decimale a binario(decbin)?"
  scelta=gets.chomp
  while scelta!="bindec" and scelta!="decbin"
    puts "PUOI SCRIVERE SOLO bindec SE VUOI CONVERTIRE DA BINARIO A DECIMALE O decbin SE VUOI CONVERTIRE DA DECIMALE A BINARIO"
    puts "Vuoi convertire da binario a decimale(bindec) o da decimale a binario(decbin)?"
    scelta=gets.chomp
  end
  puts "Hai scritto "+'"'+scelta+'"'
  puts "Inserisci un numero da convertire"
  numero=gets.chomp.to_i
  print "Hai inserito il numero "
  puts numero
  puts "VUOI COMINCIARE DA CAPO IL PROGRAMMA?"
  print "(SI O NO?)"
  fine=gets.chomp
  if fine=="Sì" or fine=="Si" or fine=="si" or fine=="sì" or fine=="SI"
    main()
  end
  while fine!="NO" and fine!="no" and fine!="No" and fine!="nO" and fine!="n" and fine!="N"
    puts "VUOI COMINCIARE DA CAPO IL PROGRAMMA?"
    print "(SI O NO?)"
    fine=gets.chomp
    if fine=="Sì" or fine=="Si" or fine=="si" or fine=="sì" or fine=="SI"
      main()
    end
  end
end
main()
