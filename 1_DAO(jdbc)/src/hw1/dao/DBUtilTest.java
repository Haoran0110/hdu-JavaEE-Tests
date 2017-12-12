package hw1.dao;

import org.junit.Before;
import org.junit.After;
import org.junit.Assert;
import org.junit.Test;

public class DBUtilTest {
	private DBUtil dbu;
	@Before
	public void setUp() throws Exception {
		dbu=new DBUtil();
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void testAddpp() {
		
        int result=dbu.addpp(4, 5);
		Assert.assertEquals(8, result);
	    Assert.fail("Not yet implemented");
	
		//fail("Not yet implemented");
	}

}

