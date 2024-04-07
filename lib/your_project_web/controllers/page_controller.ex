defmodule YourProjectWeb.PageController do
  use YourProjectWeb, :controller

  def index(_conn, _params) do
    raise YourProject.PlugException, plug_status: 400, message: "Hello world!"
  end
end
