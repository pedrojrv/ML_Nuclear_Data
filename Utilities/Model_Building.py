from sklearn import tree
from sklearn.tree import plot_tree
from sklearn.tree import DecisionTreeRegressor

def train_tree(max_depth, x_train, y_train):
	xs_tree = tree.DecisionTreeRegressor(max_depth=max_depth)
	xs_tree.fit(x_train, y_train)
	print("The depth of the three is: ", xs_tree_2.get_depth())

	xs_test_pred = xs_tree_2.predict(x_test)
	print("Testing MSE: ", mean_squared_error(xs_test_pred, y_test))
	print("Testing R2-Score: ", r2_score(xs_test_pred, y_test))