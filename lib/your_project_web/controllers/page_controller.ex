defmodule YourProjectWeb.PageController do
  use YourProjectWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
