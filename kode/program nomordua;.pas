program nomordua;

uses crt;

var
    N, i, angka, total: integer;
    rata: real;

begin
    clrscr;

    writeln('Masukkan jumlah angka (N): ');
    readln(N);

    total := 0;  

    for i := 1 to N do
    begin
        writeln('Masukkan angka ke-', i, ': ');
        readln(angka);
        total := total + angka;  
    end;
    rata := total / N;
    writeln('Jumlah Total: ', total);
    writeln('Rata-rata: ', rata:0:1);

    readln;
end.
