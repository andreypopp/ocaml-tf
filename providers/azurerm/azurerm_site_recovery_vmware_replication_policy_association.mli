(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_site_recovery_vmware_replication_policy_association

val azurerm_site_recovery_vmware_replication_policy_association :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  policy_id:string prop ->
  recovery_vault_id:string prop ->
  unit ->
  azurerm_site_recovery_vmware_replication_policy_association

val yojson_of_azurerm_site_recovery_vmware_replication_policy_association :
  azurerm_site_recovery_vmware_replication_policy_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  policy_id : string prop;
  recovery_vault_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  policy_id:string prop ->
  recovery_vault_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  policy_id:string prop ->
  recovery_vault_id:string prop ->
  string ->
  t Tf_core.resource
