# PA2
# Kensea Jordan
# 5/21/2026
# Studying vectors, matrices, and arrays

# a. Create two vectors representing the populations for the years 2000 and 2010. Then, use
# cbind to create a 4x2 population matrix from these two vectors.

year2000 <- c(4447100, 626932, 5130632, 2673400)
year2010 <- c(4779735, 710231, 6329013, 2915921)

popm <- matrix(cbind(year2000, year2010), nrow = 4, ncol = 2)
print(popm)

# b. Using element extraction with vector operations create a vector that contains the
# percentage increase in population for each state between 2000 and 2010.
# • Hint: Use this formulat: (2010 value - 2000 value) / 2000 value

alabamaPopIncrease <- (popm[1,2] - popm[1,1]) / popm[1,1]
print(alabamaPopIncrease)

alaskaPopIncrease <- (popm[2,2] - popm[2, 1]) / popm[2, 1]
print(alaskaPopIncrease)
print((year2010[2] - year2000[2]) / year2000[2])

arizonaPopIncrease <- (popm[3,2] - popm[3,1]) / popm[3,1]
print(arizonaPopIncrease)
print((year2010[3] - year2000[3]) / year2000[3])

arkansasPopIncrease <- (popm[4,2] - popm[4,1]) / popm[4,1]
print(arkansasPopIncrease)
print((year2010[4] - year2000[4]) / year2000[4])

popIncrease <- c(alabamaPopIncrease, alaskaPopIncrease, arizonaPopIncrease, arkansasPopIncrease)
print(popIncrease)

# c. Use the percentage increase vector from step b and continuing to use element extraction
# with vector operations, calculate a new vector that predicts the populations for the year
# 2020. • Hint: Use this formula: 2010 value * (1 + percentage increase value).

alabama2020 <- popm[1,2] * (1 + popIncrease[1])
alaska2020 <- popm[2,2] * (1 + popIncrease[2])
arizona2020 <- popm[3,2] * (1 + popIncrease[3])
arkansas2020 <- popm[4,2] * (1 + popIncrease[4])

popIncr2020 <- c(alabama2020, alaska2020, arizona2020, arkansas2020)
print(popIncr2020)

# d. Use cbind to add the estimated 2020 population vector to the population matrix. Overwrite
# the original matrix object with this new one.

popm <- cbind(popm, popIncr2020)
print(popm)



