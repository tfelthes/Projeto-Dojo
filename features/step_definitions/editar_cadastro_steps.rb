Dado("que eu esteja na pagina Employee List do site OrangeHRM") do                 
  visit "http://opensource.demo.orangehrmlive.com/" 
  fill_in("txtUsername", :with => "Admin")
  fill_in("txtPassword", :with => "admin") 
  click_button('btnLogin')
  click_link('menu_pim_viewPimModule')
  click_link('menu_pim_viewEmployeeList')
    
end                                                                            
                                                                               
Quando("pesquisar um empregado e editar os seus dados") do                          
  fill_in("empsearch_id", :with => "0011")
  click_button('searchBtn')
  click_link ('0011') 
  click_button('btnSave')
  fill_in("personal_txtLicenNo", :with => "123A456N")
  fill_in("personal_txtLicExpDate", :with => "2018-01-23")
  choose('personal_optGender_2')
  select('Married', :from => 'personal_cmbMarital')
  select('Brazilian', :from => 'personal_cmbNation')
  fill_in("personal_DOB", :with => "1986-09-23")
  click_button('btnSave')  

end                                                                            
                                                                               
Entao("os dados serao alterados com sucesso") do                               
  assert_text('Successfully Saved') 
end                                         