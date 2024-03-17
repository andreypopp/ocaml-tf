(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_service_certificate_order__timeouts

type azurerm_app_service_certificate_order__certificates = {
  certificate_name : string;  (** certificate_name *)
  key_vault_id : string;  (** key_vault_id *)
  key_vault_secret_name : string;  (** key_vault_secret_name *)
  provisioning_state : string;  (** provisioning_state *)
}
[@@deriving yojson_of]

type azurerm_app_service_certificate_order

val azurerm_app_service_certificate_order :
  ?auto_renew:bool ->
  ?key_size:float ->
  ?product_type:string ->
  ?tags:(string * string) list ->
  ?validity_in_years:float ->
  ?timeouts:azurerm_app_service_certificate_order__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
