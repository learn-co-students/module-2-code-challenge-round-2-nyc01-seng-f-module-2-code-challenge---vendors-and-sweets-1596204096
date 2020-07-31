class VendorSweetsController < ApplicationController
    # before_action: :set_vendor_sweet, only: [:show]
    def new
        @vendor_sweet = VendorSweet.new
        @vendors = Vendor.all 
        @sweets = Sweet.all
    end

    def create 
        @vendor_sweet = VendorSweet.create(vendor_sweet_params)
         if @vendor_sweet.valid? 
            redirect_to vendors_path
        else 
            flash[:errors] = @vendor_sweet.errors.full_messages
            redirect_to new_vendor_sweet_path
       end 
    end 

    # def show
    # end

    private

    # def set_vendor_sweet 
    #     @vendor_sweet = VendorSweet.find(params[:id])
    # end 

    def vendor_sweet_params 
        params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price)
    end 
    
end
