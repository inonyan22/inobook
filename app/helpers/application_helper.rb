module ApplicationHelper
  def picture_img(topic)
    return image_tag(topic.image_url)
  end
end
