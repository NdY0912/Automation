class Pages::Ulschapter < SitePrism::Page
  element :chapter, "body.voyager.chapters:nth-child(2) div.app-container.expanded.no-animation:nth-child(2) div.row.content-container div.container-fluid:nth-child(5) div.side-body.padding-top div.container-fluid:nth-child(1) div.page-title-header div.text-nowrap:nth-child(2) a.btn.btn-success.btn-add-new > span:nth-child(2)"
  element :chp_name, "#name"
  element :subject_in_chapter, :xpath, "/html[1]/body[1]/div[2]/div[2]/div[2]/div[1]/div[2]/form[1]/div[1]/div[1]/div[1]/div[1]/div[2]/span[1]/span[1]/span[1]"
  element :math, :xpath, "/html[1]/body[1]/span[1]/span[1]/span[2]/ul[1]/li[2]"
  element :phy, :xpath, "/html[1]/body[1]/span[1]/span[1]/span[2]/ul[1]/li[3]"
  element :chem, :xpath, "/html[1]/body[1]/span[1]/span[1]/span[2]/ul[1]/li[4]"
  element :bio, :xpath, "/html[1]/body[1]/span[1]/span[1]/span[2]/ul[1]/li[4]"
  element :chp_code, "#content_code"
  element :grade, :xpath, "/html[1]/body[1]/div[2]/div[2]/div[2]/div[1]/div[2]/form[1]/div[1]/div[1]/div[1]/div[1]/div[4]/span[1]/span[1]/span[1]"
  element :grade_pos_1, :xpath, "/html[1]/body[1]/span[1]/span[1]/span[2]/ul[1]/li[1]"
  element :chp_description, "#description"
  element :chp_save, :xpath, "/html[1]/body[1]/div[2]/div[2]/div[2]/div[1]/div[2]/form[1]/div[2]/button[1]"
  element :chp_cancel, :xpath, "/html[1]/body[1]/div[2]/div[2]/div[2]/div[1]/div[2]/form[1]/div[2]/a[1]"

  def chapter_details
    chp_name.set "Trees"
    subject_in_chapter.click
    math.click
    chp_code.set "chp001"
    grade.click
    grade_pos_1.click
    chp_description.set "Trees are cool"
    chp_save.click
    sleep 5
  end

end