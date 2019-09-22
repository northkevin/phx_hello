defmodule PhxHelloWeb.Schema do
  use Absinthe.Schema
  import_types(PhxHelloWeb.Schema.ContentTypes)

  alias PhxHelloWeb.Resolvers

  query do
    @desc "Get all posts"
    field :posts, list_of(:post) do
      resolve(&Resolvers.Content.list_posts/3)
    end

    @desc "Get a user of the blog"
    field :user, :user do
      arg(:id, non_null(:id))
      resolve(&Resolvers.Accounts.find_user/3)
    end
  end
end
