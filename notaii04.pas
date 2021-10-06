{$mode objfpc}{$H-}{$R+}{$T+}{$Q+}{$V+}{$D+}{$X-}{$warnings on}
program nota_ii;

function hace_media(compensable, entrega, teoria, prac: real): boolean;
begin
    result :=  (entrega >= compensable) and (teoria >= compensable)
            and (prac >= compensable)
end;

function media(peso_entrega, peso_teoria, peso_prac, entrega, teoria, 
               prac: real): real;
begin
    result := entrega * peso_entrega + teoria * peso_teoria + 
                  prac * peso_prac
end;

const  // Constantes locales del cuerpo del programa principal
    Compensable: real = 4.5;

    { Peso relativo de cada apartado de la evaluación, en tanto por uno}
    Peso_entrega: real = 0.25;    { Entrega prácticas }
    Peso_teoria: real = 0.35;    { Examen teórico }
    Peso_prac: real = 0.40;   { Examen práctico }

    Entrega_jperez : real = 9.0;
    Teoria_jperez: real = 9.0;
    Prac_jperez: real = 9.5;

begin
    write('Nota final: ');
    if (hace_media( Compensable, Entrega_jperez, Teoria_jperez, Prac_jperez))
    then writeln( media(Peso_entrega, Peso_teoria, Peso_prac, Entrega_jperez,
            Teoria_jperez, Prac_jperez):0:2)
    else writeln( 'No apto' );
end.
