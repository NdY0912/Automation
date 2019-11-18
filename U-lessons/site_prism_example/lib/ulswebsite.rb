class Ulswebsite

	def uls_home_page
		Pages::Ulshomepage.new
	end

	def uls_sign_in_page
		Pages::Ulssigninpage.new
  end

  def uls_subject_create
    Pages::Ulssubject.new
  end

	def uls_chapter_create
		Pages::Ulschapter.new
	end
end
