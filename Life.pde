int x_max = 1100;
int y_max = 1000;
int x_steps;
int y_steps;
int step_size = 2;
int timeIncrement = 5;
cell cells[][];
cell temp[][];

void setup() {
  size(1100, 1000);
  background(0);
  colorMode(RGB, 100);
  
  x_steps = x_max / step_size;
  y_steps = y_max / step_size;
  
  cells = new cell[x_steps+2][y_steps+2];
  
  // set every cell to be alive at start
  for (int i = 0; i < x_steps+2; i++) {
    for (int j = 0; j < y_steps+2; j++) {
      cells[i][j] = new cell(1);
    }
  }
  
  //// X-Axis bullshit mcgee
  //int start_x = x_steps / 2;
  //int start_y = y_steps / 2;
  
  //cells[start_x][start_y+2].state = 1;
  //cells[start_x+1][start_y+2].state = 1;
  //cells[start_x+1][start_y].state = 1;
  //cells[start_x+3][start_y+1].state = 1;
  //cells[start_x+4][start_y+2].state = 1;
  //cells[start_x+5][start_y+2].state = 1;
  //cells[start_x+6][start_y+2].state = 1;
  
  //cells[start_x][start_y+2] = new cell(1); //<>//
  //cells[start_x+1][start_y+2] = new cell(1);
  //cells[start_x+1][start_y] = new cell(1);
  //cells[start_x+3][start_y+1] = new cell(1);
  //cells[start_x+4][start_y+2] = new cell(1);
  //cells[start_x+5][start_y+2] = new cell(1);
  //cells[start_x+6][start_y+2] = new cell(1);
  
  
  //start_x = (int) ((x_steps) * (1.0 / 3) - 3);
  //start_y = y_steps / 2 - 1;
  
  //cells[start_x][start_y+2] = new cell(1);
  //cells[start_x+1][start_y+2] = new cell(1);
  //cells[start_x+1][start_y] = new cell(1);
  //cells[start_x+3][start_y+1] = new cell(1);
  //cells[start_x+4][start_y+2] = new cell(1);
  //cells[start_x+5][start_y+2] = new cell(1);
  //cells[start_x+6][start_y+2] = new cell(1);
  
  //start_x = x_steps - 25;
  //start_y = y_steps / 2 - 1;
  
  //cells[start_x][start_y+2] = new cell(1);
  //cells[start_x+1][start_y+2] = new cell(1);
  //cells[start_x+1][start_y] = new cell(1);
  //cells[start_x+3][start_y+1] = new cell(1);
  //cells[start_x+4][start_y+2] = new cell(1);
  //cells[start_x+5][start_y+2] = new cell(1);
  //cells[start_x+6][start_y+2] = new cell(1);
  
  
  //start_x = 25;
  //start_y = y_steps / 2 - 1;
  
  //cells[start_x][start_y+2] = new cell(1);
  //cells[start_x+1][start_y+2] = new cell(1);
  //cells[start_x+1][start_y] = new cell(1);
  //cells[start_x+3][start_y+1] = new cell(1);
  //cells[start_x+4][start_y+2] = new cell(1);
  //cells[start_x+5][start_y+2] = new cell(1);
  //cells[start_x+6][start_y+2] = new cell(1);
  
  
  //// Y-Axis bukllshit
  //start_x = x_steps / 2 - 3;
  //start_y = (int) (y_steps * (1.0 / 3) - 1);
  
  //cells[start_x][start_y+2] = new cell(1);
  //cells[start_x+1][start_y+2] = new cell(1);
  //cells[start_x+1][start_y] = new cell(1);
  //cells[start_x+3][start_y+1] = new cell(1);
  //cells[start_x+4][start_y+2] = new cell(1);
  //cells[start_x+5][start_y+2] = new cell(1);
  //cells[start_x+6][start_y+2] = new cell(1);
  
  
  //start_x = x_steps / 2 - 3;
  //start_y = (int) (y_steps * (2.0 / 3) - 1);
  
  //cells[start_x][start_y+2] = new cell(1);
  //cells[start_x+1][start_y+2] = new cell(1);
  //cells[start_x+1][start_y] = new cell(1);
  //cells[start_x+3][start_y+1] = new cell(1);
  //cells[start_x+4][start_y+2] = new cell(1);
  //cells[start_x+5][start_y+2] = new cell(1);
  //cells[start_x+6][start_y+2] = new cell(1);
  
  
  //start_x = x_steps / 2 - 3;
  //start_y = y_steps - 25;
  
  //cells[start_x][start_y+2] = new cell(1);
  //cells[start_x+1][start_y+2] = new cell(1);
  //cells[start_x+1][start_y] = new cell(1);
  //cells[start_x+3][start_y+1] = new cell(1);
  //cells[start_x+4][start_y+2] = new cell(1);
  //cells[start_x+5][start_y+2] = new cell(1);
  //cells[start_x+6][start_y+2] = new cell(1);
  
  //start_x = x_steps / 2 - 3;
  //start_y = 25;
  
  //cells[start_x][start_y+2] = new cell(1);
  //cells[start_x+1][start_y+2] = new cell(1);
  //cells[start_x+1][start_y] = new cell(1);
  //cells[start_x+3][start_y+1] = new cell(1);
  //cells[start_x+4][start_y+2] = new cell(1);
  //cells[start_x+5][start_y+2] = new cell(1);
  //cells[start_x+6][start_y+2] = new cell(1);
  
}

