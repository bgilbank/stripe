Stripe.api_key = Rails.application.credentials.development[:stripe_secret_key]
StripeEvent.signing_secret =  Rails.application.credentials.development[:signing_secret]