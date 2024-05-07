(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type certificates = {
  certificate_name : string prop;  (** certificate_name *)
  key_vault_id : string prop;  (** key_vault_id *)
  key_vault_secret_name : string prop;  (** key_vault_secret_name *)
  provisioning_state : string prop;  (** provisioning_state *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_app_service_certificate_order

val azurerm_app_service_certificate_order :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_app_service_certificate_order

val yojson_of_azurerm_app_service_certificate_order :
  azurerm_app_service_certificate_order -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_service_certificate_not_renewable_reasons : string list prop;
  auto_renew : bool prop;
  certificates : certificates list prop;
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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
