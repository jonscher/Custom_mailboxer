class Mailboxer::MessageBuilder < Mailboxer::BaseBuilder

  protected

  def klass
    Mailboxer::Message
  end

  def subject
    params[:subject] || default_subject
  end
  def listing_id
    params[:listing_id] || default_listing_id
  end
  def default_listing_id
    "#{params[:conversation].listing_id}"
  end
  def default_subject
    "#{params[:conversation].subject}"
  end
end
