defmodule AbilWeb.PageController do
  use AbilWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
