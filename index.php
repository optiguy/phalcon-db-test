<?php
	//Setup model for db1 - table
	class table1 extends \Phalcon\Mvc\Model
	{
	    public function getSource()
	    {
	        return 'table1';
	    }
	
	    public function initialize()
	    {
	        echo('calling initialize on db1 - table1'."<br>");
	        //Set db1 connection
	        $this->setConnectionService('db1');

	        //Schema must be set for joining joining tables between two databases
	        //If join is not needed then this line can be left out.
	        $this->setSchema('phalcon-db-test');
	    }
	}

	//Setup model for db2 - table
	class table2 extends \Phalcon\Mvc\Model
	{
	    public function getSource()
	    {
	        return 'table2';
	    }

	    public function initialize()
	    {
	        echo('calling initialize on db2 - table2'."<br>");
	        //Set db2 connection
	        $this->setConnectionService('db2');

	        //Schema must be set for joining joining tables between two databases
	        //If join is not needed then this line can be left out.
	        $this->setSchema('phalcon-db2-test');
	    }
	}

	//Include phalcon framework
	$phalcon = new \Phalcon\DI\FactoryDefault();

	//Set connection for db1
	$test1info = array(
	    'host' => '127.0.0.1',
	    'username' => 'root',
	    'password' => 'root',
	    'dbname' => 'phalcon-db-test',
	    'charset' => 'utf8',
    );
	$test1 = new \phalcon\db\adapter\pdo\mysql($test1info);
	$phalcon->set('db1', $test1);

	//Set connection for db2
	$test2info = array(
	    'host' => '127.0.0.1',
	    'username' => 'root',
	    'password' => 'root',
	    'dbname' => 'phalcon-db2-test',
	    'charset' => 'utf8',
	    );
	$test2 = new \phalcon\db\adapter\pdo\mysql($test2info);
	$phalcon->set('db2', $test2);

	//Query for database 1
	echo '<h1>Test from database 1</h1>';
	$table1 = table1::findFirst(array("title = 'Test from db 1.1'"));
	echo($table1->title."<br>");
	$table1 = table1::findFirst(array("title = 'Test from db 1.2'"));
	echo($table1->title."<br>");

	//Query for database 2
	echo '<h1>Test from database 2</h1>';
	$table2 = table2::findFirst(array("headline = 'Test from DB 2.1'"));
	echo($table2->headline."<br>");
	$table2 = table2::findFirst(array("headline = 'Test from DB 2.2'"));
	echo($table2->headline."<br>");

?>