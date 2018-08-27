module Webhooks
  class ChargeSucceeded
   def call(event)
     charge = event.data.object

     user = User.find_by(stripe_id: charge.customer)

     c = user.charges.where(stripe_id: charge.id).first_or_create
     c.update(
       amount: charge.amount,
       card_brand: charge.source.brand,
       card_last4: charge.source.last4,
       card_exp_month: charge.source.exp_month,
       card_exp_year: charge.source.exp_year
     )
   end
  end
  
end