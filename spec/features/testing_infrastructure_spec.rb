feature 'Testing infrastructure' do
  scenario 'can run app and check page content' do
    visit('/homepage')
    expect(page).to have_content 'Welcome to ScareSpace'
  end

  scenario 'takes you to a sign up page' do
    visit('/homepage')
    click_button('Sign Up')
    expect(page).to have_content 'Enter email'
    expect(page).to have_content 'Enter password'
  end

  scenario 'takes you to a log in page' do
    visit('/homepage')
    click_button('Log In')
    expect(page).to have_content 'Log In page'
  end

  # scenario 'takes you to a spaces page' do
  #   sign_up
  #   visit('/homepage')
  #   click_button('Create new space')
  #   expect(page).to have_content 'Create a space'
  # end

  # scenario 'takes you to a request page' do
  #   sign_up
  #   visit('/homepage')
  #   click_button('Request Update')
  #   expect(page).to have_content 'Current requests'
  # end

  # scenario 
  # 'logs you out of the page' do
  #   sign_up
  #   visit('/homepage')
  #   click_button('Log Out')
  #   expect(page).to have_button('Log In')
  # end
end
