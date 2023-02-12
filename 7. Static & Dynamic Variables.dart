// Static & Dynamic Variables

// If the variable is dynamic then each class instance has its own set of variables
// means if one instance has a particular value then the other instance value of the same class can be different

// But if the variable is static then only one version of the variable data is saved on the memory
// and all the class instance that use this variable will use only one kind from the memory so thr value will be persistant

class Epic
{
  var status = 0; //dynamic or regular variable
  static var staticS = 0; //static variable
  epicFun()
  {
    status++;
    staticS++;
    
    print('status: $status & staticS: $staticS');
  }
  
}
void main() {
  
  print("E1");
  Epic e = new Epic();
  
  e.epicFun();
  e.epicFun();
  e.epicFun();
  
  print("E2"); 
  Epic e2 = new Epic();
  
  e2.epicFun();
  e2.epicFun();
  e2.epicFun();
}
