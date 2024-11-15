Unit Compl;

Interface


Type Complex = record Re, Im: real end;
const n = 2;

procedure Add(Var u,v:Complex; Var w: Complex);
procedure Mult(Var u,v: Complex; Var w:Complex);
procedure Inv(Var z:complex; Var w:complex);
procedure Divz(u,v: Complex; Var w: Complex); 
procedure Codj(Var z:Complex; Var w:Complex);
procedure Prod(a:real; z:Complex; Var w:Complex);
procedure Zero(Var z:Complex);
procedure One(Var z:Complex);
function Modul(z: Complex): real; 

Var z,u,v,w: Complex;
Var a: Real;

Implementation 
procedure Add(Var u,v:Complex; Var w: Complex);
begin
  w.Re:= u.Re + v.Re;
  w.Im:= u.Im + v.Im;
end;

procedure Mult(Var u,v: Complex; Var w:Complex);
begin
  w.Re:= u.Re*v.Re-u.Im*v.Im;
  w.Im:= u.Re* v.Im-u.Im*v.Re;
end;

procedure Inv(Var z:complex; Var w:complex); 
Var q:real;
begin
  q:= sqr(z.Re) + sqr(z.Im);
  w.Re := z.Re/q;
  w.Im := -z.Im/q;
end;

procedure Divz(u,v: Complex; Var w: Complex);
Var z:Complex;
begin
  Inv(v,z); Mult(v,z,w);
end;

procedure Codj(Var z:Complex; Var w:Complex);
begin
  w.Re:= z.Re;
  w.Im:= -z.Im;
end;

procedure Prod(a:real; z:Complex; Var w:Complex);
begin
  w.Re:= a*z.Re;
  w.Im:= a*z.Im;
end;

procedure Zero(Var z:Complex);
begin
  z.Re:=0; z.Im:=0;
end;

procedure One(Var z:Complex);
begin
  z.Re:= z.Re*1; z.Im:= z.Im*1;
end;

function Modul (z: Complex): real;
begin
  Modul := sqrt(sqr(z.Re) + sqr(z.Im))
end;

end.