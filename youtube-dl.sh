#/bin/bash
clear
echo "Escolha uma das opções abaixo:"
echo ""
echo "1 - Baixar vídeo"
echo "2 - Baixar áudio do vídeo no formato mp3"
echo "3 - Sair"
echo ""
read opcao
case $opcao in
1) echo "Insira o link do(s) vídeo(s) e pressione enter para continuar:"
read link
echo ""
youtube-dl -F $link
echo "Selecione a qualidade do vídeo a ser baixada através do código da coluna formatcode:"
read qualidade
youtube-dl -f $qualidade $link ;;
2) echo "Insira o link do(s) vídeo(s) e pressione enter para continuar:"
read link
echo ""
youtube-dl -c --audio-quality 0 --extract-audio --audio-format mp3 $link ;;
3) exit ;;
*) echo "Opção inválida" ;;
esac

