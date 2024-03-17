(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_service_certificate_order__timeouts

type azurerm_app_service_certificate_order__certificates = {
  certificate_name : string prop;  (** certificate_name *)
  key_vault_id : string prop;  (** key_vault_id *)
  key_vault_secret_name : string prop;  (** key_vault_secret_name *)
  provisioning_state : string prop;  (** provisioning_state *)
}

type azurerm_app_service_certificate_order

type t = private {
  app_service_certificate_not_renewable_reasons : string list prop;
  auto_renew : bool prop;
  certificates :
    azurerm_app_service_certificate_order__certificates list prop;
  csr : string prop;
  distinguished_name : string prop;
  domain_verification_token : string prop;
  expiration_time : string prop;
  id : string prop;
  intermediate_thumbprint : string prop;
  is_private_key_external : bool prop;
  key_size : float prop;
  location : string prop;
  name : string prop;
  product_type : string prop;
  resource_group_name : string prop;
  root_thumbprint : string prop;
  signed_certificate_thumbprint : string prop;
  status : string prop;
  tags : (string * string) list prop;
  validity_in_years : float prop;
}

val azurerm_app_service_certificate_order :
  ?auto_renew:bool prop ->
  ?csr:string prop ->
  ?distinguished_name:string prop ->
  ?id:string prop ->
  ?key_size:float prop ->
  ?product_type:string prop ->
  ?tags:(string * string prop) list ->
  ?validity_in_years:float prop ->
  ?timeouts:azurerm_app_service_certificate_order__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
