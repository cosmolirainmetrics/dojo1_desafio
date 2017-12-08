
Quando("realiza busca") do  
  find(:xpath, '//*[@id="menu_pim_viewPimModule"]').click
  find(:xpath, '//*[@id="menu_pim_viewEmployeeList"]').click  
  fill_in('empsearch[id]', :with => '2096')
  click_button('Search')
end

Quando("seleciona o empregado na lista") do
  find(:xpath, '//*[@id="resultTable"]/tbody/tr/td[2]/a').click
end

Quando("edita o empregado") do
  click_button('Edit')
  fill_in('personal[txtEmpFirstName]',:with => 'Cosmo')
  fill_in('personal[txtEmpMiddleName]',:with => 'Rodrigo')
  fill_in('personal[txtEmpLastName]',:with => 'Lira')
  fill_in('personal[txtOtherID]',:with => 'cosmolira')
  find(:xpath, '//*[@id="personal_optGender_1"]').click
  select('Brazilian', :from => 'personal[cmbNation]')
  select('Married', :from => 'personal[cmbMarital]')
  fill_in('personal[txtLicExpDate]', :with => '2018-06-09')
  fill_in('personal[DOB]', :with => '1986-06-09')
  fill_in('personal[txtLicenNo]', :with => '123456')  
end