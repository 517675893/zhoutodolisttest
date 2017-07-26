package com.example.todolist.test.testcases.login;

import android.test.ActivityInstrumentationTestCase2;

import com.example.todolist.LoginActivity;
import com.robotium.solo.Solo;

public class TestCase1Old extends ActivityInstrumentationTestCase2<LoginActivity> {
	private Solo solo;

	public TestCase1Old() {
		//LoginActivity是指启动的Activity名称
		super(LoginActivity.class);
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void setUp() throws Exception {
		super.setUp();
		//初始化solo
		solo = new Solo(getInstrumentation(), getActivity());
	}

	public void testTestCase1() {
		// 在用户名输入框输入abcdef
		solo.enterText(0, "abcdef");
		// 在密码框输入123456
		solo.enterText(1, "12345678");
		// 点击登录按钮
		solo.clickOnButton(0);
		// 点击登录按钮
		//第一个参数是指如果验证失败的情况下，要显示的提示字符串
		//第二个参数是指要用来断言的表达式
		assertTrue("错误提示信息没有出现,可能出现BUG.", solo.searchText("用户名或者密码错误！", true));
	}

	@Override
	protected void tearDown() throws Exception {
		//关闭打开的Activity
		solo.finishOpenedActivities();
	}
}