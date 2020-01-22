a=0,b=0,c=1
d=gets.chomp.to_i
for i in 1..d
  a=b
  b=c
  c=a+b
  p a
end