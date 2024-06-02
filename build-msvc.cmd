del hello.o hello.exe
del insn-flags.h insn-config.h insn-codes.h insn-output.c insn-recog.c 
del insn-emit.c insn-extract.c insn-peep.c 
del  c-parse.tab.c c-parse.output cexp.tab.c  cexp.output
del genemit.exe genoutput.exe genrecog.exe genextract.exe genflags.exe 
del gencodes.exe genconfig.exe genpeep.exe cc1.exe cpp.exe cccp.exe xgcc.exe
del *.co *.greg *.lreg *.combine *.flow *.cse *.jump *.rtl *.tree *.loop
del *.obj *.o
del libgcc.lib

cl /c /Fotoplev.obj toplev.c
cl /c /Foversion.obj version.c
\xdjgpp.v1\bin\bison -v c-parse.y
cl /c c-parse.tab.c
cl /c /Fotree.obj tree.c
cl /c /Foprint-tree.obj print-tree.c
cl /c /Foc-decl.obj c-decl.c
cl /c /Foc-typeck.obj c-typeck.c
cl /c /Fostor-layout.obj stor-layout.c
cl /c /Fofold-const.obj fold-const.c
cl /c /Fortl.obj rtl.c
cl /c genflags.c
cl /c /Foobstack.obj obstack.c
cl /Fegenflags genflags.obj rtl.obj obstack.obj 
genflags md > insn-flags.h
cl /c gencodes.c
cl /Fegencodes gencodes.obj rtl.obj obstack.obj 
gencodes md > insn-codes.h
cl /c genconfig.c
cl /Fegenconfig genconfig.obj rtl.obj obstack.obj 
genconfig md > insn-config.h
cl /c /Foexpr.obj expr.c
cl /c /Fostmt.obj stmt.c
cl /c /Foexpmed.obj expmed.c
cl /c /Foexplow.obj explow.c
cl /c /Fooptabs.obj optabs.c
cl /c /Fovarasm.obj varasm.c
cl /c /Fosymout.obj symout.c
cl /c /Fodbxout.obj dbxout.c
cl /c /Fosdbout.obj sdbout.c
cl /c /Foemit-rtl.obj emit-rtl.c
cl /c genemit.c
cl /Fegenemit genemit.obj rtl.obj obstack.obj 
genemit md > insn-emit.c
cl /c insn-emit.c
cl /c /Fointegrate.obj integrate.c
cl /c /Fojump.obj jump.c
cl /c /Focse.obj cse.c
cl /c /Foloop.obj loop.c
cl /c /Foflow.obj flow.c
cl /c /Fostupid.obj stupid.c
cl /c /Focombine.obj combine.c
cl /c /Foregclass.obj regclass.c
cl /c /Folocal-alloc.obj local-alloc.c
cl /c /Foglobal-alloc.obj global-alloc.c
cl /c /Foreload.obj reload.c
cl /c /Foreload1.obj reload1.c
cl /c genpeep.c
cl /Fegenpeep genpeep.obj rtl.obj obstack.obj 
genpeep md > insn-peep.c
cl /c insn-peep.c
cl /c /Fofinal.obj final.c
cl /c /Forecog.obj recog.c
cl /c genrecog.c
cl /Fegenrecog genrecog.obj rtl.obj obstack.obj 
genrecog md > insn-recog.c
cl /c insn-recog.c
cl /c genextract.c
cl /Fegenextract genextract.obj rtl.obj obstack.obj 
genextract md > insn-extract.c
cl /c insn-extract.c
cl /c genoutput.c
cl /Fegenoutput genoutput.obj rtl.obj obstack.obj 
genoutput md > insn-output.c
cl /c /D__STDC__ insn-output.c
cl /Fecc1 toplev.obj version.obj c-parse.tab.obj tree.obj print-tree.obj c-decl.obj c-typeck.obj stor-layout.obj fold-const.obj rtl.obj expr.obj stmt.obj expmed.obj explow.obj optabs.obj varasm.obj symout.obj dbxout.obj sdbout.obj emit-rtl.obj insn-emit.obj integrate.obj jump.obj cse.obj loop.obj flow.obj stupid.obj combine.obj regclass.obj local-alloc.obj global-alloc.obj reload.obj reload1.obj insn-peep.obj final.obj recog.obj insn-recog.obj insn-extract.obj insn-output.obj obstack.obj 


@REM cl -DGCC_INCLUDE_DIR=\"/usr/local/lib/gcc-include\" ^
@REM    -DGPLUSPLUS_INCLUDE_DIR=\"/usr/local/lib/g++-include\" /c cccp.c
cl -DGCC_INCLUDE_DIR=\"/xenixnt/h\" ^
   -DGPLUSPLUS_INCLUDE_DIR=\"/xenixnt/h\" /c cccp.c
\xdjgpp.v1\bin\bison -v cexp.y
ren cexp.tab.c cexp.c
cl /c cexp.c
cl /c /Foversion.obj version.c
cl /Fecpp cccp.obj cexp.obj version.obj


