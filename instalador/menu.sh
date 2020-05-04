#!/bin/bash
status="ativo"
caminhobase="/opt/kafka"
caminhobasescripts="/opt/scripts_base/"

menu ()

{
	while true $status != "ativo"
	do

		clear
		echo -e ""
		echo -e "     Menu de Operação Kafka e Zookeeper"
		echo -e ""
		echo -e "     ################################################################"
		echo -e ""
		echo "        Selecione a opcao desejada"
		echo -e ""
		echo -e "     h - Ajuda (Help)" 
		echo -e ""
		echo -e "     Funções Tópicos"
		echo "          0 - Listar Tópicos existentes"
		echo -e ""
		echo -e "     Reiniciar Serviços"
		
		echo "          1 - Reiniciar servico Zookeeper"
		echo "          2 - Reiniciar servico Kafka"
		echo "          3 - Reiniciar servico Zookeeper e Kafka"
		echo -e ""
		echo -e "     Parar Serviços"

		echo "          4 - Parar servico Zookeeper e Kafka"
		echo "          5 - Parar servico Zookeeper"
		echo "          6 - Parar servico Kafka"
		echo -e ""
		echo -e "     Iniciar Serviços"
		
		echo "          7 - Iniciar servico Zookeeper"
		echo "          8 - Iniciar servico Kafka"
		echo "          9 - Iniciar servico Zookeeper e Kafka"
		echo -e ""
		echo -e "     Verificação Processos"
		echo "          10 - Verificar se está em execucao (Processos)"
		echo -e ""
		echo -e "     Finalizar"
		echo "          11 - Encerrar"
		echo -e ""
		echo -e "     ################################################################"
		echo -e ""		
		read -p "Digite a opção desejada e pressione Enter: " opcao

		case "$opcao" in 

			h)
				clear;
				echo -e ""
				echo -e "     ##### ATENCAO ####"
				
				echo -e "     Versão 0.1 Beta - Criador: Marcelo Leão - 03/2020"
				echo -e ""
				echo -e "     EXISTE UMA ORDEM PARA SEGUIR CASO OPTE EM SUBIR E/OU PARAR MANUALMENTE O SERVIÇO"
				echo -e "           ORDEM DE START:  PRIMEIRO INICIAR ZOOKEEPER (OPCAO 7) E NA SEQUENCIA PARA O KAFKA (OPCAO 8)"
				echo -e "           ORDEM DA PARADA: PRIMEIRO PARAR KAKFA (OPCAO 6) E NA SEQUENCIA PARA O ZOOKEEPER (OPCAO 7)"
				echo -e ""
				echo -e "     OPCAO PARA RESTART"
				echo -e "           (OPCAO 3) REINICIA OS SERVIÇOS COMPLETAMENTE"
				echo -e ""
				echo -e "     OPCAO PARA PARADA TOTAL"
				echo -e "           (OPCAO 4) PARA OS SERVIÇOS COMPLETAMENTE"
				echo -e ""
				echo -e ""
				echo -e "     Pressione uma tecla para finalizar a exibição"
				read
				;;

			0)	

				clear;
				cd $caminhobasescripts
				./lista_topicos_kafka.sh $caminhobase
				echo -e ""
				echo "executado com sucesso"
				echo -e ""
				sleep 1
				echo -e ""
				echo -e "Pressione uma tecla para finalizar a exibição"
				read
				echo ###################################################

			;;


			1) echo "opcao 01"
				echo "Reiniciando servico Zookeeper"
				echo "Confirma S ou N"

				read subopcao

					case "$subopcao" in
					S)
						echo -e "Chamando o script para execucao da tarefa"
						cd $caminhobasescripts
						./gerencia_zookeeper.sh 1 #opcao start
						sleep 5
						;;

					N)
						echo "Cancelado com sucesso !!!"
						sleep 3
						;;
						
					1*)
						echo "Opção inválida"
						sleep 5
						;;
					esac
			;;

			2) echo "opcao 02"
				echo "Reiniciando servico Zookeeper"
				echo "Confirma S ou N"

				read subopcao
					case "$subopcao" in
					S)
						echo -e "Chamando o script para execucao da tarefa"
						cd $caminhobasescripts
						./gerencia_kafka.sh 1 #opcao start
						sleep 5
						;;

					N)
						echo "Cancelado com sucesso !!!"
						sleep 3
						;;
						
					1*)
						echo "Opção inválida"
						sleep 5
						;;
					esac

				;;

				3) echo "opcao 03"
				echo "Reiniciar serviço Zookeeper e o Kafka?"
				echo "Confirma S ou N"

				read subopcao
					case "$subopcao" in
					S)
						echo -e "Chamando o script para execucao da tarefa"
						echo -e "Caminho" $caminhobasescripts
						cd $caminhobasescripts
						./gerencia_zookeeperAndKafka.sh 1 #opcao start
						sleep 5
						;;

					N)
						echo "Cancelado com sucesso !!!"
						sleep 3
						;;
						
					1*)
						echo "Opção inválida"
						sleep 5
						;;
					esac

				;;

			4) echo "opcao 04"
				echo "Parar os serviço Zookeeper e o Kafka?"
				echo "Confirma S ou N"

				read subopcao
					case "$subopcao" in
					S)
						echo -e "Chamando o script para execucao da tarefa"
						cd $caminhobasescripts
						./gerencia_zookeeperAndKafka.sh 2 #opcao Parar os Serviços
						sleep 5
						;;

					N)
						echo "Cancelado com sucesso !!!"
						sleep 3
						;;
						
					1*)
						echo "Opção inválida"
						sleep 5
						;;
					esac

				;;
				
				
				5) echo "opcao 05"
				echo "Parar o serviço Zookepper?"
				echo "Confirma S ou N"

				read subopcao
					case "$subopcao" in
					S)
						echo -e "Chamando o script para execucao da tarefa"
						cd $caminhobasescripts
						./gerencia_zookeeper.sh 2 #opcao Parar o Serviço
						sleep 5
						;;

					N)
						echo "Cancelado com sucesso !!!"
						sleep 3
						;;
						
					1*)
						echo "Opção inválida"
						sleep 5
						;;
					esac

				;;

			6) echo "opcao 06"
				echo "Parar o serviço Kafka?"
				echo "Confirma S ou N"

				read subopcao
					case "$subopcao" in
					S)
						echo -e "Chamando o script para execucao da tarefa"
						cd $caminhobasescripts
						./gerencia_kafka.sh 2 #opcao Parar o Serviço
						sleep 5
						;;

					N)
						echo "Cancelado com sucesso !!!"
						sleep 3
						;;
						
					1*)
						echo "Opção inválida"
						sleep 5
						;;
					esac

				;;
			
			
				7) echo "opcao 07"
				echo "Iniciar o serviço Zookepper?"
				echo "Confirma S ou N"

				read subopcao
					case "$subopcao" in
					S)
						echo -e "Chamando o script para execucao da tarefa"
						cd $caminhobasescripts
						./gerencia_zookeeper.sh 3 #opcao Iniciar o Serviço
						sleep 5
						;;

					N)
						echo "Cancelado com sucesso !!!"
						sleep 3
						;;
						
					1*)
						echo "Opção inválida"
						sleep 5
						;;
					esac

				;;			
			
			
			8) echo "opcao 08"
				echo "Iniciar o serviço Kafka?"
				echo "Confirma S ou N"

				read subopcao
					case "$subopcao" in
					S)
						echo -e "Chamando o script para execucao da tarefa"
						cd $caminhobasescripts
						./gerencia_kafka.sh 3 #opcao Iniciar
						sleep 5
						;;

					N)
						echo "Cancelado com sucesso !!!"
						sleep 3
						;;
						
					1*)
						echo "Opção inválida"
						sleep 5
						;;
					esac

				;;
			9) echo "opcao 09"
				echo -e "Iniciar o serviço Zookeeper e o Kafka"
				echo -e "Atenção só executar se já parou os serviços anteriorermente"
				echo -e "Confirma S ou N "
				
				read subopcao
					case "$subopcao" in
					S)
						echo -e "Chamando o script para execucao da tarefa"
						cd $caminhobasescripts
						./gerencia_zookeeperAndKafka.sh 3 #opcao Iniciar
						sleep 5
						;;

					N)
						echo "Cancelado com sucesso !!!"
						sleep 3
						;;
						
					1*)
						echo "Opção inválida item 9"
						sleep 5
						;;
					esac

				;;

			10)
				echo "Listando Processos em Execução do Zookeeper e Kafka"
				
				echo -e "Chamando o script para execucao da tarefa"
				cd $caminhobasescripts	
				./lista_processos.sh
				sleep 5
				echo -e "Pressione uma tecla para finalizar a exibição"
				read


				

			;;

			11)
				echo "Encerrando"
				sleep 1
				clear;
				exit;

			;;



			*)

				echo "Opcao invalida";

			esac
		done

	}
menu
