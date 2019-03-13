# Lesson 1: Random Forests

## Definitions
**Structured data**: Columns representing a wide range of different types of things such as identifier, currency, date, size
**Unstructured data**: Images

## Dataset and tools
- “Bull Book for Bulldozers” Kaggle competition
- scikit-learn

## Random Forest
1. It can predict something that can be of any kind — it could be a category (classification), a continuous variable (regression).
2. It can predict with columns of any kind — pixels, zip codes, revenues, etc (i.e. both structured and unstructured data).
3. It does not generally overfit too badly, and it is very easy to stop it from overfitting.
4. You do not need a separate validation set in general. It can tell you how well it generalizes even if you only have one dataset.
5. It has few, if any, statistical assumptions. It does not assume that your data is normally distributed, the relationship is linear, or you have specified interactions.
6. It requires very few pieces of feature engineering. For many different types of situation, you do not have to take the log of the data or multiply interactions together.

## Other issues
- Overfitting and underfitting