void draw() {
  int sum;
 //<>//
  for (int i = 1; i < x_steps - 1; i++) {
    for (int j = 1; j < y_steps - 1; j++) {
      sum = check_neighbors(i, j);
      
      if (cells[i][j].getState() == 1 && (sum == 2 || sum == 3)) {

        cells[i][j].setState(1);
      }
      else if(cells[i][j].getState() == 0 && sum == 3) {
        cells[i][j].setState(1);
      }
      else {
        cells[i][j].setState(0);
      }
    }
  }
  
  for (int i = 1; i < x_steps - 1; i++) {
    for (int j = 1; j < y_steps - 1; j++) {
      cells[i][j].confirmState();
      if (cells[i][j].getState() == 1) {
        cells[i][j].time = 0;
        //fill(100, 100, 100);
      }
      else {
        if (cells[i][j].time == -1) {
          fill(0, 0, 0);
          square(i * step_size, j * step_size, step_size);
          continue;
        }
        cells[i][j].time += timeIncrement;
        if (cells[i][j].time <= 30) {
           fill(90 - cells[i][j].time, cells[i][j].time, 90 - cells[i][j].time / 2);
        }
        else if (cells[i][j].time <= 60) {
           fill(60 - (cells[i][j].time - 30), 30, 75 - (cells[i][j].time - 30));
        }
        else if (cells[i][j].time <= 90) {
           fill(30 - (cells[i][j].time - 60) / 2, 30 + (cells[i][j].time - 60) * 2, 45 + (cells[i][j].time - 60) * 1.3333);
        }
        else if (cells[i][j].time <= 120) {
           fill(15 + (cells[i][j].time - 90) * 2.5, 90, 85 - (cells[i][j].time - 90) * 1.5);
        }
        else if (cells[i][j].time <= 200) {
           fill(100 - (cells[i][j].time - 120) / 8, 90 - (cells[i][j].time - 120) , 40 - (cells[i][j].time - 120) / 4);
        }
        else if (cells[i][j].time <= 260) {
           fill(90 - (cells[i][j].time - 200) / 2, 10 + (cells[i][j].time - 200) / 3, 20 + (cells[i][j].time - 200));
        }
        else {
          cells[i][j].time = 35;
        }

    }
    square(i * step_size, j * step_size, step_size);
      
    }
 }

  delay(5); //<>//
}

int check_neighbors(int i, int j) {
  return cells[i-1][j].getState() + cells[i+1][j].getState() +
         cells[i][j-1].getState() + cells[i][j+1].getState() +
         cells[i-1][j-1].getState() + cells[i+1][j+1].getState() +
         cells[i-1][j+1].getState() + cells[i+1][j-1].getState();
}

class cell {
  int state = 0;
  int newState = 0;
  int time = -1;
  
  cell(int state) {
    this.state = state;
  }
  void setState(int state) {
    this.newState = state;
  }
  void confirmState() {
    this.state = this.newState;
  }
  
  int getState() {
    return this.state;
  }
}
