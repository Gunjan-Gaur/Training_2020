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

---------------------------------------------------
Rename and Delete File

2.7.0 :001 > File.rename("item4","Item")
 => 0 

2.7.0 :001 > File.delete("Item")
 => 1 

---------------------------------------------------
File.open("Main_File") if File::exists?("Main_File")
 => #<File:Main_File> 

2.7.0 :005 > File.file?("Main_File")
 => true 

2.7.0 :006 > File::directory?("Main_File")
 => false 

2.7.0 :001 > File::directory?("Desktop/Training")
 => true 

2.7.0 :002 > File.readable?("Main_File")
 => true 

2.7.0 :003 > File.writable?("Main_File")
 => true 

2.7.0 :004 > File.executable?("Main_File")
 => false 

2.7.0 :005 > File.zero?("Main_File")
 => false 

2.7.0 :006 > File.size?("Main_File")
 => 61 

2.7.0 :008 > File::ctime("Main_File")
 => 2020-02-05 10:56:53.305506865 +0530 
 
2.7.0 :009 > File::mtime("Main_File")
 => 2020-02-05 10:56:53.305506865 +0530 

2.7.0 :010 > File::atime("Main_File")
 => 2020-02-05 10:57:08.61724608 +0530 

---------------------------------------------------
Direcories In Ruby

 Dir.mkdir("zzzzzzzz")
 => 0 

 Dir.delete("zzzzzzzz")
 => 0 

---------------------------------------------------
Exception

2.7.0 :001 > begin
2.7.0 :002 >   file = open("/item2")
2.7.0 :003 >   if file
2.7.0 :004 >     puts "File opened successfully"
2.7.0 :005 >   end
2.7.0 :006 > rescue
2.7.0 :007 >   file = STDIN
2.7.0 :008 > end
#<IO:<STDIN>>
2.7.0 :009 > print file, "==" ,STDIN , "\n"
#<IO:0x000055fac1feba70>==#<IO:0x000055fac1feba70>
nil

2.7.0 :011 > begin
2.7.0 :012 >   file = open("/item2")
2.7.0 :013 >   if file
2.7.0 :014 >     puts "File opened successfully"
2.7.0 :015 >   end
2.7.0 :016 > rescue
2.7.0 :017 >   fname = "item3"
2.7.0 :018 >   retry
2.7.0 :019 > end
