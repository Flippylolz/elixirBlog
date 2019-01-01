defmodule BlogWeb.PageController do
  use BlogWeb, :controller
  alias Blog.Events

  def index(conn, _params) do
    events = Events.list_future_events()
    render conn, "index.html", events: events
  end
end
