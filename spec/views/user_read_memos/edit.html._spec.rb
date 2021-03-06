require 'spec_helper'

describe "user_read_memos/edit" do
  before(:each) do
    @user_read_memo = assign(:user_read_memo, stub_model(UserReadMemo,
      :read => "",
      :user => nil,
      :memo => nil
    ))
  end

  it "renders the edit user_read_memo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_read_memo_path(@user_read_memo), "post" do
      assert_select "input#user_read_memo_read[name=?]", "user_read_memo[read]"
      assert_select "input#user_read_memo_user[name=?]", "user_read_memo[user]"
      assert_select "input#user_read_memo_memo[name=?]", "user_read_memo[memo]"
    end
  end
end
