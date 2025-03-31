@echo off
REM Mapeia temporariamente o caminho UNC para uma letra de unidade
pushd D:\03. Cursos\Python\Teste\

REM Verifica se o Excel está em execução e o encerra se estiver
tasklist /fi "imagename eq excel.exe" | find /i "excel.exe"
if not errorlevel 1 taskkill /f /im excel.exe

REM Executa o arquivo Python
python Atualizar_Excel.py

REM Desfaz o mapeamento temporário
popd

REM Aguarda 60 segundos antes de fechar a janela do prompt de comando
timeout /t 60

REM Fecha a janela do prompt de comando
exit