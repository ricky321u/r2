module UsersHelper
  # back to user gravator
  def gravator_for(user)
    gravator_id  = Digest::MD5::hexdigest(user.email.downcase)
    gravator_url = "https://secure.gravator.com/avatar/#{gravator_id}"
    image_tag(gravator_url, alt: user.name, class: "gravator")
  end
end
