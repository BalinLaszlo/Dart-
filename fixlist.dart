void main(){

// 1 .Feladat
List<int> fixlist = List.filled(10, 0);
for (int i =0; i< fixlist.length; i+=2){
  fixlist[i]=i;
}
print(fixlist);
// 2 .Feladat
List<int> masodik =[];
for(int i=0; i<10 ;i++){
  masodik.add(i%2);
}
print(masodik);
// 3 .Feladat
List <int> fibolist = [0,1];
while(fibolist.last + fibolist[fibolist.length-2]<30){
  fibolist.add(fibolist.last + fibolist[fibolist.length-2]);
  
}
print(fibolist);
// 4 .Feladat
print('A hossza :${fibolist.length}');
print('Az első elem :${fibolist.first}');
print('Az utsoló elem :${fibolist.last}');
print('A 3. elem :${fibolist[3]}');
print('A 8. indexű:${fibolist.indexOf(8)}');
print('A lista fordítva :${fibolist.reversed.toList()}');
print('Nem üres-e :${fibolist.isNotEmpty}');
fibolist.replaceRange(0,fibolist.length,[]);
print('A lista üres e  :${fibolist.isEmpty}');
fibolist.add(34);
print(fibolist);
fibolist.addAll([1,2,3,5,8]);
print(fibolist);
fibolist.insertAll(fibolist.indexOf(34),[0,1]);
print(fibolist);
fibolist.replaceRange(fibolist.length-1,fibolist.length,[8,13,21]);
print(fibolist);
fibolist.remove(fibolist[0]);
print(fibolist);




}