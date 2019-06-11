int x = 0;
int y = 0;
int squaresize = 80;
int boardsize = 8;
int screenx = 0;
int screeny = 0;
int[][] board = new int[boardsize][boardsize];
int moves = 0;


void setup(){
  size(641,800);
  for (y = 0; y < boardsize; y ++){
    for(x = 0; x < boardsize; x ++){
      board[y][x] = int(random(0,2));
    }
  }
}

void draw(){
  background(255);
  fill(0);
  textSize(32);
  text("Moves: " + moves, 100,730);
  for (y = 0; y < boardsize; y ++){
    for(x = 0; x < boardsize; x ++){
      screenx = squaresize*x;
      screeny = squaresize*y;
      if(board[y][x] == 0){
        fill(#FF00C8);
      } else {
        fill(#00FF12);
      }
      rect(screenx, screeny, squaresize, squaresize);
    }
  }
}

void mouseReleased(){
  moves += 1;
  x = mouseX/squaresize;
  y = mouseY/squaresize;
  if(x < boardsize && y < boardsize){
    if(board[y][x] == 0){
      board[y][x] = 1;
    } else {
      board[y][x] = 0;
    }
  }
  if(x > 0){
    if(board[y][x-1] == 0){
      board[y][x-1] = 1;
    } else {
      board[y][x-1] = 0;
    }
  }
  if(x < boardsize-1){
    if(board[y][x+1] == 0){
      board[y][x+1] = 1;
    } else {
      board[y][x+1] = 0;
    }
  }
  if(y > 0){
    if(board[y-1][x] == 0){
      board[y-1][x] = 1;
    } else {
      board[y-1][x] = 0;
    }
  }
  if(y < boardsize-1){
    if(board[y+1][x] == 0){
      board[y+1][x] = 1;
    } else {
      board[y+1][x] = 0;
    }
  }
}