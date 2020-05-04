#!/bin/bash
caminhobase="/opt/kafka/bin/"
opcaodesejada=$1


					case "$opcaodesejada" in
                        1)
                            echo -e "Reiniciando servico"
                            sleep 1
                            cd $caminhobase

                            echo -e "Parando Serviço Atual Kafka"
                            #sudo ./simulacomando.sh 1 Parar &
                            sudo nohup ./kafka-server-stop.sh ../config/server.properties > nohupKafkaStop.out &
                            echo -e "Serviço Parado Kafka"
                            
                            echo -e "Iniciando Serviço Kafka"
                            #sudo ./simulacomando.sh 1 Iniciar &
                            sudo nohup ./kafka-server-start.sh ../config/server.properties > nohupKafkaStart.out &
                            echo -e "Servico iniciado Kafka"
                            
                            sleep 3
                            exit;
                            ;;
                        2)
                          
                            echo -e "Parada do servico"
                            sleep 1
                            cd $caminhobase

                            echo -e "Parando Serviço Atual Kafka"
                            #sudo ./simulacomando.sh 2 Parar &
                            sudo nohup ./kafka-server-stop.sh ../config/server.properties > nohupKafkaStop.out &
                            echo -e "Serviço Parado Kafka"
                            sleep 3
                            exit;
                            ;;


                          3)
                          
                            echo -e "Parada do servico"
                            sleep 1
                            cd $caminhobase

                            echo -e "Iniciando o Serviço Kafka"
                            #sudo ./simulacomando.sh 2 Parar &
                            sudo nohup ./kafka-server-start.sh ../config/server.properties > nohupKafkaStart.out &
                            sleep 5
                            echo -e  "Processo Finalizado com sucesso - Aperte Enter"
                            read

                            exit;
                            ;;
        				*)

                         echo -e "Opção inválida"
						sleep 1
						;;

					esac