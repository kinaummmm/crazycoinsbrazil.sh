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
sudo clear

cd /home/ubuntu/
sudo rm -rf cpuminer-multi
sudo rm -rf mineracao.sh
sudo clear

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
echo -e "$verde ----------===$branco    GRUPO CRAZY COINS BRAZIL   $verde  ======---------- \033[0m "
echo -e "$verde ----------===---------------------------------======---------- \033[0m "
echo -e "$verde ----------===---------------------------------======---------- \033[0m "
sleep '2'
echo ""
echo ""
echo ""
echo ""
echo ""
echo -e "$azulClaro ==========================================================================  \033[0m "
echo -e "$azulClaro ==========================================================================  \033[0m "
echo ""
echo -e "$branco     Instalacao completa do CPUMiner-Multi para uso na Minergate.\033[0m "
echo -e "$branco    Script desenvolvido para auxiliar a todos que desejam realizar \033[0m "
echo -e "$branco                      a mineracao das Alt coins !!!               \033[0m "
echo -e "$branco   Esse script permite aoenas a mineração de Monero(XMR) ou Bytecoin(BCN) \033[0m "
echo -e "$branco            Qualquer duvida entre em contato com nossa equipe    \033[0m "
echo -e "$branco Grupo do Whatsapp:$amarelo https://chat.whatsapp.com/8BR2fPahHrWBnFe37Heufh \033[0m "
echo ""
echo -e "$azulClaro ==========================================================================  \033[0m "
echo -e "$azulClaro ==========================================================================  \033[0m "

echo ""
echo ""
sleep '6'

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
echo -e "$verde    ---------===----------------------------------======---------- \033[0m "
echo -e "$verde    ----------=== $branco   GRUPO CRAZY COINS BRAZIL $verde    ======---------- \033[0m "
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
echo -e "$branco  =========================================================================================="
echo -e "$branco                                                                        "
echo -e "$branco     * Duvidas? grupo de Skype$amarelo https://join.skype.com/sdN9W0hs2gId "
echo -e "$branco     * Duvidas? grupo de Whatsapp$amarelo https://chat.whatsapp.com/8BR2fPahHrWBnFe37Heufh "
echo -e "$branco     * Script funciona apenas no Sistema Ubuntu linux"
echo -e "$branco     * Proibida a venda ou aluguel deste Script. DISTRIBUICAO GRATUITA !"
echo -e "$branco     * CASO NAO CONCORDE COM O NOSSO TERMO, FECHE O SCRIPT AGORA!$amarelo CRTL+Z"
echo -e "$branco                                                                        "
echo -e "$branco  =========================================================================================="
sleep '6'

