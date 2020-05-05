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
                            ./kafka-server-stop.sh ../config/server.properties >/dev/null 2>&1 &
                            echo -e "Serviço Parado Kafka"

                            sleep 5

                            echo -e "Parando Serviço Atual Zookeeper"
                            #sudo ./simulacomando.sh 1 ParadaZookeeper &
                            ./zookeeper-server-stop.sh ../config/zookeeper.properties >/dev/null 2>&1 &
                            echo -e "Serviço Parado Zookeeper"
                            echo -e  ""

                            sleep 5


                            echo -e  "Iniciando servico"
                            sleep 1
                            cd $caminhobase

                            echo -e  "Iniciando Serviço Atual Zookeeper"
                            #sudo ./simulacomando.sh 1 IniciandoZookeeper &
                            ./zookeeper-server-start.sh ../config/zookeeper.properties >/dev/null 2>&1 &

                            echo -e  "Serviço Iniciado Zookeeper"

                            sleep 5

                            echo -e  "Iniciando Serviço Atual Kafka"
                            #sudo ./simulacomando.sh 1 Iniciando &
                            ./kafka-server-start.sh ../config/server.properties >/dev/null 2>&1 &

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
                            ./kafka-server-stop.sh ../config/server.properties >/dev/null 2>&1 &
                            echo -e  "Serviço Parado Kafka"

                            sleep 5

                            echo -e  "Parando Serviço Atual Zookeeper"
                            #sudo ./simulacomando.sh 1 ParadaZookeeper &
                            ./zookeeper-server-stop.sh ../config/zookeeper.properties >/dev/null 2>&1 &
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
                            ./zookeeper-server-start.sh ../config/zookeeper.properties >/dev/null 2>&1 &
                            echo -e  "Serviço Iniciado Zookeeper"
                            sleep 5
                            echo -e  "Iniciando Serviço  Kafka"
                            #sudo ./simulacomando.sh 1 Iniciando &
                            ./kafka-server-start.sh ../config/server.properties >/dev/null 2>&1 &
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
