File
-------------------------------------------
sysread

2.7.0 :001 > aFile = File.new("new.txt","r")
2.7.0 :002 > if aFile
2.7.0 :003 >   content = aFile.sysread(20)
2.7.0 :004 >   puts content
2.7.0 :005 > else
2.7.0 :006 >   puts "Unable to open file!"
2.7.0 :007 > end  
unix jijjijiij.UNIX 
 => nil 

-------------------------------------------
syswrite

2.7.0 :009 > aFile = File.new("Palindrome.rb","r+")
2.7.0 :010 > if aFile
2.7.0 :011 >   content = aFile.syswrite(20)
2.7.0 :012 >   puts content
2.7.0 :013 > else
2.7.0 :014 >   puts "Unable to open file!"
2.7.0 :015 > end 
2
 => nil 
2.7.0 :016 > if aFile
2.7.0 :017 >   content = aFile.syswrite("huhuhuhu")
2.7.0 :018 >   puts content
2.7.0 :019 > else
2.7.0 :020 >   puts "Unable to open file!"
2.7.0 :021 > end 
8
 => nil 

2.7.0 :008 > sym=File.new("Main_File","r+")
2.7.0 :009 > if sym
2.7.0 :010 >   sym.syswrite("Gunjan_Gaur")
2.7.0 :011 >   sym.each_byte{|ch| putc ch;}
2.7.0 :012 > else
2.7.0 :013 >   puts "Unable to open file"
2.7.0 :014 > end  
f new semester
hey another line

2.7.0 :015 > 
beryl@beryl-ThinkPad-L412:~$ cat Main_File 
Gunjan_Gaurf new semester
hey another line

-------------------------------------------------
IO Readlines

2.7.0 :001 > arr = IO.readlines("Main_File")
2.7.0 :002 > puts arr[0]
Gunjan_Gaurf new semester
 => nil 

2.7.0 :003 > puts arr[1]
hey another line
 => nil 

--------------------------------------------------
IO.foreach
2.7.0 :004 > IO.foreach("Main_File"){|block| puts block}
Gunjan_Gaurf new semester
hey another line
ABCDEFABCDEFABCDEF
 => nil 

--------------------------------------------------