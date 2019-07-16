//num_a, num_bを使って正方形に可視化する
int num_a = 10;
int num_b = 6;

int scalar = 50;

int wd = 0;
int pos_x = 0;
int pos_y = 0;
int itr = 0;

void setup(){
  
  size(500, 500);
  
  num_a *= scalar;
  num_b *= scalar;
  wd = num_b;

  //ユーグリッド互除法を実行
  while(wd > 0){
    
    itr++;
    
    //itrが奇数の場合、x軸方向へ正方形を増やす
    if(itr % 2 == 1){
      
      //幅を足した場合、長方形を越えなければ実行
      while(pos_x + wd <= num_a){
        rect(pos_x, pos_y, wd, wd);
        pos_x += wd; //pos_xを更新
      }
      wd = num_a - pos_x; //wdを更新
      
    } else {
      
      //幅を足した場合、長方形を越えなければ実行
      while(pos_y + wd <= num_b){
        rect(pos_x, pos_y, wd, wd);
        pos_y += wd; //pos_yを更新
      }
      wd = num_b - pos_y; //wdを更新
      
    }
    
  }

}
