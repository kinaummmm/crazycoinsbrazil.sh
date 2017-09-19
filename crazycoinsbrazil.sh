#!/bin/bash

#ATENCAO !!! NÃO ALTERE O SCRIPT, PODE OCASIONAR ERROS NA INSTALACAO E NA MINERACAO!
#CASO OCORRA ALGUM ERRO, ENTRE EM CONTATO O MAIS RAPIDO POSSIVEL EM NOSSO CANAL.

# DIREITOS RESERVADOS | GRUPO CRAZYBRAZIL COINS
# SKYPE
#GRUPO SKYPE https://join.skype.com/

sudo clear

cd /etc/init.d/
sudo update-rc.d -f mineracao.sh remove
sudo rm -rf mineracao.sh


cd /home/ubuntu/
sudo rm -rf cpuminer-multi
sudo rm -rf mineracao.sh
sleep '3'

versao=1.0


corPadrao="\033[0m"
verde="\033[01;32m"
vermelhoClaro="\033[01;31m"
verdeClaro="\033[01;32m"
amarelo="\033[01;33m"
branco="\033[01;37m"
purpleClaro="\033[01;35m"
vermelho="\033[01;31m"
azulClaro="\033[01;36m"


echo ""
echo ""
echo -e "$verde ----------===---------------------------------======---------- \033[0m "
echo -e "$verde ----------===---------------------------------======---------- \033[0m "
echo -e "$verde ----------===$branco     GRUPO CRAZYCOINS BRAZIL   $verde  ======---------- \033[0m "
echo -e "$verde ----------===---------------------------------======---------- \033[0m "
echo -e "$verde ----------===---------------------------------======---------- \033[0m "
echo ""
echo ""
echo -e "$branco  Instalacao completa do CPUMuner-Multi para uso na Minergate.\033[0m "
echo -e "$branco Script desenvolvido para auxiliar a todos que desejam realizar \033[0m "
echo -e "$branco                  a mineracao das Alt coins !!!               \033[0m "
echo -e "$branco        Qualquer duvida entre em contato com nossa equipe    \033[0m "


echo ""
echo ""
sleep '4'

sudo apt-get update && sudo apt-get upgrade && sudo apt-get install && sudo apt-get install screen cpulimit git build-essential autotools-dev autoconf libcurl3 libcurl4-gnutls-dev

cd /home/ubuntu/

sudo git clone https://github.com/wolf9466/cpuminer-multi 

cd /home/ubuntu/cpuminer-multi/ && sudo chmod +x autogen.sh && sudo ./autogen.sh && sudo CFLAGS="-march=native" ./configure && sudo make && sudo make install

cd /home/ubuntu/
sudo chmod 777 *

sudo clear


echo ""
echo ""
echo -e "$verde    ----------===---------------------------------======---------- \033[0m "
echo -e "$verde    ---------===---------------------------------======---------- \033[0m "
echo -e "$verde    ----------=== $branco    GRUPO CRAZYCOINS BRAZIL $verde    ======---------- \033[0m "
echo -e "$verde    ----------===---------------------------------======---------- \033[0m "
echo -e "$verde    ----------===---------------------------------======---------- \033[0m "
echo ""
echo ""
sleep '2'

echo -e "$purpleClaro              ---======--------------------======--- \033[0m   \n"
echo -e "$purpleClaro              ---======$branco TERMOS E CONDIÇOES$purpleClaro ======--- \033[0m   \n"
echo -e "$purpleClaro              ---======--------------------======--- \033[0m   \n"
echo ""
sleep 2
echo -e "$branco  ======================================================================"
echo -e "$branco                                                                        "
echo -e "$branco     * Duvidas? grupo de Skype$amarelo https://join.skype.com/ "
echo -e "$branco     * Duvidas? grupo de Whatsapp$amarelo https:// "
echo -e "$branco     * Script funciona apenas no Sistema Ubuntu linux"
echo -e "$branco     * Proibida a venda ou aluguel deste Script. DISTRIBUICAO GRATUITA !"
echo -e "$branco     * CASO NAO CONCORdE COM O NOSSO TERMO, FECHE O SCRIPT AGORA!$amarelo CRTL+Z"
echo -e "$branco                                                                        "
echo -e "$branco  ======================================================================"
sleep '4'

echo ""
echo ""
echo -e "$verdeClaro    ----------===---------------------------------======---------- \033[0m "
echo -e "$verdeClaro    ----------===---------------------------------======---------- \033[0m "
echo -e "$verdeClaro    ----------===  $azulClaro   GRUPO CRAZYCOINS BRAZIL $verdeClaro    ======---------- \033[0m "
echo -e "$verdeClaro    ----------===---------------------------------======---------- \033[0m "
echo -e "$verdeClaro    ----------===---------------------------------======---------- \033[0m "
echo ""
echo ""
sleep '2'

echo "     "
echo "     "
echo -e "$amarelo     Digite o endereco da sua CARTEIRA na Minergate: \033[0m "
echo "     "
read Carteira
echo "     "
echo -e "$branco     A carteira Minergate adicionada ao script foi e-mail:$verde ${Carteira} \033[0m "

