class VendorSweetsController < ApplicationController

    def new 
        @vendorsweet = VendorSweet.new
        @sweets = Sweet.all 
        @vendors = Vendor.all 
    end 

    def create 
        @vendorsweet = VendorSweet.create(vendor_sweet_params)
        if @vendorsweet.valid?
            redirect_to vendor_path(@vendorsweet.vendor.id)
        else 
            flash[:my_errors] = @vendorsweet.errors.full_messages 
            redirect_to new_vendor_sweet_path 
        end 
    end 

    private 

   def vendor_sweet_params
    params.require(:vendor_sweet).permit(:vendor_id, :sweet_id, :price) 
   end 
end
