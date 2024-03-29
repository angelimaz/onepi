defmodule Onepi.ProductsTest do
  use Onepi.DataCase

  alias Onepi.Products

  describe "products" do
    alias Onepi.Products.Product

    @valid_attrs %{blockchain_id: "some blockchain_id", colour: "some colour", image: "some image", name: "some name", picode: "some picode"}
    @update_attrs %{blockchain_id: "some updated blockchain_id", colour: "some updated colour", image: "some updated image", name: "some updated name", picode: "some updated picode"}
    @invalid_attrs %{blockchain_id: nil, colour: nil, image: nil, name: nil, picode: nil}

    def product_fixture(attrs \\ %{}) do
      {:ok, product} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Products.create_product()

      product
    end

    test "list_products/0 returns all products" do
      product = product_fixture()
      assert Products.list_products() == [product]
    end

    test "get_product!/1 returns the product with given id" do
      product = product_fixture()
      assert Products.get_product!(product.id) == product
    end

    test "create_product/1 with valid data creates a product" do
      assert {:ok, %Product{} = product} = Products.create_product(@valid_attrs)
      assert product.blockchain_id == "some blockchain_id"
      assert product.colour == "some colour"
      assert product.image == "some image"
      assert product.name == "some name"
      assert product.picode == "some picode"
    end

    test "create_product/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Products.create_product(@invalid_attrs)
    end

    test "update_product/2 with valid data updates the product" do
      product = product_fixture()
      assert {:ok, %Product{} = product} = Products.update_product(product, @update_attrs)
      assert product.blockchain_id == "some updated blockchain_id"
      assert product.colour == "some updated colour"
      assert product.image == "some updated image"
      assert product.name == "some updated name"
      assert product.picode == "some updated picode"
    end

    test "update_product/2 with invalid data returns error changeset" do
      product = product_fixture()
      assert {:error, %Ecto.Changeset{}} = Products.update_product(product, @invalid_attrs)
      assert product == Products.get_product!(product.id)
    end

    test "delete_product/1 deletes the product" do
      product = product_fixture()
      assert {:ok, %Product{}} = Products.delete_product(product)
      assert_raise Ecto.NoResultsError, fn -> Products.get_product!(product.id) end
    end

    test "change_product/1 returns a product changeset" do
      product = product_fixture()
      assert %Ecto.Changeset{} = Products.change_product(product)
    end
  end
end
