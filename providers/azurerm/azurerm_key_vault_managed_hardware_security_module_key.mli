(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_key_vault_managed_hardware_security_module_key

val azurerm_key_vault_managed_hardware_security_module_key :
  ?curve:string prop ->
  ?expiration_date:string prop ->
  ?id:string prop ->
  ?key_size:float prop ->
  ?not_before_date:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  key_opts:string prop list ->
  key_type:string prop ->
  managed_hsm_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_key_vault_managed_hardware_security_module_key

val yojson_of_azurerm_key_vault_managed_hardware_security_module_key :
  azurerm_key_vault_managed_hardware_security_module_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  curve : string prop;
  expiration_date : string prop;
  id : string prop;
  key_opts : string list prop;
  key_size : float prop;
  key_type : string prop;
  managed_hsm_id : string prop;
  name : string prop;
  not_before_date : string prop;
  tags : string Tf_core.assoc prop;
  versioned_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?curve:string prop ->
  ?expiration_date:string prop ->
  ?id:string prop ->
  ?key_size:float prop ->
  ?not_before_date:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  key_opts:string prop list ->
  key_type:string prop ->
  managed_hsm_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?curve:string prop ->
  ?expiration_date:string prop ->
  ?id:string prop ->
  ?key_size:float prop ->
  ?not_before_date:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  key_opts:string prop list ->
  key_type:string prop ->
  managed_hsm_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
