(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type model

val model :
  ?version:string prop ->
  format:string prop ->
  name:string prop ->
  unit ->
  model

type scale

val scale :
  ?capacity:float prop ->
  ?family:string prop ->
  ?size:string prop ->
  ?tier:string prop ->
  type_:string prop ->
  unit ->
  scale

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_cognitive_deployment

val azurerm_cognitive_deployment :
  ?id:string prop ->
  ?rai_policy_name:string prop ->
  ?version_upgrade_option:string prop ->
  ?timeouts:timeouts ->
  cognitive_account_id:string prop ->
  name:string prop ->
  model:model list ->
  scale:scale list ->
  unit ->
  azurerm_cognitive_deployment

val yojson_of_azurerm_cognitive_deployment :
  azurerm_cognitive_deployment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cognitive_account_id : string prop;
  id : string prop;
  name : string prop;
  rai_policy_name : string prop;
  version_upgrade_option : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?rai_policy_name:string prop ->
  ?version_upgrade_option:string prop ->
  ?timeouts:timeouts ->
  cognitive_account_id:string prop ->
  name:string prop ->
  model:model list ->
  scale:scale list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?rai_policy_name:string prop ->
  ?version_upgrade_option:string prop ->
  ?timeouts:timeouts ->
  cognitive_account_id:string prop ->
  name:string prop ->
  model:model list ->
  scale:scale list ->
  string ->
  t Tf_core.resource
