require 'spec_helper'

describe PagesController do

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  end

  describe "GET 'howitworks'" do
    it "should be successful" do
      get 'howitworks'
      response.should be_success
    end
  end

  describe "GET 'faq'" do
    it "should be successful" do
      get 'faq'
      response.should be_success
    end
  end

  describe "GET 'privacy'" do
    it "should be successful" do
      get 'privacy'
      response.should be_success
    end
  end

  describe "GET 'termsofsale'" do
    it "should be successful" do
      get 'termsofsale'
      response.should be_success
    end
  end

  describe "GET 'termsofuse'" do
    it "should be successful" do
      get 'termsofuse'
      response.should be_success
    end
  end

  describe "GET 'partner'" do
    it "should be successful" do
      get 'partner'
      response.should be_success
    end
  end

end
