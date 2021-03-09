class PostsController < ApplicationController
    
    def index  # indexアクションを定義した
        # @post = "これはコントローラーで定義したインスタンス変数を確認するための文字列です"
        # @post = Post.find(1)
        # @posts = Post.all  # すべてのレコードを@postsに代入
        @posts = Post.order(id: "DESC")
    end

    # def new
    # end

    def create
        Post.create(content: params[:content])
        redirect_to action: :index
    end

end
