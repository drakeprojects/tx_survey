
```r
# Create a data frame
txst_facts_24 <- data.frame(
  Category = c(
  "pop", 
  "pop_in",
  "pop_rate",
  "dr_in",
  "dr_rate",
  "int_stu",
  "int_rate",
  "new_stu",
  "ns_rate",
  "first_yr",
  "top_25",
  "top_rate",
  "tex_stu",
  "tex_rate",
  "states",
  "countries",
  "counties",
  "aid",
  "pell",
  "pell_rate",
  "first_app",
  "frstapp_rate",
  "transfer_stu",
  "transfer_rate",
  "avg_transfer_gpa",
  "acc_transfer"),
  Count = c(
  40678,
  1805,
  0.46,
  136,
  0.225,
  1525,
  0.61,
  12328,
  0.046,
  8165,
  3480,
  0.426,
  7709,
  0.94,
  41,
  23,
  193,
  3750,
  3817,
  0.466,
  45157,
  0.42,
  2829,
  0.054,
  3.12,
  708)
)

# Print the data frame
print(txst_facts_24)

```