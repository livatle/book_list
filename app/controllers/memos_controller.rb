class MemosController < ApplicationController
  before_action :set_memo, only: %i[destroy edit update]
  def index
    @memos = Memo.all.order(created_at: :desc)
  end

  def new
  end
  
  def create
    @memo = Memo.create!(memo_params)
  end

  def destroy
    @memo.destroy!
  end

  def edit
  end

  def update
    @memo.update!(memo_params)
  end
  
  private
  def memo_params
    params.require(:memo).permit(:title, :name)
  end

  def set_memo
    @memo = Memo.find(params[:id])
  end
end
