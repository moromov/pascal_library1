Uses Crt, Compl, CMatrix, RVect, CVect;
Var Mode: integer; OK: boolean;

begin
  OK := True;
  while OK do
  begin
    ClrScr;
    wrireln('Укажите режим');
    wrireln('Комплексные числа');
    wrireln('Комплексные матрицы');
    wrireln('Векторы');
    wrireln('Комплексные векторы');
    GOTOXY(40, 20);
    readln(Mode);
    GOTOXY(40, 20);
    clearline;
    case Mode of
      Menu Compl;
      Menu CMatrix;
      Menu RVect;
      Menu CVect;
      OK := False
      else 
      begin
        GOTOXY('Ошибка! Повторить ввод!');
        sleep(1000)
      end;
    end;
  end;
end.
