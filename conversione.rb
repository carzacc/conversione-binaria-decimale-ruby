#!/usr/bin/env ruby
def indec(nbin)
  nout=0
  i=0
  numerocorrente=nbin
  while numerocorrente>0
    nout=nout+numerocorrente%10*2**i
    i=i+1
    numerocorrente=Integer(numerocorrente/10)
  end
  return nout
end
def inbin(ndec)
  resti=0
  contatore=1
  numerocorrente=ndec
  while numerocorrente>0
    resti=resti+numerocorrente%2*contatore
    contatore=contatore*10
    numerocorrente=Integer(numerocorrente/2)
  end
  return resti
end
def conversione(nin,s)
  if s=="decbin"
    puts "DECBIN!"
    return inbin(nin)
  else
    puts "BINDEC!"
    return indec(nin)
  end
end

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
  numeroinput=gets.chomp.to_i
  print "Hai inserito il numero "
  puts numeroinput
  numerooutput=conversione(numeroinput,scelta)
  print "E convertito è "
  puts numerooutput
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
