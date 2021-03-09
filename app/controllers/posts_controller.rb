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
        post = Post.create(content: params[:content])
        render json:{ post: post }
    end

end
