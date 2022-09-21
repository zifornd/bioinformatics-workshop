library(Biostrings)

FUN <- function(s) as.character(sapply(DNAStringSet(s), sample)[[1]])

query <- "GCTACGTACGATCTTACTACT"

permute <- replicate(1000, FUN(query))

reference <- "GCCACGTGCGATTGTACTGCTTGACCT"

query_score <- pairwiseAlignment(query, reference)
query_score <- query_score@score

permute_score <- pairwiseAlignment(permute, reference)
permute_score <- permute_score@score

df <- data.frame(score = permute_score)

gg <- ggplot(df, aes(score, after_stat(count))) +
  geom_density() +
  geom_vline(xintercept = query_score, colour = "red") +
  labs(x = "Alignment score", y = "Frequency") +
  theme_bw()

ggsave("score_density.png", plot = gg, width = 4, height = 3)
