class PostJob < ApplicationJob
  #self.queue_adapter = :solid_queue 
  # queue_as :default
  def perform(*args)
    # Do something later
    posts = Post.where(status:  :accepted)
    print("Processing Posts to destroy \n")
    posts.each do |post|
      if(post.time_expired)
        print("Deleted #{post.destroy}")
        post.destroy
      end
    end
  end
end
