 
 @echo
 set filetime=%date:~5,2%%data:~8,2%
 
 set /p filename=filename
 
 set filetype=".md"
 
 set creatfile=%filetime%_%filename%%filetype%
 
 echo make
 
 echo # %filename% >> %creatfile%
 
 pause
 
 
