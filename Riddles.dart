import 'dart:io';
import 'dart:math';

class Question {
  String question;
  String answer;
  int correct;
  String chReply;
  Question(this.question, this.answer, this.correct, [this.chReply = ""]);
}

void main() {
  List<Question> questions = [
    Question(
        "What has to be broken before you can use it?\n1. An egg \n2. A yam \n3. Tin \n4. Printer",
        "An egg",
        1),
    Question(
        "I’m tall when I’m young, and I’m short when I’m old. What am I?\n1. A candle \n2. A woman \n3. A man \n4. Grass",
        "A candle",
        1),
    Question(
        "What month of the year has 28 days?\n1. February \n2. All of them \n3. March \n4. Decade",
        "All of them",
        2),
    Question(
        "What is full of holes but still holds water?\n1. A cup \n2. A cloth \n3. Books \n4. A sponge",
        "A sponge",
        4),
    Question(
        "What question can you never answer yes to?\n1. Are you eating? \n2. Are you walking? \n3. Are you asleep yet? \n4. What are you doing? ",
        "Are you asleep yet?",
        3),
    Question(
        "What is always in front of you but can’t be seen?\n1. Stomach \n2. The future \n3. Hair \n4. Air",
        "The future",
        2),
    Question(
        "What can you break, even if you never pick it up or touch it?\n1. A cup \n2. Glass \n3. Ceramics \n4. A promise",
        "A promise",
        4),
    Question(
        "What goes up but never comes down?\n1. Your age \n2. Air \n3. A bird \n4. A rocket",
        "Your age",
        1),
    Question(
        "A man who was outside in the rain without an umbrella or hat didn’t get a single hair on his head wet. Why?\n1. He wore a hat \n2. He was under a shade \n3. He was bald \n4. It wasn't raining",
        "He was bald",
        3),
    Question(
        "What gets wet while drying?\n1. A pot hole\n2. A towel \n3. A cloth \n4. A cow",
        "A towel",
        2),
    Question(
        "What can you keep after giving to someone?\n1. Your cake \n2. Your word \n3. Poem \n4. CLoth",
        "Your word",
        2),
    Question(
        "I shave every day, but my beard stays the same. What am I?\n1. A student \n2. A pig \n3. An old man \n4. A barber",
        "A barber",
        4),
    Question(
        "You walk into a room that contains a match, a kerosene lamp, a candle and a fireplace. What would you light first?\n1. The match \n2. The candle \n3. The Lamp \n4. A torch",
        "The match",
        1),
    Question(
        "A man dies of old age on his 25 birthday. How is this possible?\n1. He was born in the 90's \n2. He forgot his birthday\n3. He was born on February 29 \n4. Nothing",
        "He was born on February 29",
        3),
    Question(
        "I have branches, but no fruit, trunk or leaves. What am I?\n1. A dead tree \n2. A bank \n3. A bamboo tree \n4. Cotton",
        "A bank",
        2),
    Question(
        "What can’t talk but will reply when spoken to?\n1. An echo \n2. A silent person \n3. A dog \n4. A cat",
        "An echo",
        1),
    Question(
        "The more of this there is, the less you see. What is it?\n1. Darkness \n2. Light \n3. Blindness \n4. Color",
        "Darkness",
        1),
    Question(
        "David’s parents have three sons: Snap, Crackle, and what’s the name of the third son?\n1. Snap \n2. Crackle \n3. Goliath \n4. David",
        "David",
        4),
    Question(
        "I follow you all the time and copy your every move, but you can’t touch me or catch me. What am I?\n1. Copy cat \n2. Your pet \n3. Your Shadow \n4. Your thoughts",
        "Your Shadow",
        3),
    Question(
        "What has many keys but can’t open a single lock?\n1. Old key \n2. No key \n3. A piano \n4. Blue key",
        "A piano",
        3),
    Question(
        "What can you hold in your left hand but not in your right?\n1. A mic \n2. Your right elbow \n3. Your food \n4. Popcorn",
        "Your right elbow",
        2),
    Question(
        "What is black when it’s clean and white when it’s dirty?\n1. Crude oil \n2. Asphalt road \n3. Printer ink \n4. A chalkboard",
        "A chalkboard",
        4),
    Question(
        "What gets bigger when more is taken away?\n1. A hole \n2. Empty space \n3. Sand \n4. Water",
        "A hole",
        1),
    Question(
        "I’m light as a feather, yet the strongest person can’t hold me for five minutes. What am I?\n1. Sand \n2. Your breath \n3. Fearther \n4. Snake",
        "Your breath",
        2),
    Question(
        "I’m found in socks, scarves and mittens; and often in the paws of playful kittens. What am I?\n1. Dirt \n2. Oil \n3. Coakroach \n4. Yarn",
        "Yarn",
        4),
    Question(
        "Where does today come before yesterday?\n1. US \n2. The dictionary \n3. Chinese calendar \n4. Ethiopian calendar",
        "The dictionary",
        2),
    Question(
        "What invention lets you look right through a wall?\n1. A window \n2. A magic wall \n3. A moft paint \n4. A cyrilic",
        "A window",
        1),
    Question(
        "If you’ve got me, you want to share me; if you share me, you haven’t kept me. What am I?\n1. Food \n2. A secret \n3. Your cake \n4. Water",
        "A secret",
        2),
    Question(
        "What can’t be put in a saucepan?\n1. It’s lid \n2. Oil \n3. Salt \n4. Detergent",
        "It’s lid",
        1),
    Question(
        "What goes up and down but doesn’t move?\n1. Air \n2. Earth \n3. A staircase \n4. A tree",
        "A staircase",
        3),
    Question(
        "If you’re running in a race and you pass the person in second place, what place are you in?\n1. You won \n2. First Place \n3. Ahead \n4. Second place",
        "Second place",
        4),
    Question(
        "It belongs to you, but other people use it more than you do. What is it?\n1. Your smile \n2. Your name \n3. Your Ideas \n4. Your advice",
        "Your name",
        2),
    Question(
        "What can fill a room but takes up no space?\n1. Water \n2. Bed \n3. Light \n4. Mat",
        "Light",
        3),
    Question(
        "If you drop me I’m sure to crack, but give me a smile and I’ll always smile back. What am I?\n1. A mirror \n2. A cat \n3. A baby \n4. A dog",
        "A mirror",
        1),
    Question(
        "What can run but never walks, has a mouth but never talks, has a head but never weeps, has a bed but never sleeps?\n1. A fighting so;dier \n2. A man \n3. A snail \n4. A river",
        "A river",
        4),
    Question(
        "What is so fragile that saying its name breaks it?\n1. Air \n2. Lips \n3. Silence \n4. Thin air",
        "jkmig",
        3),
    Question(
        "What goes through cities and fields, but never moves?\n1. Air \n2. Trees \n3. A road \n4. Internet",
        "A road",
        3),
    Question(
        "People make me, save me, change me, raise me. What am I?\n1. A baby \n2. Money \n3. A Pet \n4. A shirt",
        "Money",
        2),
    Question(
        "What breaks yet never falls, and what falls yet never breaks?\n1. A cat \n1. Air \n2. Water \n3. A promise \n4. Day, and night",
        "Day, and night",
        4),
    Question(
        "I turn once, what is out will not get in. I turn again, what is in will not get out. What am I?\n1. A security man \n2. A key \n3. A door \n4. A bank door",
        "A key",
        2),
    Question(
        "The more you take, the more you leave behind. What are they?\n1. Footsteps \n2. Sand \n3. Water \n4. Advice",
        "Footsteps",
        1),
    Question(
        "What has lots of eyes, but can’t see?\n1. A potato \n2. millipede \n3. A centipede \n4. A blind ant",
        "A potato",
        1),
    Question(
        "What has one eye, but can’t see?\n1. A blind man \n2. A snail \n3. A pin \n4. A needle",
        "A needle",
        4),
    Question(
        "What has many needles, but doesn’t sew?\n1. A lazy tailor \n2. Spoilt sewing machine \n3. A Christmas tree \n4. A decoration",
        "A Christmas tree",
        3),
    Question(
        "What has hands, but can’t clap?\n1. A clock \n2. A toddler \n3. A beer \n4. A tree",
        "A clock",
        1),
    Question(
        "What has legs, but doesn’t walk?\n1. A tree \n2. A table \n3. A robot \n4. A Ladder",
        "A table",
        2),
    Question(
        "What has one head, one foot and four legs?\n1. A turtle \n2. T-rex \n3. A bed \n4. A dinosaur",
        "A bed",
        3),
    Question(
        "What can you catch, but not throw?\n1. Fire \n2. Oil \n3. Thought \n4. A cold",
        "A cold",
        4),
    Question(
        "What kind of band never plays music?\n1. A rubber band \n2. The soalky band \n3. A blue band \n4. Dj band",
        "A rubber band",
        1),
    Question(
        "What has many teeth, but can’t bite?\n1. Humans \n2. Ant \n3. A lizard \n4. A comb",
        "A comb",
        4),
    Question(
        "What is cut on a table, but is never eaten?\n1. Plastic \n2. Glass \n3. Wire \n4. A deck of cards",
        "A deck of cards",
        4),
    Question(
        "What has words, but never speaks?\n1. A snail \n2. Audio dictionary \n3. A book \n4. Emotions",
        "A book",
        3),
    Question(
        "What runs all around a backyard, yet never moves?\n1. Flowers \n2. Land \n3. A fence \n4. Sunlight",
        "A fence",
        3),
    Question(
        "What can travel all around the world without leaving its corner?\n1. A stamp \n2. A flag \n3. Air \n4. Current",
        "A stamp",
        1),
    Question(
        "What has a thumb and four fingers, but is not a hand?\n1. A feet \n2. A chimpazee \n3. A crocodile \n4. A glove",
        "A glove",
        4),
    Question(
        "What has a head and a tail but no body?\n1. A snake \n2. A coin \n3. A millipede \n4. A jellyfish",
        "A coin",
        2),
    Question(
        "Where does one wall meet the other wall?\n1. On the building \n2. At the cross-section \n3. At the hinges \n4. On the corner",
        "On the corner",
        4),
    Question(
        "What building has the most stories?\n1. The twin tower \n2. The taipei \n3. The library \n4. A skyscraper",
        "The library",
        3),
    Question(
        "What tastes better than it smells?\n1. A pepper \n2. Your tongue \n3. A ginger \n4. A garlic",
        "Your tongue",
        2),
    Question(
        "What has 13 hearts, but no other organs?\n1. A deck of cards \n2. A toad \n3. An oyster \n4. A jellyfish",
        "A deck of cards",
        1),
    Question(
        "It stalks the countryside with ears that can’t hear. What is it?\n1. Trees \n2. Fish \n3. Corn \n4. Beans",
        "Corn",
        3),
    Question(
        "What kind of coat is best put on wet?\n1. A coat of paint \n2. A hard coat \n3. Proper coat \n4. Oil coat",
        "A coat of paint",
        1),
    Question(
        "What has a bottom at the top?\n1. A pot \n2. Your legs \n3. Your head \n4. A banana",
        "Your legs",
        2),
    Question(
        "What has four wheels and flies?\n1. A flying car \n2. A dream \n3. A bus \n4. A garbage truck",
        "A garbage truck",
        4),
  ];
  print(
      "Welcome!\nReady for the riddles? Lets get started!\nPlease leave your answers in numbers(1, 2, 3, or 4).");
  List<int> mainList = [];
  int numQ = 10;
  var rnd = new Random();
  String? playAgain;
  do {
    List<int> wrngList = [];
    int score = 0;
    for (int i = 1; i <= numQ; i++) {
      int n;
      do {
        n = rnd.nextInt(questions.length);
      } while (mainList.contains(n));
      wrngList.add(n);
      mainList.add(n);
      var qst = questions[n];
      String txt = qst.question;
      print("$i) $txt");
      int? rpl = int.parse(stdin.readLineSync()!);
      int crt = qst.correct;
      String ans = qst.answer;
      if (rpl == crt) {
        score++;
        qst.chReply = "You got the correct answer.";
      } else
        qst.chReply = "Wrong! The correct answer is option $crt, '$ans'.";
    }
    print("Completed! Let's see how well you did.");
    for (int i in wrngList) {
      var mssg = questions[i].chReply;
      int num = wrngList.indexOf(i) + 1;
      print("$num) $mssg");
    }
    print("Your Total Score is $score/$numQ.");
    if (mainList.length > questions.length - 3) mainList.clear;
    print("Do you want to play again? (y/n): ");
    playAgain = stdin.readLineSync()!;
  } while (playAgain.toLowerCase() == "y");
  print("Thanks for playing!");
}

//Riddle source: https://parade.com/947956/parade/riddles/
