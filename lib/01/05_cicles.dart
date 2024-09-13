void main() {
  for(int i = 0; i < 10; i++) {
    print("I - $i");

    if(i == 2) {
      break;
    } else {
      continue;
    }
  }

  while(true) {
    print("WHILE");
  }
}