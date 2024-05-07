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

type azurerm_palo_alto_local_rulestack_prefix_list

val azurerm_palo_alto_local_rulestack_prefix_list :
  ?audit_comment:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  prefix_list:string prop list ->
  rulestack_id:string prop ->
  unit ->
  azurerm_palo_alto_local_rulestack_prefix_list

val yojson_of_azurerm_palo_alto_local_rulestack_prefix_list :
  azurerm_palo_alto_local_rulestack_prefix_list -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  audit_comment : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  prefix_list : string list prop;
  rulestack_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?audit_comment:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  prefix_list:string prop list ->
  rulestack_id:string prop ->
  string ->
  t

val make :
  ?audit_comment:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  prefix_list:string prop list ->
  rulestack_id:string prop ->
  string ->
  t Tf_core.resource
