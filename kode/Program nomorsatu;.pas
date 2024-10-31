Program nomorsatu;
uses crt;
var
a, hari, y : string;
p, q, r, s, c, z, harga1, hasil, ab  : real;
x, i, t, diskon, l, e, ar, ac: integer;

begin
    clrscr;
    write ('Nama Anggota : ');
    readln (a);
    begin
        if (a ='-') then
        diskon := 0
        else
        diskon := 10;
    end;

    writeln ('');

    write ('Hari : ');
    readln (hari);

    if (hari = 'senin') then
    begin
    p := 0.9;
    q := 1;
    r := 1;
    s := 1;
    end
    else if (hari = 'selasa') then
    begin
    q := 0.95;
    p := 1;
    r := 1;
    s := 1;
    end
    else if (hari = 'rabu') then
    begin
    r :=  0.7;
    q := 1;
    p := 1;
    s := 1;
    end
    else if (hari = 'kamis') then
    begin
    s := 0.92;
    q := 1;
    r := 1;
    p := 1;
    end
    else
    begin
    writeln ('eror');
    end;
    
    writeln ('');
    writeln (' Jenis produk :');
    writeln ('1. eskrim         (Rp20.000)  / (Frozen food)');
    writeln ('2. jam tangan     (Rp100.000) / (Elektronik)');
    writeln ('3. pasta gigi     (Rp7.000)   / (Laktosa)');
    writeln ('4. sabun          (Rp16.000)  / (Hygiene) ');
    writeln ('');

    write ('Berapa jumlah jenis produk yang dibeli : '); readln (x);
    writeln ('');

    z := 0;
    l := 0;
    ac := 0;
    for i := 1 to x do
    begin
        writeln ('');
        write ('Nama jenis Produk        : ');
        readln (y);

        case y of
        'eskrim' : c := 20000 * q;
        'pasta gigi' : c := 7000 * s;
        'jam tangan' : c := 100000 * r;
        'sabun' : c := 16000 * p;
        end;

        write ('jumlah yang ingin dibeli : ') ;
        readln (t);
        ac := ac + t;
        harga1 := c * t;
        write ('Produk                   : '); write (t,' ', y,' Rp',harga1 : 3 : 0);
        writeln ('');
        z := z + harga1;
    end;

        l := ac div 10;
        ar := diskon + (l * 5);
        ab := 1 - ar/100; 
        hasil := z * ab;
        e := trunc (hasil/50000);

        WRITELN ('');
        writeln (' STRUK PEMBAYARAN ');
        writeln ('=====================');
        Writeln ('');
        writeln ('HARGA AWAL          : Rp', z : 3 : 0);
        writeln ('DISKON              : ',diskon,'%',' + ', l * 5,'%',' = ',ar,'%');
        writeln ('HARGA AKHIR / TOTAL : Rp',hasil : 3 : 0);
        writeln ('Poin                : ',e);
        writeln ('');

    if e >= 50 then
    writeln ('anda mendapatkan voucher diskon 20% untuk produk apa saja')
    else
    writeln ('');

    

end.

