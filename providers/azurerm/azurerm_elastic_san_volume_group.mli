(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type encryption

val encryption :
  ?user_assigned_identity_id:string prop ->
  key_vault_key_id:string prop ->
  unit ->
  encryption

type identity

val identity :
  ?identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type network_rule

val network_rule :
  ?action:string prop ->
  subnet_id:string prop ->
  unit ->
  network_rule

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_elastic_san_volume_group

val azurerm_elastic_san_volume_group :
  ?encryption_type:string prop ->
  ?id:string prop ->
  ?protocol_type:string prop ->
  ?encryption:encryption list ->
  ?identity:identity list ->
  ?network_rule:network_rule list ->
  ?timeouts:timeouts ->
  elastic_san_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_elastic_san_volume_group

val yojson_of_azurerm_elastic_san_volume_group :
  azurerm_elastic_san_volume_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  elastic_san_id : string prop;
  encryption_type : string prop;
  id : string prop;
  name : string prop;
  protocol_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?encryption_type:string prop ->
  ?id:string prop ->
  ?protocol_type:string prop ->
  ?encryption:encryption list ->
  ?identity:identity list ->
  ?network_rule:network_rule list ->
  ?timeouts:timeouts ->
  elastic_san_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?encryption_type:string prop ->
  ?id:string prop ->
  ?protocol_type:string prop ->
  ?encryption:encryption list ->
  ?identity:identity list ->
  ?network_rule:network_rule list ->
  ?timeouts:timeouts ->
  elastic_san_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
