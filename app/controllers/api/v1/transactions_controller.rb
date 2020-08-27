class Api::V1::TransactionsController < Api::V1::BaseController
  before_action :find_user, except: %i[create index]

  def index
    @transactions = Transaction.all
    render json: @transactions
  end

  def create
    @transaction = Transaction.new(transaction_params)
    if @transaction.save
      render json: @transaction
    else
      render json: {errors: @transaction.errors.full_messages},
             status: :unprocessable_entity
    end
  end

  private

  def find_user
    @transaction = Transaction.find_by_id(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: {errors: 'Transaction not found'}, status: :not_found
  end

  def transaction_params
    params.permit(:blockNumber, :timeStamp, :hash, :nonce, :blockHash, :transactionIndex, :from, :to, :value, :gas, :gasPrice,
                  :isError, :txreceipt_status, :input, :contractAddress, :cumulativeGasUsed, :gasUsed, :confirmations)
  end
end