echo ""
echo ""
echo -e "$verdeClaro    ----------===---------------------------------======---------- \033[0m "
echo -e "$verdeClaro    ----------===---------------------------------======---------- \033[0m "
echo -e "$verdeClaro    ----------===  $azulClaro  GRUPO CRAZY COINS BRAZIL $verdeClaro    ======---------- \033[0m "
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
echo -e "$branco     A carteira Minergate adicionada ao script foi e-mail: $verde ${Carteira} \033[0m "

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
     echo "#!/bin/bash" >> /home/ubuntu/mineracao.sh
     echo "### BEGIN INIT INFO" >> /home/ubuntu/mineracao.sh
     echo "# Provides:          mineracao.sh" >> /home/ubuntu/mineracao.sh
     echo "# Required-Start:    $local_fs $remote_fs $network $syslog" >> /home/ubuntu/mineracao.sh
     echo "# Required-Stop:     $local_fs $remote_fs $network $syslog" >> /home/ubuntu/mineracao.sh
     echo "# Default-Start:     2 3 4 5" >> /home/ubuntu/mineracao.sh
     echo "# Default-Stop:      0 1 6" >> /home/ubuntu/mineracao.sh
     echo "# Short-Description: Start minercao.sh at boot time" >> /home/ubuntu/mineracao.sh
     echo "# Description:       Enable service provided by mineracao.sh." >> /home/ubuntu/mineracao.sh
     echo "### END INIT INFO" >> /home/ubuntu/mineracao.sh
     echo "sudo shutdown -r 120" >> /home/ubuntu/mineracao.sh
     echo "nohup /home/ubuntu/cpuminer-multi/./minerd -a cryptonight -o stratum+tcp://${Moeda}.pool.minergate.com:${Porta} -u ${Carteira} -p x >/dev/null 2>&1 &" >> /home/ubuntu/mineracao.sh
     echo "sudo nohup cpulimit -P /home/ubuntu/cpuminer-multi/minerd -l 65 >/dev/null 2>&1 &" >> /home/ubuntu/mineracao.sh
     echo "exit" >> /home/ubuntu/mineracao.sh
     sudo chmod +x mineracao.sh

  elif [ $Moeda = bcn ]; then
     Porta="45550"
     echo -e "$vermelho     Voce optou em minerar BYTECOIN (bcn) \033[0m "
     sleep 2
     echo "#!/bin/bash" >> /home/ubuntu/mineracao.sh
     echo "### BEGIN INIT INFO" >> /home/ubuntu/mineracao.sh
     echo "# Provides:          mineracao.sh" >> /home/ubuntu/mineracao.sh
     echo "# Required-Start:    $local_fs $remote_fs $network $syslog" >> /home/ubuntu/mineracao.sh
     echo "# Required-Stop:     $local_fs $remote_fs $network $syslog" >> /home/ubuntu/mineracao.sh
     echo "# Default-Start:     2 3 4 5" >> /home/ubuntu/mineracao.sh
     echo "# Default-Stop:      0 1 6" >> /home/ubuntu/mineracao.sh
     echo "# Short-Description: Start mineracao.sh at boot time" >> /home/ubuntu/mineracao.sh
     echo "# Description:       Enable service provided by mineracao.sh." >> /home/ubuntu/mineracao.sh
     echo "### END INIT INFO" >> /home/ubuntu/mineracao.sh
     echo "sudo shutdown -r 120" >> /home/ubuntu/mineracao.sh
     echo "sudo nohup /home/ubuntu/cpuminer-multi/./minerd -a cryptonight -o stratum+tcp://${Moeda}.pool.minergate.com:${Porta} -u ${Carteira} -p x >/dev/null 2>&1 &" >> /home/ubuntu/mineracao.sh
     echo "sudo nohup cpulimit -P /home/ubuntu/cpuminer-multi/minerd -l 65 >/dev/null 2>&1 &" >> /home/ubuntu/mineracao.sh
     echo "exit" >> /home/ubuntu/mineracao.sh
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
     echo "#!/bin/bash" >> /home/ubuntu/mineracao.sh
     echo "### BEGIN INIT INFO" >> /home/ubuntu/mineracao.sh
     echo "# Provides:          mineracao.sh" >> /home/ubuntu/mineracao.sh
     echo "# Required-Start:    $local_fs $remote_fs $network $syslog" >> /home/ubuntu/mineracao.sh
     echo "# Required-Stop:     $local_fs $remote_fs $network $syslog" >> /home/ubuntu/mineracao.sh
     echo "# Default-Start:     2 3 4 5" >> /home/ubuntu/mineracao.sh
     echo "# Default-Stop:      0 1 6" >> /home/ubuntu/mineracao.sh
     echo "# Short-Description: Start mineracao.sh at boot time" >> /home/ubuntu/mineracao.sh
     echo "# Description:       Enable service provided by mineracao.sh." >> /home/ubuntu/mineracao.sh
     echo "### END INIT INFO" >> /home/ubuntu/mineracao.sh
     echo "sudo shutdown -r 120" >> /home/ubuntu/mineracao.sh
     echo "nohup /home/ubuntu/cpuminer-multi/./minerd -a cryptonight -o stratum+tcp://${Moeda}.pool.minergate.com:${Porta} -u ${Carteira} -p x >/dev/null 2>&1 &" >> /home/ubuntu/mineracao.sh
     echo "nohup cpulimit -P /home/ubuntu/cpuminer-multi/minerd -l 65 >/dev/null 2>&1 &" >> /home/ubuntu/mineracao.sh
     echo "exit" >> /home/ubuntu/mineracao.sh
     sudo chmod +x mineracao.sh

  elif [ $Moeda = bcn ]; then
     Porta="45550"
     echo -e "$vermelho     Voce optou em minerar BYTECOIN (bcn) \033[0m "
     sleep 2
     echo "#!/bin/bash" >> /home/ubuntu/mineracao.sh
     echo "### BEGIN INIT INFO" >> /home/ubuntu/mineracao.sh
     echo "# Provides:          mineracao.sh" >> /home/ubuntu/mineracao.sh
     echo "# Required-Start:    $local_fs $remote_fs $network $syslog" >> /home/ubuntu/mineracao.sh
     echo "# Required-Stop:     $local_fs $remote_fs $network $syslog" >> /home/ubuntu/mineracao.sh
     echo "# Default-Start:     2 3 4 5" >> /home/ubuntu/mineracao.sh
     echo "# Default-Stop:      0 1 6" >> /home/ubuntu/mineracao.sh
     echo "# Short-Description: Start mineracao.sh at boot time" >> /home/ubuntu/mineracao.sh
     echo "# Description:       Enable service provided by mineracao.sh." >> /home/ubuntu/mineracao.sh
     echo "### END INIT INFO" >> /home/ubuntu/mineracao.sh
     echo "sudo shutdown -r 120" >> /home/ubuntu/mineracao.sh
     echo "sudo nohup /home/ubuntu/cpuminer-multi/./minerd -a cryptonight -o stratum+tcp://${Moeda}.pool.minergate.com:${Porta} -u ${Carteira} -p x >/dev/null 2>&1 &" >> /home/ubuntu/mineracao.sh
     echo "sudo nohup cpulimit -P /home/ubuntu/cpuminer-multi/minerd -l 65 >/dev/null 2>&1 &" >> /home/ubuntu/mineracao.sh
     echo "exit" >> /home/ubuntu/mineracao.sh
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
sudo cp mineracao.sh /usr/bin/

cd /usr/bin/
sudo chmod 755 mineracao.sh

cd /etc/init.d/
sudo chmod 755 mineracao.sh
sudo update-rc.d mineracao.sh defaults

cd /etc/init.d/

sudo ./mineracao.sh
