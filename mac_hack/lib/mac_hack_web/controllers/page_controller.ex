defmodule MacHackWeb.PageController do
  use MacHackWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
