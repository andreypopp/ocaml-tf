(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type non_compliance_message = {
  content : string prop;  (** content *)
  policy_definition_reference_id : string prop;
      (** policy_definition_reference_id *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_policy_assignment

val azurerm_policy_assignment :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  scope_id:string prop ->
  unit ->
  azurerm_policy_assignment

val yojson_of_azurerm_policy_assignment :
  azurerm_policy_assignment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  display_name : string prop;
  enforce : bool prop;
  id : string prop;
  identity : identity list prop;
  location : string prop;
  metadata : string prop;
  name : string prop;
  non_compliance_message : non_compliance_message list prop;
  not_scopes : string list prop;
  parameters : string prop;
  policy_definition_id : string prop;
  scope_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  scope_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  scope_id:string prop ->
  string ->
  t Tf_core.resource
