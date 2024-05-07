(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type secret__customer_certificate = {
  expiration_date : string prop;  (** expiration_date *)
  key_vault_certificate_id : string prop;
      (** key_vault_certificate_id *)
  subject_alternative_names : string prop list;
      (** subject_alternative_names *)
}

type secret = {
  customer_certificate : secret__customer_certificate list;
      (** customer_certificate *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_cdn_frontdoor_secret

val azurerm_cdn_frontdoor_secret :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  profile_name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_cdn_frontdoor_secret

val yojson_of_azurerm_cdn_frontdoor_secret :
  azurerm_cdn_frontdoor_secret -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cdn_frontdoor_profile_id : string prop;
  id : string prop;
  name : string prop;
  profile_name : string prop;
  resource_group_name : string prop;
  secret : secret list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  profile_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  profile_name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
