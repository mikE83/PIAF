<?php
class UserLoginWidget extends CWidget
{
    public $title='User login';
    public $visible=true; 
 
    public function init()
    {
        if($this->visible)
        {
 
        }
    }
	
	
	
	public function run()
    {
        if($this->visible)
        {
            $this->renderContent();
        }
    }
	
	  protected function renderContent()
    {
        $form=new LoginForm;;
        if(isset($_POST['LoginForm']))
        {
            $form->attributes=$_POST['LoginForm'];
            if($form->validate() && $form->login()){
                $url = $this->controller->createUrl('site/login');
                $this->controller->redirect($url);
            }
        }
        $this->render('UserLogin',array('form'=>$form));
    }   
}
	
	
	
	
	
	
?>	