/*
* Guess a number between 1 and 100.
* Don't enter values that aren't integers :)
*/
// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly guess
{
//  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
//  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
//                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module guess.exe
// MVID: {BFAEE59D-CD15-4E6C-90E8-213819C4064C}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x00000000003D0000


.class public auto ansi beforefieldinit Guess.Guess
       extends [mscorlib]System.Object
{

  .method public hidebysig static void  Main(string[] args) cil managed
  {
    .entrypoint
    .maxstack  8
    .locals init (class [mscorlib]System.Random r,
    int32 val)
    newobj instance void [mscorlib]System.Random::.ctor()
    dup
    stloc.0
    ldc.i4 1
    ldc.i4 100
    call    instance int32 [mscorlib]System.Random::Next(int32, int32)
    stloc.1
    ldstr   "The magic number is: {0}"
    ldloc.1
    box int32
    call    void [mscorlib]System.Console::WriteLine(string, object)
    ldloc.1
    call void Guess.Guess::Guess(int32)
    ret
  } // end of method Guess::Main

  .method public hidebysig static void Guess(int32 val) cil managed 
  {
    .maxstack 8
    .locals init (int32 guess)
    GUESS: ldstr "Guess a number between 1 and 100: "
    call void [mscorlib]System.Console::Write(string)
    call string [mscorlib]System.Console::ReadLine()
    call int32 [mscorlib]System.Convert::ToInt32(string)
    dup
    stloc.0
    ldarg.0
    cgt 
    brtrue HIGH 
    ldloc.0
    ldarg.0
    ceq
    brfalse LOW
    br DONE
    LOW: ldstr "You guessed low. Try again."
    call    void [mscorlib]System.Console::WriteLine(string)
    br GUESS
    HIGH: ldstr "You guessed high. Try again."
    call    void [mscorlib]System.Console::WriteLine(string)
    br GUESS
    DONE: ldstr "You guessed it!"
    call  void [mscorlib]System.Console::WriteLine(string)
    ret
  }

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    ldarg.0
    call       instance void [mscorlib]System.Object::.ctor()
    ret
  } 

} 
