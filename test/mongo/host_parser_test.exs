defmodule Mongo.ConnectionTest do
  use MongoTest.Case, async: true

  test "connect" do
    assert {:ok, pid} = Mongo.start_link(url: "mongodb://mongodb:27025/mongodb_test")

    Mongo.ping(pid)
  end
end
