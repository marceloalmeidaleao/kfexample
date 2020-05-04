#!/bin/bash
caminhobase="/opt/kafka/bin/"
opcaodesejada=$1


					case "$opcaodesejada" in
                        1)
                            echo "Reinicializando servico"
                            sleep 1
                            cd $caminhobase

                            echo ""
                            echo "Parando Serviço Atual"
                            #sudo ./simulacomando.sh 1 Parar &
                            sudo nohup ./zookeeper-server-start.sh ../config/zookeeper.properties > nohupStopZookeeper.out &

                            echo ""
                            echo "Serviço Parado"
                            #sudo nohup ./simulacomando.sh 1 Iniciar > nohupStart.out &
                            echo ""
                            echo "Iniciando Serviço"
                            #sudo ./simulacomando.sh 1 Iniciar &
                            sudo nohup ./zookeeper-server-start.sh ../config/zookeeper.properties > nohupStartZookeeper.out &
                            echo ""
                            echo "Servico inicializado"
                            
                            sleep 3
                            exit;
                            ;;
                        2)
                            echo -e  "Parando servico Zookeeper"
                            sleep 1
                            cd $caminhobase

                            
                            echo -e "Parando Serviço Atual"
                            #sudo ./simulacomando.sh 2 Parar zookeeper &
                            sudo nohup ./zookeeper-server-start.sh ../config/zookeeper.properties > nohupStopZookeeper.out &

                            echo ""
                            echo "Serviço Parado"
                            sleep 3
                            exit;
                            ;;

                        3)
                            echo -e  "Iniciando servico Zookeeper"
                            sleep 1
                            cd $caminhobase

                            
                            echo -e "Iniciando Zookeeper"
                            #sudo ./simulacomando.sh 3 Iniciar zookeeper &
                            sudo nohup ./zookeeper-server-start.sh ../config/zookeeper.properties > nohupStartZookeeper.out &
                            echo -e  "Serviço sendo iniciado"
                            sleep 3
                            exit;
                            ;;                            
    				*)
						
                         echo "Opção inválida"
						sleep 5
						;;

					esac