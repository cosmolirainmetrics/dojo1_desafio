
Dado("entra no site") do
    visit 'http://opensource.demo.orangehrmlive.com/'
  end
  
  Quando("faz o login") do
    fill_in('txtUsername',:with => 'admin')
    fill_in('txtPassword',:with => 'admin')
    click_button('LOGIN')
  end
  
  Quando("abre a tela de cadastro") do
    find(:xpath, '//*[@id="menu_pim_viewPimModule"]').click
    find(:xpath, '//*[@id="menu_pim_addEmployee"]').click
  end
  
  Quando("cadastra o novo empregado") do
    fill_in('firstName',:with => 'Novo')
    fill_in('middleName',:with => 'Funcionário')
    fill_in('lastName',:with => 'da Inmetrics')
    fill_in('employeeId',:with => '2096')
    attach_file('photofile', File.absolute_path('C:\Users\Inmetrics\Pictures\Inmetrics.png'))
  end
  
  Entao("envia o formulario") do
    click_button('Save')
  end