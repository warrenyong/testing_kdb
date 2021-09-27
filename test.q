//Run using: q <scriptname> <iterationnumber> <evaluation type>
//iterationnumber is a number e.g. 100, 1000, 10000, etc./
//evaluation type is a choice between speed or length
//E.g. q test.q 10000 speed

//#############################################Submissions############################################//
//Name1
name1q:{ceiling a[2]+all a:(|/;&/;&/)@'(<;<>;%).\:x};
k)name1k:{-_-a[2]+(&/)@a:(|/;&/;&/)@'(<;~=;%).\:x};

//Error Sample
//err:{"a"+1};

//Error Sample 2
//err2:{(1 2)*1 3 2};

//Error Sample 3
//err3:{(1 2). 1 3 2};
//##########################################Suggested Test Cases######################################//

//#############################################Test Cases#############################################//
//Validation Test cases
fqi:((4;1 3); (12;3 4 5); (5;5); (10;15 4); (7;6 7 8); (1000000000;3); (10;15 4); (53;82 93 63 89 20 62 99 24 97 1); (999999733;25 68 91 55 36 29 96 4 63 3); (1000000000;15 8 22 12 10 16 2 17 14 7 20 23 9 18 3 19 21 11 1));
//fqi,:enlist[tc1],enlist tc2;
fqo:2 3 1 2 1 333333334 2 2 10416664 43478261;
//fqo,:tco1,tco2;

//#######################################Stress Test Cases#############################################//
.fq.tc:flip 200 cut'(1000?00001b;1000?0b);
.fq.str:{system"t:",first[.z.x]," ",string[x]," each .fq.tc"}each;

func:system"f";

funcc:func fqind:where fqo~/:fqc:{{@[value;x;::]}[x," each fqi"]}each string func;
l1:l2:count[func]#0Wi;

.fq.sf:{system"t:",first[.z.x]," ",string[x]," each fqi"}each;
.fq.lf:{$["k)"~2#x:string get x;-4+count x;-2+count x]}each;
l1[fqind]:.fq.sf funcc;
l2[fqind]:.fq.lf funcc;

show"Evaluation Type: ",last .z.x;show"Iterations: ",first .z.x;show res:$[`;lower last .z.x] xasc([]submission:func;speed:l1;length:l2;output:fqc);

//Reference Card
//fqi = FunQ input
//fqo = FunQ output
//func = functions defined in script
//funcc = functions which match outputs(fqo) based on inputs(fqi)
//fqc = error trapped outputs of function run
//fqind = indexes where funcc
//.fq.sf = FunQ speed test
//.fq.lf = FunQ length test
//l1 = list of speeds for each function
//l2 = list of lengths for each function