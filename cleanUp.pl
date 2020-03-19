use strict;
use POSIX;


# Create locations
my @places = (
"pineTree", "largeStone", "blueHouse", "church", "pub", 
"boat", "smallStone", "bridge", "ashTree", "beach", "oakTree", 
"waterTower", "bellTower", "harbour", "ferryPort", "busStop", 
"library", "giftShop", "lab", "cafe", "bikeShop", "bikePath", 
"lake", "piratesCove", "parrotShop", "prostheticShop", 
"ophthalmologist", "rumBarrel", "sailMakers", "plankMaker", 
"swordShop", "lightHouse", "newsAgent"
);

my @people = (
"a grad student", "an aardvark", "my supervisor", "Trinity", "Polly", "Margaret Oakley Dayhoff", 
"a herd of wildebeest", "The Dude", "the love of my life"
);

my $person = $people[ rand @people ];
my $place = $places[ rand @places ];
print "Deleting stuff. I once met ".$person." in that ".$place.". I have these memories from my life. None of them happened. What does that mean?\n";

# Delete each directory
foreach my $place (@places){
    if (-e $place){
        my $result = system("rm -rf $place");
    }
}
my $firstClue = 'Clue01_S.txt';
if (-e $firstClue){
    my $result = system("rm $firstClue");
}