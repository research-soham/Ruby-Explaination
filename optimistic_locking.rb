# Optimistic Locking: In optimistic locking, you assume that conflicts between concurrent transactions are rare. Each record has a version number, and when a record is loaded, the version number is also loaded. When an update is performed, ActiveRecord checks if the version number in the database matches the one in memory. If they match, the update proceeds; if not, it indicates that another process has modified the record, and a conflict resolution strategy must be implemented.
# Assuming you have a model named Article with a 'title' attribute and a 'version' attribute
class Article < ApplicationRecord
  # Enable optimistic locking
  self.implicit_order_column = "version"

  # Assuming 'title' is a column in your database table
  validates :title, presence: true
end

# In this example, the version column is used for optimistic locking. When you retrieve an article from the database, the version is loaded along with other attributes. When you update the article, ActiveRecord automatically checks if the version in the database matches the one in memory before updating. If there's a mismatch, it raises an ActiveRecord::StaleObjectError exception, indicating that the record has been modified by another process.

# Load an article from the database
article = Article.find(1)

# Another process modifies the article's title
article_another_process = Article.find(1)
article_another_process.update(title: "New Title")

# Meanwhile, in the current process, attempt to update the article
article.update(title: "Updated Title")
# This line will raise ActiveRecord::StaleObjectError because the version has changed since it was loaded
