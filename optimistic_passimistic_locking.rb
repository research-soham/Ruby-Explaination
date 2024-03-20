# Optimistic Locking: Optimistic locking assumes that conflicts between concurrent transactions are rare. It works by checking if the record has been modified by another process since it was loaded. If there are no conflicts, the transaction proceeds; otherwise, an error is raised, and the transaction needs to be retried.
class Product < ApplicationRecord
  # Assuming 'version' is a column in the products table for optimistic locking
  validates :name, presence: true
end

# Controller action
def update
  @product = Product.find(params[:id])
  if @product.update(product_params)
    # Update successful
  else
    # Handle conflict (optimistic locking error)
  end
end


# Pessimistic Locking: Pessimistic locking is more cautious and locks the record in the database immediately when it's accessed for modification. This prevents other transactions from modifying the same record until the lock is released.
class Product < ApplicationRecord
  # Assuming 'locked_at' is a column in the products table for pessimistic locking
end

# Controller action
def update
  @product = Product.find(params[:id])
  @product.with_lock do
    # Perform updates within the lock
    if @product.update(product_params)
      # Update successful
    else
      # Handle update failure
    end
  end
end


# In summary, optimistic locking assumes conflicts are rare and checks for modifications before committing, while pessimistic locking acquires locks upfront to prevent concurrent modifications. Both approaches have their use cases depending on the concurrency requirements of your application.
