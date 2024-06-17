# Load the CSV file
real_estate <- read.csv("C:/Users/balakrishnan k s/Documents/R programs/real_estate.csv.csv")

# View the structure of the data frame
str(real_estate)

# Compute variance
for (i in 1:ncol(real_estate)){
  cat('\varience of',colnames(data)[i],'is:')
  print(var(real_estate[,i])
)
  
}
 
# Compute covariance
covariance <- cov(real_estate)

# Compute correlation
correlation <- cor(real_estate)

# Print the results


print("Covariance:")
print(covariance)

print("Correlation:")
print(correlation)
