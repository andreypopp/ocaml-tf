(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_palo_alto_local_rulestack_fqdn_list

val azurerm_palo_alto_local_rulestack_fqdn_list :
  ?audit_comment:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  fully_qualified_domain_names:string prop list ->
  name:string prop ->
  rulestack_id:string prop ->
  unit ->
  azurerm_palo_alto_local_rulestack_fqdn_list

val yojson_of_azurerm_palo_alto_local_rulestack_fqdn_list :
  azurerm_palo_alto_local_rulestack_fqdn_list -> json

(** RESOURCE REGISTRATION *)

type t = private {
  audit_comment : string prop;
  description : string prop;
  fully_qualified_domain_names : string list prop;
  id : string prop;
  name : string prop;
  rulestack_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?audit_comment:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  fully_qualified_domain_names:string prop list ->
  name:string prop ->
  rulestack_id:string prop ->
  string ->
  t
