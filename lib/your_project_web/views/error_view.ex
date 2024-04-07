defmodule YourProjectWeb.ErrorView do
  use YourProjectWeb, :view

  # If you want to customize a particular status code
  # for a certain format, you may uncomment below.
  # def render("500.html", _assigns) do
  #   "Internal Server Error"
  # end

  @doc "Render a JSON response with custom message."
  def render(
        <<_status::binary-3>> <> ".json",
        %{conn: %{assigns: %{reason: %YourProject.PlugException{message: message}}}}
      )
      when message != "" do
    message
  end

  # By default, Phoenix returns the status message from
  # the template name. For example, "404.html" becomes
  # "Not Found".
  def template_not_found(template, _assigns) do
    Phoenix.Controller.status_message_from_template(template)
  end
end
