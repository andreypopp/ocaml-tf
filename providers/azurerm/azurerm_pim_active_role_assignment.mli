(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type schedule__expiration

val schedule__expiration :
  ?duration_days:float prop ->
  ?duration_hours:float prop ->
  ?end_date_time:string prop ->
  unit ->
  schedule__expiration

type schedule

val schedule :
  ?start_date_time:string prop ->
  ?expiration:schedule__expiration list ->
  unit ->
  schedule

type ticket

val ticket :
  ?number:string prop -> ?system:string prop -> unit -> ticket

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  unit ->
  timeouts

type azurerm_pim_active_role_assignment

val azurerm_pim_active_role_assignment :
  ?id:string prop ->
  ?justification:string prop ->
  ?schedule:schedule list ->
  ?ticket:ticket list ->
  ?timeouts:timeouts ->
  principal_id:string prop ->
  role_definition_id:string prop ->
  scope:string prop ->
  unit ->
  azurerm_pim_active_role_assignment

val yojson_of_azurerm_pim_active_role_assignment :
  azurerm_pim_active_role_assignment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  justification : string prop;
  principal_id : string prop;
  principal_type : string prop;
  role_definition_id : string prop;
  scope : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?justification:string prop ->
  ?schedule:schedule list ->
  ?ticket:ticket list ->
  ?timeouts:timeouts ->
  principal_id:string prop ->
  role_definition_id:string prop ->
  scope:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?justification:string prop ->
  ?schedule:schedule list ->
  ?ticket:ticket list ->
  ?timeouts:timeouts ->
  principal_id:string prop ->
  role_definition_id:string prop ->
  scope:string prop ->
  string ->
  t Tf_core.resource
