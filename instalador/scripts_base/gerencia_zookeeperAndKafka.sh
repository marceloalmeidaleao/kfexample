#!/bin/bash
caminhobase="/opt/kafka/bin/"
opcaodesejada=$1


					case "$opcaodesejada" in
                        1)
                            echo -e "Reiniciando servico"
                            sleep 1
                            cd $caminhobase

                            echo -e "Parando Serviço Atual Kafka"

                            #sudo ./simulacomando.sh 1 ParadaKafka &
                            sudo nohup ./kafka-server-stop.sh ../config/server.properties > nohupKafkaStop.out &
                            echo -e "Serviço Parado Kafka"

                            sleep 5

                            echo -e "Parando Serviço Atual Zookeeper"
                            #sudo ./simulacomando.sh 1 ParadaZookeeper &
                            sudo nohup ./zookeeper-server-stop.sh ../config/zookeeper.properties > nohupStopZookeeper.out &
                            echo -e "Serviço Parado Zookeeper"
                            echo -e  ""

                            sleep 5


                            echo -e  "Iniciando servico"
                            sleep 1
                            cd $caminhobase

                            echo -e  "Iniciando Serviço Atual Zookeeper"
                            #sudo ./simulacomando.sh 1 IniciandoZookeeper &
                            sudo nohup ./zookeeper-server-start.sh ../config/zookeeper.properties > nohupStartZookeeper.out &

                            echo -e  "Serviço Iniciado Zookeeper"

                            sleep 5

                            echo -e  "Iniciando Serviço Atual Kafka"
                            #sudo ./simulacomando.sh 1 Iniciando &
                            sudo nohup ./kafka-server-start.sh ../config/server.properties > nohupKafkaStop.out &

                            echo -e "Serviço Iniciado Kafka"

                            echo -e  "Processo Finalizado com sucesso - Aperte Enter"
                            read

                            exit;
                            ;;
                        2)
                            echo -e "Parando Serviço Kafka e Zookeeper"
                            cd $caminhobase

                            echo -e "Parando Serviço Atual Kafka"
                            sleep 5


                            #sudo ./simulacomando.sh 1 ParadaKafka &
                            sudo nohup ./kafka-server-stop.sh ../config/server.properties > nohupKafkaStop.out &
                            echo -e  "Serviço Parado Kafka"

                            sleep 5

                            echo -e  "Parando Serviço Atual Zookeeper"
                            #sudo ./simulacomando.sh 1 ParadaZookeeper &
                            sudo nohup ./zookeeper-server-stop.sh ../config/zookeeper.properties > nohupStopZookeeper.out &
                            echo -e "Serviço Parado Zookeeper"

                            sleep 5
                            echo -e  "Processo Finalizado com sucesso - Aperte Enter"
                            read

                            exit;
                            ;;

                        ####

                        3)
                            echo -e  "Iniciando servico Zookeeper e Kafka"
                            cd $caminhobase
                            
                            sleep 5
                            echo -e  "Iniciando Serviço Zookeeper"
                            #sudo ./simulacomando.sh 1 IniciandoZookeeper &
                            sudo nohup ./zookeeper-server-start.sh ../config/zookeeper.properties > nohupStartZookeeper.out &
                            echo -e  "Serviço Iniciado Zookeeper"
                            sleep 5
                            echo -e  "Iniciando Serviço  Kafka"
                            #sudo ./simulacomando.sh 1 Iniciando &
                            sudo nohup ./kafka-server-start.sh ../config/server.properties > nohupKafkaStop.out &
                            sleep 5
                            echo -e "Serviço Iniciado Kafka"
                            echo -e  "Processo Finalizado com sucesso - Aperte Enter"
                            read

                            exit;
                            ;;

    				*)


                         echo "Opção inválida"
						sleep 5
						;;

					esac