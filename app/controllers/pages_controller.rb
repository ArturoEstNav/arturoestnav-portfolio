class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @projects = Project.all
    @icons = {  javascript: "portfolio-icon-09_zntfta",
                postgresql: "portfolio-icon-08_m8lrci",
                html: "portfolio-icon-07_hrlmo6",
                rails: "portfolio-icon-06_tqfoih",
                heroku: "portfolio-icon-01_r0a8pf",
                ruby: "portfolio-icon-05_fd8edc",
                css: "portfolio-icon-03_jlxhse",
                git: "portfolio-icon-02_bpkjvi" }
  end
end
