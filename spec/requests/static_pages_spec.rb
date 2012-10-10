require 'spec_helper'

describe "Static pages" do

  subject { page }
  
  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    page.should have_selector 'title', text: full_title('About Us')
    click_link "Help"
    page.should # fill in
    click_link "Contact"
    page.should # fill in
    click_link "Home"
    click_link "Sign up now!"
    page.should # fill in
    click_link "Personal PO"
    page.should # fill in
  end
  
  shared_examples_for "all static pages" do
      it { should have_selector('h1',    text: heading) }
      it { should have_selector('title', text: full_title(page_title)) }
    end

    describe "Home page" do
        before { visit root_path }
        let(:heading)    { 'Personal PO' }
        let(:page_title) { '' }

        it_should_behave_like "all static pages"
        it { should_not have_selector 'title', text: '| Home' }
      end

  describe "Help page" do
    before { visit root_path }
    let(:heading)    { 'Help page' }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
    it { should_not have_selector 'title', text: '| Home' }
  end
  describe "About page" do
    before { visit root_path }
    let(:heading)    { 'About Page' }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
    it { should_not have_selector 'title', text: '| Home' }
  end
  describe "Contact page" do
    before { visit root_path }
        let(:heading)    { 'Contact Page' }
        let(:page_title) { '' }

        it_should_behave_like "all static pages"
        it { should_not have_selector 'title', text: '| Home' }
      end
end