defmodule Buffer.PageController do
  use Buffer.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
