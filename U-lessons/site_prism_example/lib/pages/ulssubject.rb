
class Pages::Ulssubject < SitePrism::Page
  element :subject, "body.voyager.subjects:nth-child(2) div.app-container.expanded.no-animation:nth-child(2) div.row.content-container div.container-fluid:nth-child(5) div.side-body.padding-top div.container-fluid:nth-child(1) div.page-title-header div.text-nowrap:nth-child(2) > a.btn.btn-success.btn-add-new:nth-child(1)"
  element :sub_name, "#name"
  element :code, "#content_code"
  element :language, "body.voyager.subjects:nth-child(2) div.app-container.expanded.no-animation:nth-child(2) div.row.content-container div.container-fluid:nth-child(5) div.side-body.padding-top div.page-content.container-fluid:nth-child(3) form.form-edit-add div.row:nth-child(2) div.col-md-8 div.panel.panel-bordered div.panel-body div.form-group:nth-child(3) span.select2.select2-container.select2-container--default span.selection > span.select2-selection.select2-selection--single"
  element :lang, :xpath, "/html[1]/body[1]/span[1]/span[1]/span[2]/ul[1]/li[2]"
  element :grade, :xpath, "//ul[@class='select2-selection__rendered']"
  element :grade1, :xpath, "/html[1]/body[1]/span[1]/span[1]/span[1]/ul[1]/li[2]"
  element :grade2, :xpath, "/html[1]/body[1]/span[1]/span[1]/span[1]/ul[1]/li[3]"
  element :grade3, :xpath, "/html[1]/body[1]/span[1]/span[1]/span[1]/ul[1]/li[4]"
  element :grade4, :xpath, "/html[1]/body[1]/span[1]/span[1]/span[1]/ul[1]/li[5]"
  element :grade5, :xpath, "/html[1]/body[1]/span[1]/span[1]/span[1]/ul[1]/li[6]"
  element :grade6, :xpath, "/html[1]/body[1]/span[1]/span[1]/span[1]/ul[1]/li[7]"
  element :grade7, :xpath, "/html[1]/body[1]/span[1]/span[1]/span[1]/ul[1]/li[8]"
  element :grade8, :xpath, "/html[1]/body[1]/span[1]/span[1]/span[1]/ul[1]/li[9]"
  element :grade9, :xpath, "/html[1]/body[1]/span[1]/span[1]/span[1]/ul[1]/li[10]"
  element :grade10, :xpath, "/html[1]/body[1]/span[1]/span[1]/span[1]/ul[1]/li[11]"
  element :grade11, :xpath, "/html[1]/body[1]/span[1]/span[1]/span[1]/ul[1]/li[12]"
  element :grade12, :xpath, "/html[1]/body[1]/span[1]/span[1]/span[1]/ul[1]/li[13]"


  element :theme, :xpath, "//body[@class='voyager subjects']/div[@class='app-container expanded no-animation']/div[@class='row content-container']/div[@class='container-fluid']/div[@class='side-body padding-top']/div[@class='page-content container-fluid']/form[@class='form-edit-add']/div[@class='row']/div[@class='col-md-8']/div[@class='panel panel-bordered']/div[@class='panel-body']/div[5]/span[1]/span[1]/span[1]"
  element :math, :xpath, "/html[1]/body[1]/span[1]/span[1]/span[2]/ul[1]/li[2]"
  element :physics, :xpath, "/html[1]/body[1]/span[1]/span[1]/span[2]/ul[1]/li[3]"
  element :chemistry, :xpath, "/html[1]/body[1]/span[1]/span[1]/span[2]/ul[1]/li[4]"
  element :biology, :xpath, "/html[1]/body[1]/span[1]/span[1]/span[2]/ul[1]/li[5]"

  element :save,"body.voyager.subjects:nth-child(2) div.app-container.expanded.no-animation:nth-child(2) div.row.content-container div.container-fluid:nth-child(5) div.side-body.padding-top div.page-content.container-fluid:nth-child(3) form.form-edit-add div:nth-child(3) > button.btn.btn-danger.btn-lg.min-width.save:nth-child(1)"
  element :confirm, "body.voyager.subjects:nth-child(2) div.app-container.expanded.no-animation:nth-child(2) div.row.content-container nav.navbar.navbar-default.navbar-fixed-top.navbar-top:nth-child(1) div.container-fluid div.navbar-header ol.breadcrumb.hidden-xs li:nth-child(2) > a:nth-child(1)"

  def subject_details
    sub_name.set 'Social Science'
    code.set '000215n'

  end

end

