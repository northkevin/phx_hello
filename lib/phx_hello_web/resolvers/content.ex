defmodule PhxHelloWeb.Resolvers.Content do
  def list_posts(%PhxHello.Accounts.User{} = author, args, _resolution) do
    {:ok, PhxHello.Content.list_posts(author, args)}
  end

  def list_posts(_parent, _args, _resolution) do
    {:ok, PhxHello.Content.list_posts()}
  end
end
