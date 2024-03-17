(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_role_assignment__timeouts
type azurerm_role_assignment

type t = private {
  condition : string prop;
  condition_version : string prop;
  delegated_managed_identity_resource_id : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  principal_id : string prop;
  principal_type : string prop;
  role_definition_id : string prop;
  role_definition_name : string prop;
  scope : string prop;
  skip_service_principal_aad_check : bool prop;
}

val azurerm_role_assignment :
  ?condition:string prop ->
  ?condition_version:string prop ->
  ?delegated_managed_identity_resource_id:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?principal_type:string prop ->
  ?role_definition_id:string prop ->
  ?role_definition_name:string prop ->
  ?skip_service_principal_aad_check:bool prop ->
  ?timeouts:azurerm_role_assignment__timeouts ->
  principal_id:string prop ->
  scope:string prop ->
  string ->
  t
