################################################################################
nGen <- c(
	61,
	31,
	8,
	118,
	23,
	40,
	2,
	20,
	12,
	34,
	5,
	11,
	1,
	20,
	5,
	4,
	3,
	50,
	13,
	20,
	2
)

# the names attribute
names(nGen) <- c(
	"Canidae",
	"Ursidae",
	"Ailuridae",
	"Mustelidae",
	"Hyaenidae",
	"Felidae",
	"Allodesminae",
	"Viverridae",
	"Herpestidae",
	"Amphicyonidae",
	"Miacidae",
	"Nimravidae",
	"Palaeogalidae",
	"Procyonidae",
	"Barbourofelidae",
	"Mephitidae",
	"Percrocutidae",
	"Phocidae",
	"Otariidae",
	"Odobenidae",
	"Desmatophocidae"
)


# median number of genera in a family?
median(nGen)

# Only on vectors!
sort(nGen)

# the other direction
sort(nGen, decreasing=TRUE)

# character sorting
sort(letters, decreasing=TRUE)


################################################################################
# Ordering 

# returns the indices of the values that would be in ascending order
order(nGen)

# the same result as that of sort
nGen[order(nGen)]


# We can use order to sort entire tables
sort(car3$family)

# order based on the family
order(car3$family)

# the actually sorted table
famSort <- car3[order(car3$family), ]

