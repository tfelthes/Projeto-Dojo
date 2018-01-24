Dado("que eu esteja logado no site OrangeHRM") do                 
  visit "http://opensource.demo.orangehrmlive.com/" 
  fill_in("txtUsername", :with => "Admin")
  fill_in("txtPassword", :with => "admin") 
  click_button('btnLogin')
  
end                                                                            
                                                                               
Quando("cadastrar um novo empregado com dados validos") do                          
  click_link('menu_pim_viewPimModule')
  click_link('menu_pim_addEmployee')
  fill_in("firstName", :with => "Thais")
  fill_in("middleName", :with => "Fernanda")
  fill_in("lastName", :with => "Felthes")
  check('chkLogin')
  fill_in("user_name", :with => "tfelthes06") 
  fill_in("user_password", :with => "@orizon123") 
  fill_in("re_password", :with => "@orizon123") 
  select('Disabled', :from => 'status') 
  click_button('btnSave')
end                                                                            
                                                                               
Entao("o cadastro sera efetuado com sucesso") do                               
  assert_text('Personal Details') 
end                                                                            
