set cardName;

param cardValue {cardName};
param baseFive {cardName};

var cardCount {i in cardName} >= 0, <= 4, integer;

minimize 52_Card_Sum: (52 - sum {i in cardName} cardValue[i]*cardCount[i])^2;

s.t. Card_Sum:
	sum {i in cardName} cardCount[i] <= 52;