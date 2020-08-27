class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.integer :blockNumber
      t.string :timeStamp
      t.string :hash
      t.integer :nonce
      t.string :blockHash
      t.integer :transactionIndex
      t.bigint :from
      t.bigint :to
      t.integer :value
      t.string :gas
      t.string :gasPrice
      t.string :isError
      t.string :txreceipt_status
      t.string :input
      t.string :contractAddress
      t.string :cumulativeGasUsed
      t.string :gasUsed
      t.string :confirmations

      t.timestamps
    end
  end
end
