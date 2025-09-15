void main(){
  print('1. Feladat');
int intValue=6;
double doubleValue=0.6;
String strValue='valami';
bool boolValue=false;

 print('2. Feladat');
double osszeadas=intValue+doubleValue;
print("Az egész számos összeadás tizedes:$osszeadas");
print("Az összeadás egész számmá alakítva :$osszeadas.toInt()");
double kivonas=intValue-doubleValue;
print(kivonas.toString());
print("A kivonás:$kivonas");
double szorzas=intValue*doubleValue;
print("A szorzás:$szorzas");
double osztas=intValue/doubleValue;
print("Az osztás:$osztas");
 print('3. Feladat');
 bool boolResult=true;
 print("Itt van a $boolResult");
  print('4. Feladat');
double osszes=osszeadas*szorzas*kivonas*osztas;

  print("Ez lesz a " "$osszes");
print("Második feladat sor ");

String vers="""Ha vendég jő, legyen helye,  
asztalodra friss kenyere.  
Szeretetből fő a leves,  
ettől lesz a ház meleg
""";
print(vers.toLowerCase());
print(vers.toUpperCase());
print(vers.trim());
print(vers.replaceAll(',', '-'));
print('...' + vers.substring(4));
print(vers.codeUnits.take(3).join(','));
print(vers.substring(9)+'...');





}