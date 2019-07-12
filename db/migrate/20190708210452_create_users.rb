class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.string :bio
      t.string :image, default: "https://lh3.googleusercontent.com/xy9Ic_O02EN1h7YL9gVErfnm1vhqGCMwBacqM_j8-rpcG4HY2IYtW_cnzIuL8CBuUlO8JBwaDZQWuDFsIy8j4inXvvN2IO9Wn_FPuePYKNzkIoLnLN6AsmqNqRpBMRYVRV5I4JX9v7ebJU2fjO-RIkOb9QCEviufzjmjeUk0ESKVo-px6xm9TGrcpglZ5RWXW_FUcHwINp-9VXR_VLoBd8FjAYjXfK5uOqjR7K0iMTjsOh7XfNznwOBVKVypITWVwpzKCRmt8QyZQepId4yPZqMnIpnfJ3vvzXHPT_TRR9pUgSDwq4QNh0lpUo3f9kmWzCe2cxE6uKD2In4AWn1NAR38oLidmLjv-gkTWObbonjOEV5xV_2wl9dXzwLV4R0DBJQpr-m8OgmIhU91WFzQXlqDAqgz8TZgJZ0sDfesHoo8yF5to2AxG2NLnfIcK_hGGIAsh3ftLEy2QZfKClDEyqmULJHynJJ4TdP3NEum0y0mjqhbW5DgE5YOvLktkP1PXqBKsdRqg6DLN_4YdA1NUwYHbuU48-fO3JI1xRcP21n_QcPIBZ7tIxoO5Da_Zu4Lq6Jl-BqdiKCx_GrmqoGimV9tAgCBIBysrYQ57S1BSjfM6BsLKey2q5MGnkrh6h35UjZvCjYeNJJiY26DTxj5B1WGrbWa75J0OQHJOj7-zfcYQEMrlHtIkuVjbDfvDXrrg4ztxG9OAfc3wxwe8TQzuEs2=w612-h792-no"

      t.timestamps
    end
  end
end
