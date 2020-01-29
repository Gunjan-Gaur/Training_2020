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

