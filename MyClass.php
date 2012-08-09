<? /* class MyClass
{
// hiding $property
private $property;
// getter
public function getProperty()
{
return $this->property;
}
// setter
public function setProperty($value)
{
$this->property = $value;
}
}

$instancia=new MyClass; 
$instancia->setProperty('puto');
echo $instancia->getProperty();
*/
// extending CComponent is necessary


 class MyClass extends CComponent
{
private $property;
public function getProperty()
{
return $this->property;
}

public function setProperty($value)
{
$this->property = $value;
}
}
$object = new MyClass();
$object->property = 'value'; // same as $object->
setProperty('value');
echo $object->property; // same as $object->getProperty();

