import sys
#
# >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == "__main__":

    ##
    ## itera sobre cada linea de codigo recibida
    ## a traves del flujo de entrada
    ##
    for line in sys.stdin:

        ##
        ## genera las tuplas palabra \tabulador 1
        ## ya que es un conteo de palabras
        ##
        value = int(line.split("	")[0])
        value = "{:03.0f}".format(value)
        letters = (line.split("	")[1].rstrip("\r\n")).split(",")
        for letter in letters:
            sys.stdout.write("{}\t{}\n".format(letter,value))
