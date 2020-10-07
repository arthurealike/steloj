 set kernel_options no_blank_lines player1colors

  a=20
  b=59
  x=110
  y=50
  r=0
  l=1
  scorecolor=14
  ballheight=3

main
  COLUP0=$58
  COLUPF=$30
  COLUBK=$01
  
  f=f+1
  
  if r=0 then player0:
    %00000000
    %00000000
    %00000000
    %00000000
    %00000000
    %00000000
    %00000000
    %00000000
    %00011010
    %00000100
    %00001100
    %00001000
    %00000000
    %00000000
    %00000000
    %00000000    
end

  if r=2 then player0:
    %00000000
    %00000000
    %00000000
    %00000000
    %00000000
    %00000000
    %00000000
    %00000000
    %00001000
    %00001100
    %00000100
    %00011010
    %00000000
    %00000000
    %00000000
    %00000000
end

  if r=1 then player0:
    %00000000
    %00000000
    %00000000
    %00000000
    %00000000
    %00000000
    %00000000
    %00000000
    %00010000
    %00001100
    %00000110
    %00001100
    %00010000
    %00000000
    %00000000
    %00000000
end

  if r>7 then r=0
  if f>60 then score=score+1
  if f>60 then f=0
  r=1
  if y>70 then r=0
  if y<35 then r=2
  if switchreset then reboot
  
  player0x=a
  player0y=b
  ballx=x
  bally=y


  drawscreen

  rem  Make the ship move.
  
  if joy0right then x=x+1 
  if joy0left then x=x-1

  if joy0up then y=y-1
  if joy0down then y=y+1

  goto main
  
  

