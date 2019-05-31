voo(sao_paulo,mexico,gl0,7:30,(mesmo,17:30),0,gol,[qua,sex,sab,dom]).
voo(sao_paulo,nova_york,g11,6:20,(mesmo,16:20),0,gol,[ter,sex,dom]).
voo(sao_paulo,lisboa,g12,15:30,(dia_seguinte,5:20),0,gol,[seg,ter,sex,dom]).
voo(sao_paulo,madrid,gl3,8:25,(mesmo,20:25),0,gol,[qua,dom]).
voo(sao_paulo,londres,gl4,8:25,(dia_seguinte,8:25),1,gol,[seg,qui]).
voo(sao_paulo,paris,gl5,18:55,(dia_seguinte,7:35),0,gol,[ter,sex]).
voo(mexico,nova_york,ax0,10:00,(mesmo,15:00),0,aeromexico,[seg,qua,sex,dom]).
voo(mexico,madrid,axl5,4:00,(mesmo,16:00),0,aeromexico,[seg,qua,sex,dom]).
voo(nova_york,londres,g23,22:30,(dia_seguinte,6:30),0,gol,[seg,qua,sex,dom]).
voo(londres,lisboa,ltl0,6:00,(mesmo,8:35),0,lufthansa,[seg,ter,qua,qui,sex,sab,dom]).
voo(londres,paris,ltl4,7:20,(mesmo,9:35),0,lufthansa,[seg,ter,qua,qui,sex,sab,dom]).
voo(londres,estocolmo,ltl8,7:05,(mesmo,10:35),0,lufthansa,[seg,ter,qua,quin,sex,sab,dom]).
voo(madrid,paris,ltl2,6:00,(mesmo,8:05),0,lufthansa,[seg,ter,qua,quin,sex,sab,dom]).
voo(madrid,roma,ltl5,7:05,(mesmo,9:30),0,lufthansa,[seg,ter,qua,quin,sex,sab,dom]).
voo(madrid,frankfurt,lt46,7:35,(mesmo,9:35),0,lufthansa,[seg,ter,qua,quin,sex,sab,dom]).

voo(frankfurt,estocolmo,ltl9,10:20,(mesmo,12:25),0,lufthansa,[seg,ter,qua,quin,sex,sab,dom]).

voo(frankfurt,roma,ltl3,10:45,(mesmo,12:35),0,lufthansa,[seg,ter,qua,quin,sex,sab,dom]).

achaDias(X,[X|Cauda]).
achaDias(X,[Cabeca|Cauda]):-
    achaDias(X,Cauda).

voo_direto(Saida,Chegada,Companhia,Dia,Horario):-
    voo(Saida,Chegada,_,Horario,(_,_),0,Companhia,L),
    achaDias(Dia,L).


clear :-
    format('~c~s~c~s', [0x1b, "[H", 0x1b, "[2J"]).


