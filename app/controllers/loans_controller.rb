class LoansController < ApplicationController
  before_action :set_loan, only: [:show, :edit, :update, :destroy]

  def index
    @loans = Loan.all
  end

  def show
    @ride = Payment.new
  end

  def new
    @loan = Loan.new
  end

  def edit
  end

  def create
    @loan = Loan.new(loan_params)
    respond_to do |format|
      if @loan.save
        format.html { redirect_to @loan, notice: 'Loan was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @loan.update(loan_params)
        format.html { redirect_to @loan, notice: 'Loan was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @loan.destroy
    respond_to do |format|
      format.html { redirect_to loans_url, notice: 'Loan was successfully destroyed.' }
    end
  end

  private
    def set_loan
      @loan = Loan.find(params[:id])
    end

    def loan_params
      params.require(:loan).permit(
        :credit_institution,
        :original_amount,
        :interest_rate,
        :term,
        :type,
        :issue_date,
        :due_on 
      )
    end

end
