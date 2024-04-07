defmodule YourProjectWeb.ErrorJSONTest do
  use YourProjectWeb.ConnCase, async: true

  test "renders 404" do
    assert YourProjectWeb.ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert YourProjectWeb.ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end
