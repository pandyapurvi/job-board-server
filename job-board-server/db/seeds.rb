User.destroy_all
u1 = User.create(:email => 'harsh@gmail.com', :password => '12345')
u2 = User.create(:email => 'purvi@ga.co', :password => '12345')

Job.destroy_all
j1 = Job.create(:title => 'Graduate Software Enginner', :pod => '21/05/2019', :description => 'You will have a Bachelor’s degree in IT or technology-related field.
You have had prior commercial development experience (can include internships, casual or on a part-time basis during studies).
Experience with fintechs or renown tech companies will be highly regarded.
You will have a passion for coding and are proactive with following the latest technology trends and attending meet ups.
You are “code savvy”, have a willingness to learn and can pick up different languages quickly.
Experience with Java or Golang will be preferred but not essential', :level => 'junior', :company_type => 'IT technology', :salary => '65000', :duration => '6-months', :cod => '30/06/2019', :city => 'Sydney' )

j2 = Job.create(:title => 'Junior Software Enginner', :pod => '02/05/2019', :description => 'Work with a strong team of engineers who have the domain knowledge that can guide your innovative approach to problem solving and help you achieve excellent results.
Java/JavaScript with extreme performance requirements
creative environment working with the latest technology
collaborative approach to problem solving
complex problems, highly distributed systems
think out of the box and work with the best
Opportunity for some hands-on experience with the latest technologies and techniques.', :level => 'junior', :company_type => 'IT technology', :salary => '75000', :duration => '12-months', :cod => '25/06/2019', :city => 'Sydney')

Seeker.destroy_all
s1 = Seeker.create(:name => 'John', :emailid => 'john@gmail.com', :pnone => '041456890', :social_link => 'https://github.com/john', :resume => 'resume here', :cover_letter => 'cover letter here', :experience_year => '2', :notice => '1 week', :current_title => 'junior developer')

Employer.destroy_all
e1 = Employer.create(:company_name => 'Domain', :compamy_type => 'IT technology', :size => 'big', :no_employee => '200', :description => 'very good company', :city => 'Sydney', :website => 'www.domain.com', :vacancy => 'coming')

Application.destroy_all
a1 = Application.create(:name => 'Johny',:resume => 'coming', :cover_letter => 'coming')
