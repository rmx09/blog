#!/usr/bin/env ruby
#
# Check for changed posts and update last modified date

Jekyll::Hooks.register :posts, :post_init do |post|
  # Get the number of commits for the post
  commit_num = `git rev-list --count HEAD "#{post.path}"`.to_i

  # If there are more than one commit, update last modified date
  if commit_num > 1
    # Get the last modification date of the post
    lastmod_date = `git log -1 --pretty="%ad" --date=iso "#{post.path}"`

    # Update the last modified date in post data
    post.data['last_modified_at'] = lastmod_date
  end
end

