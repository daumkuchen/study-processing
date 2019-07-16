//aとbに対してユークリッド互除法を行う
int a = 10;
int b = 5;
int c; //商を格納
int d = b; //余りを格納
int itr = 0; //反復回数

void setup(){
  
  //余りが0以上の時に実行
  while(d > 0){
    
    itr++;
    
    c = a / b; //cに商を代入
    d = a % b; //dに余りを代入
    
    println(itr, ":", a, "/", b, "=", c, "...", d);
    
    a = b;
    b = d;
    
  }
  
  println("GCD is", a);
  
}
