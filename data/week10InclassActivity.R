require(palmerpenguins)
dat_ade = droplevels(subset(penguins, species == "Adelie"))
hist(dat_ade$body_mass_g, main = "Adelie Penguins: Body Mass", xlab = "body mass (g)")
boxplot(penguins$body_mass_g~ sex, data = penguins)
sex_f = droplevels(subset(dat_ade, sex == "female"))
sex_m = droplevels(subset(dat_ade, sex == "male"))
t.test(sex_f$body_mass_g, mu = 0)