sleep 3

echo "     "
echo "     "
echo -e "$branco     Digite a Moeda que deseja minerar.$amarelo Para MONERO digite: xmr $branco. $vermelho Para BYTECOIN digite: bcn \033[0m "
echo "     "
echo "     "
read Moeda
echo "     "
echo "     "
echo -e "$amarelo     A moeda escolhida para minerar foi:$verde ${Moeda} \033[0m "
echo "     "
echo "     "

sleep 3

Porta="0"

if [ $Moeda = xmr ]; then
     Porta="45560"
     echo -e "$amarelo     Voce optou em minerar MONERO (xmr) \033[0m "
     sleep 2
     echo "sudo shutdown -r 7200" >> /home/ubuntu/mineracao.sh
     echo "cd /home/ubuntu/cpuminer-multi/" >> /home/ubuntu/mineracao.sh
     echo "sudo screen ./minerd -a cryptonight -o stratum+tcp://${Moeda}.pool.minergate.com:${Porta} -u ${Carteira} -p x" >> /home/ubuntu/mineracao.sh
     echo "sudo screen cpulimit -P /home/ubuntu/cpuminer-multi/minerd -l 55" >> /home/ubuntu/mineracao.sh
     sudo chmod +x mineracao.sh

  elif [ $Moeda = bcn ]; then
     Porta="45550"
     echo -e "$vermelho     Voce optou em minerar BYTECOIN (bcn) \033[0m "
     sleep 2
     echo "sudo shutdown -r 7200" >> /root/mineracao.sh
     echo "cd /home/ubuntu/cpuminer-multi/" >> /home/ubuntu/mineracao.sh
     echo "sudo screen ./minerd -a cryptonight -o stratum+tcp://${Moeda}.pool.minergate.com:${Porta} -u ${Carteira} -p x" >> /home/ubuntu/mineracao.sh
     echo "sudo screen cpulimit -P /home/ubuntu/cpuminer-multi/minerd -l 55" >> /home/ubuntu/mineracao.sh
     sudo chmod +x mineracao.sh
else
   sudo clear
   echo ""
   echo ""
   echo -e "$vermelho     Escolha INVALIDA. Escolha$branco xmr$vermelho para$branco MONERO$vermelho ou$amarelo bcn$vermelho para$amarelo BYTECOIN$vermelho !!! \033[0m "
   echo "     "
   echo -e "$branco     Digite a Moeda que deseja minerar.$amarelo Para MONERO digite: xmr$branco.$vermelho Para BYTECOIN digite: bcn \033[0m "
   echo "     "
   read Moeda
   echo "     "
   echo -e "$amarelo     A moeda escolhida para minerar foi:$verde ${Moeda} \033[0m "
   echo "     "
   echo "     "
   sleep 2
   if [ $Moeda = xmr ]; then
     Porta="45560"
     echo -e "$amarelo     Voce optou em minerar MONERO (xmr) \033[0m "
     sleep 2
     echo "sudo shutdown -r 7200" >> /home/ubuntu/mineracao.sh
     echo "cd /home/ubuntu/cpuminer-multi/" >> /home/ubuntu/mineracao.sh
     echo "sudo screen ./minerd -a cryptonight -o stratum+tcp://${Moeda}.pool.minergate.com:${Porta} -u ${Carteira} -p x" >> /home/ubuntu/mineracao.sh
     echo "sudo screen cpulimit -P /home/ubuntu/cpuminer-multi/minerd -l 55" >> /home/ubuntu/mineracao.sh
     sudo chmod +x mineracao.sh

  elif [ $Moeda = bcn ]; then
     Porta="45550"
     echo -e "$vermelho     Voce optou em minerar BYTECOIN (bcn) \033[0m "
     sleep 2
     echo "sudo shutdown -r 7200" >> /home/ubuntu/mineracao.sh
     echo "cd /home/ubuntu/cpuminer-multi/" >> /home/ubuntu/mineracao.sh
     echo "sudo screen ./minerd -a cryptonight -o stratum+tcp://${Moeda}.pool.minergate.com:${Porta} -u ${Carteira} -p x" >> /home/ubuntu/mineracao.sh
     echo "sudo screen cpulimit -P /home/ubuntu/cpuminer-multi/minerd -l 55" >> /home/ubuntu/mineracao.sh
     sudo chmod +x mineracao.sh


  else
    sudo clear
    echo ""
    echo ""
    echo -e "$vermelho     Escolha INVALIDA. Escolha$branco xmr$vermelho para$branco MONERO$vermelho ou$amarelo bcn$vermelho para$amarelo BYTECOIN$vermelho !!! \033[0m "
    echo ""
    echo ""
    echo -e  "$verde     Reinicie a instalacao novamente e escolha umas das MOEDAS permitidas !!! \033[0m "
    echo ""
    echo ""
    exit
  fi

fi

cd /home/ubuntu/
sudo cp mineracao.sh /etc/init.d/
cd /etc/init.d/
sudo chmod +x mineracao.sh
sudo update-rc.d mineracao.sh defaults

cd /etc/init.d/
sudo ./mineracao.sh
