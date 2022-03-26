initiate_split_data <- function(){
   ### SPLITTING DATA
formulaone_train <<- training(formulaone_split)

formulaone_test <<- testing(formulaone_split) 
}

initiate_linear_regression <- function(){
   formulaone_spec <<- linear_reg() %>%
  set_engine("lm") %>%
  set_mode("regression")

formulaone_recipe <<- recipe(milliseconds ~ lap, data = formulaone_train)

formulaone_fit <<- workflow() %>%
  add_recipe(formulaone_recipe) %>%
  add_model(formulaone_spec) %>%
  fit(data = formulaone_train)

formulaone_test_results <<- formulaone_fit %>%
  predict(formulaone_test) %>%
  bind_cols(formulaone_test) %>%
  metrics(truth = milliseconds, estimate = .pred) %>%
  filter(.metric == "rmse")
    
formulaone_test_results
    
formulaone_plot_final <<- ggplot(formulaone_train, aes(x = lap, y = milliseconds)) +
  geom_point(alpha = 0.4) +
  xlab("Lap") +
  ylab("Milliseconds") +
  geom_smooth(method = "lm", se = FALSE) +
  theme(text = element_text(size = 12))
formulaone_plot_final
}

