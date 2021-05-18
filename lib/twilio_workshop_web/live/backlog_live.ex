defmodule TwilioWorkshopWeb.BacklogLive do
  use TwilioWorkshopWeb, :live_view

  
  def mount(_params, _session, socket) do

    socket = assign(socket, :count, 0)
    {:ok, socket}
    
  end

  def render(assigns) do

    ~L"""
      <h1>Backlog Count</h1>
      <h2><%= @count %></h2>
  
      <button phx-click="remove">Remove An Issue</button>

      <button phx-click="add">Add An Issue</button>

    """
  end


  def handle_event("remove", _, socket) do
    socket = update(socket, :count, &(&1 - 1))
    {:noreply, socket}
  end


  def handle_event("add", _, socket) do
    socket = update(socket, :count, &(&1 + 1))
    {:noreply, socket}
  end
  
end