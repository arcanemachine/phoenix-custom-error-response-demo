defmodule YourProjectWeb.PageController do
  use YourProjectWeb, :controller

  def home(_conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    raise YourProject.PlugException, plug_status: 400, message: "Hello world!"
  end
end