@REM cl /c -DSTANDARD_EXEC_PREFIX=\"/usr/local/lib/gcc-\" gcc.c
cl /c -DSTANDARD_EXEC_PREFIX=\"/xenixnt/bin/gcc-\" gcc.c
cl /c /Foobstack.obj obstack.c
cl /Fexgcc gcc.obj version.obj obstack.obj

del insn-flags.h insn-config.h insn-codes.h insn-output.c insn-recog.c 
del insn-emit.c insn-extract.c insn-peep.c 
del  c-parse.tab.c c-parse.output cexp.tab.c  cexp.output
del genemit.exe genoutput.exe genrecog.exe genextract.exe genflags.exe 
del gencodes.exe genconfig.exe genpeep.exe
del *.co *.greg *.lreg *.combine *.flow *.cse *.jump *.rtl *.tree *.loop
del *.obj *.o

xgcc -O -I. -c -DL_eprintf -o _eprintf.o gnulib.c
xgcc -O -I. -c -DL_umulsi3 -o _umulsi3.o gnulib.c
xgcc -O -I. -c -DL_mulsi3 -o _mulsi3.o gnulib.c
xgcc -O -I. -c -DL_udivsi3 -o _udivsi3.o gnulib.c
xgcc -O -I. -c -DL_divsi3 -o _divsi3.o gnulib.c
xgcc -O -I. -c -DL_umodsi3 -o _umodsi3.o gnulib.c
xgcc -O -I. -c -DL_modsi3 -o _modsi3.o gnulib.c
xgcc -O -I. -c -DL_lshrsi3 -o _lshrsi3.o gnulib.c
xgcc -O -I. -c -DL_lshlsi3 -o _lshlsi3.o gnulib.c
xgcc -O -I. -c -DL_ashrsi3 -o _ashrsi3.o gnulib.c
xgcc -O -I. -c -DL_ashlsi3 -o _ashlsi3.o gnulib.c
xgcc -O -I. -c -DL_divdf3 -o _divdf3.o gnulib.c
xgcc -O -I. -c -DL_muldf3 -o _muldf3.o gnulib.c
xgcc -O -I. -c -DL_negdf2 -o _negdf2.o gnulib.c
xgcc -O -I. -c -DL_adddf3 -o _adddf3.o gnulib.c
xgcc -O -I. -c -DL_subdf3 -o _subdf3.o gnulib.c
xgcc -O -I. -c -DL_cmpdf2 -o _cmpdf2.o gnulib.c
xgcc -O -I. -c -DL_fixunsdfsi -o _fixunsdfsi.o gnulib.c
xgcc -O -I. -c -DL_fixunsdfdi -o _fixunsdfdi.o gnulib.c
xgcc -O -I. -c -DL_fixdfsi -o _fixdfsi.o gnulib.c
xgcc -O -I. -c -DL_fixdfdi -o _fixdfdi.o gnulib.c
xgcc -O -I. -c -DL_floatsidf -o _floatsidf.o gnulib.c
xgcc -O -I. -c -DL_floatdidf -o _floatdidf.o gnulib.c
xgcc -O -I. -c -DL_truncdfsf2 -o _truncdfsf2.o gnulib.c
xgcc -O -I. -c -DL_extendsfdf2 -o _extendsfdf2.o gnulib.c
xgcc -O -I. -c -DL_addsf3 -o _addsf3.o gnulib.c
xgcc -O -I. -c -DL_negsf2 -o _negsf2.o gnulib.c
xgcc -O -I. -c -DL_subsf3 -o _subsf3.o gnulib.c
xgcc -O -I. -c -DL_cmpsf2 -o _cmpsf2.o gnulib.c
xgcc -O -I. -c -DL_mulsf3 -o _mulsf3.o gnulib.c
xgcc -O -I. -c -DL_divsf3 -o _divsf3.o gnulib.c

del gnulib.lib
lib /OUT:gnulib.lib _adddf3.o _addsf3.o _ashlsi3.o _ashrsi3.o _cmpdf2.o _cmpsf2.o _divdf3.o ^
_divsf3.o _divsi3.o _eprintf.o _extendsfdf2.o _fixdfdi.o _fixdfsi.o _fixunsdfdi.o ^
_fixunsdfsi.o _floatdidf.o _floatsidf.o _lshlsi3.o _lshrsi3.o _modsi3.o _muldf3.o ^
_mulsf3.o _mulsi3.o _negdf2.o _negsf2.o _subdf3.o _subsf3.o _truncdfsf2.o ^
_udivsi3.o _umodsi3.o _umulsi3.o

del *.o

xgcc -c hello.c
link /NODEFAULTLIB:libc.lib /NODEFAULTLIB:OLDNAMES.LIB  -out:hello.exe hello.o -entry:mainCRTStartup gnulib.lib LIBC.LIB KERNEL32.LIB

