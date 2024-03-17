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
  unit
