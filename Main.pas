Uses Compl, Crt;

const n = 2;
Type Matrix = array[1 .. n, 1 .. n] of Complex;
var a, b, c: Matrix;
var z, u, v, w: Complex;
var k: integer;

procedure Output(var a: Matrix; k: integer);
begin
  var i, j: integer;
end;

Begin
  {readln(u.Re); readln(u.Im);}
  GoToXY(40,10);  readln(z.Re);
  GoToXY(40,10);  //clearline;
  
  GoToXY(44,10);  readln(z.Im);
  GoToXY(44,10);  //clearline;
  
  Zero(z);
  writeln(z.Re); writeln(z.Im);
End.