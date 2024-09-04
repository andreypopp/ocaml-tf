(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type scheduled_agent_updates__schedule = {
  day_of_week : string prop;  (** day_of_week *)
  hour_of_day : float prop;  (** hour_of_day *)
}

type scheduled_agent_updates = {
  enabled : bool prop;  (** enabled *)
  schedule : scheduled_agent_updates__schedule list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** schedule *)
  timezone : string prop;  (** timezone *)
  use_session_host_timezone : bool prop;
      (** use_session_host_timezone *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_virtual_desktop_host_pool

val azurerm_virtual_desktop_host_pool :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_virtual_desktop_host_pool

val yojson_of_azurerm_virtual_desktop_host_pool :
  azurerm_virtual_desktop_host_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  custom_rdp_properties : string prop;
  description : string prop;
  friendly_name : string prop;
  id : string prop;
  load_balancer_type : string prop;
  location : string prop;
  maximum_sessions_allowed : float prop;
  name : string prop;
  personal_desktop_assignment_type : string prop;
  preferred_app_group_type : string prop;
  resource_group_name : string prop;
  scheduled_agent_updates : scheduled_agent_updates list prop;
  start_vm_on_connect : bool prop;
  tags : string Tf_core.assoc prop;
  type_ : string prop;
  validate_environment : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
