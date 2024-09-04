(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type rotation_policy__automatic

val rotation_policy__automatic :
  ?time_after_creation:string prop ->
  ?time_before_expiry:string prop ->
  unit ->
  rotation_policy__automatic

type rotation_policy

val rotation_policy :
  ?expire_after:string prop ->
  ?notify_before_expiry:string prop ->
  ?automatic:rotation_policy__automatic list ->
  unit ->
  rotation_policy

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_key_vault_key

val azurerm_key_vault_key :
  ?curve:string prop ->
  ?expiration_date:string prop ->
  ?id:string prop ->
  ?key_size:float prop ->
  ?not_before_date:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?rotation_policy:rotation_policy list ->
  ?timeouts:timeouts ->
  key_opts:string prop list ->
  key_type:string prop ->
  key_vault_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_key_vault_key

val yojson_of_azurerm_key_vault_key : azurerm_key_vault_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  curve : string prop;
  e : string prop;
  expiration_date : string prop;
  id : string prop;
  key_opts : string list prop;
  key_size : float prop;
  key_type : string prop;
  key_vault_id : string prop;
  n : string prop;
  name : string prop;
  not_before_date : string prop;
  public_key_openssh : string prop;
  public_key_pem : string prop;
  resource_id : string prop;
  resource_versionless_id : string prop;
  tags : string Tf_core.assoc prop;
  version : string prop;
  versionless_id : string prop;
  x : string prop;
  y : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?curve:string prop ->
  ?expiration_date:string prop ->
  ?id:string prop ->
  ?key_size:float prop ->
  ?not_before_date:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?rotation_policy:rotation_policy list ->
  ?timeouts:timeouts ->
  key_opts:string prop list ->
  key_type:string prop ->
  key_vault_id:string prop ->
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
  ?rotation_policy:rotation_policy list ->
  ?timeouts:timeouts ->
  key_opts:string prop list ->
  key_type:string prop ->
  key_vault_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
