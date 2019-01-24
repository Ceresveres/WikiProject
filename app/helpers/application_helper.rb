module ApplicationHelper
	def nav_items
    [
      {
        url: root_path,
        title: 'Home'
      },
      {
        url: wikis_path,
        title: 'Your Wikipedias'
      }
    ]
  end

	def nav_helper style
    nav_links = ''

    nav_items.each do |item|
      nav_links << "<a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a>"
    end

    nav_links.html_safe
  end

  def active? path
    "active" if current_page? path
  end

  def login_helper style = ''
  	if current_user
  		"<a href='#{destroy_user_session_path}' rel='nofollow' data-method='delete' class='#{style}'>Logout</a>".html_safe
  	else
  		"<a href='#{new_user_registration_path}' class='#{style}'>Register</a>".html_safe + " ".html_safe +
  		"<a href='#{user_session_path}' class='#{style}'>Login</a>".html_safe
    end
  end
end
