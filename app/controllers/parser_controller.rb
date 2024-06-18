class ParserController < ApplicationController
  # before_action only [:dashboard], store_params

  def index
  end

  def upload
    unless file_params['txt_file'].nil?
      Transaction.parse_file(file_params['txt_file'].tempfile)
      flash[:alert] = 'Sucesso!'
      redirect_to parser_dashboard_url
    else
      flash[:alert] = 'O envio do arquivo é obrigatório!'
      redirect_to parser_index_url
    end
  end

  def dashboard
    begin
      @store = Store.new(id:0)
      @stores = Store.all
      if store_params[:store_id].present?
        @transactions = Transaction.includes(:store,:transaction_type).where(store:store_params[:store_id].to_i).all
      else
        @transactions = Transaction.includes(:store,:transaction_type).all.order('stores.name')
      end
    rescue StandardError => e
        pp e.backtrace
    end
  end

  private

  def file_params
    # params.require(:store).permit(:authenticity_token, :txt_file, :original_filename, :filename, :store_id, :commit)
    params.permit(:authenticity_token, :txt_file, :original_filename, :filename, :store_id, :commit)
  end

  def store_params
    params.permit(:store_id, :commit)#.permit("store"=> {"store_id"=>'store_id'})
  end
end
