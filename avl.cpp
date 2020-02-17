#include <iostream>

using namespace std;

struct Node 
{
  Node* left;
  Node* right;

  int value;
  int height;

  Node(int value)
  {
    this->value = value;
    left = right = nullptr;
    height = 1;
  }
};

class AVL
{
public:
  int get_height(Node* node);
  Node* updateHeight(Node* node);
  Node* insert(Node* root, int value);
  Node* leftRotate(Node* root);
  Node* rightRotate(Node* root);
  void preorder_traversal(Node* root);
};

int AVL::get_height(Node* node)
{
  if (node == nullptr)
    return 0;

  return node->height;
}

Node* AVL::updateHeight(Node* node)
{
  node->height = 1 + max(get_height(node->left), get_height(node->right));
  return node;
}

Node* AVL::insert(Node* root, int value)
{
  if (root == nullptr)
    return new Node(value);

  if (root->value < value)
    root->right = insert(root->right, value);
  else if (root->value == value)
    return root;
  else
    root->left = insert(root->left, value);

  root = updateHeight(root);

  int balance_factor = get_height(root->left) - get_height(root->right);

  if (balance_factor > 1 && root->left->value < value) {
    root->left = leftRotate(root->left);
    return rightRotate(root);
  }

  else if (balance_factor > 1 && root->left->value > value)
    return rightRotate(root);

  else if (balance_factor < -1 && root->right->value < value)
    return leftRotate(root);

  else if (balance_factor < -1 && root->right->value > value) {
    root->right = rightRotate(root->right);
    return leftRotate(root);
  }

  return root;
}

Node* AVL::leftRotate(Node* root)
{
  Node* x = root->right;
  Node* t = x->left;

  root->right = t;
  x->left = root;

  x = updateHeight(x);
  root = updateHeight(root);

  return x;
}

Node* AVL::rightRotate(Node* root)
{
  Node *x = root->left;
  Node *t = x->right;

  root->left = t;
  x->right = root;

  root = updateHeight(root);
  x = updateHeight(x);

  return x;
}

void AVL::preorder_traversal(Node* root)
{
  if (root->left != nullptr)
    preorder_traversal(root->left);

  cout << root->value << " ";

  if (root->right != nullptr)
    preorder_traversal(root->right);
}

int main()
{
  AVL tree;
  Node* root = nullptr;

  root = tree.insert(root, 10);
  root = tree.insert(root, 20);
  root = tree.insert(root, 30);
  root = tree.insert(root, 40);
  root = tree.insert(root, 50);
  root = tree.insert(root, 25);

  tree.preorder_traversal(root);

  return 0;
}
