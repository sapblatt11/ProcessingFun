void setup(){
  Room r = new Room(1);
}

void draw() {
}

class Room
{
  private final int doors;
  private boolean[] doorPos;
  private IntDict compass;
  
  //0 is N, 1 is E, 2 is S, 3 is W
  Room(int doorCount)
  {
    compass = new IntDict();
    compass.set("N", 0);
    compass.set("E", 1);
    compass.set("S", 2);
    compass.set("W", 3);
    
    doors = doorCount;
    doorPos = new boolean[4];
    
    int i = 0;
    while(i < doorCount && doorCount <= 4)
    {
      int point = ((int) random(doorCount + 1));
      if(!doorPos[point])
      {
        doorPos[point] = true;
        i++;
      }
    }
    printArray(doorPos);
  }
  
  public boolean hasDoor(String loc)
  {
    return doorPos[compass.get(loc)];
  }
  
}

class Map
{
  private int roomCount;
  
  Map(int roomCount)
  {
    this.roomCount = roomCount;
  }
  
}
