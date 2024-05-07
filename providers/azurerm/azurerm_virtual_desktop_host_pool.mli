(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type scheduled_agent_updates__schedule

val scheduled_agent_updates__schedule :
  day_of_week:string prop ->
  hour_of_day:float prop ->
  unit ->
  scheduled_agent_updates__schedule

type scheduled_agent_updates

val scheduled_agent_updates :
  ?enabled:bool prop ->
  ?timezone:string prop ->
  ?use_session_host_timezone:bool prop ->
  ?schedule:scheduled_agent_updates__schedule list ->
  unit ->
  scheduled_agent_updates

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_virtual_desktop_host_pool

val azurerm_virtual_desktop_host_pool :
  ?custom_rdp_properties:string prop ->
  ?description:string prop ->
  ?friendly_name:string prop ->
  ?id:string prop ->
  ?maximum_sessions_allowed:float prop ->
  ?personal_desktop_assignment_type:string prop ->
  ?preferred_app_group_type:string prop ->
  ?start_vm_on_connect:bool prop ->
  ?tags:(string * string prop) list ->
  ?validate_environment:bool prop ->
  ?vm_template:string prop ->
  ?scheduled_agent_updates:scheduled_agent_updates list ->
  ?timeouts:timeouts ->
  load_balancer_type:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  type_:string prop ->
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
  start_vm_on_connect : bool prop;
  tags : (string * string) list prop;
  type_ : string prop;
  validate_environment : bool prop;
  vm_template : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?custom_rdp_properties:string prop ->
  ?description:string prop ->
  ?friendly_name:string prop ->
  ?id:string prop ->
  ?maximum_sessions_allowed:float prop ->
  ?personal_desktop_assignment_type:string prop ->
  ?preferred_app_group_type:string prop ->
  ?start_vm_on_connect:bool prop ->
  ?tags:(string * string prop) list ->
  ?validate_environment:bool prop ->
  ?vm_template:string prop ->
  ?scheduled_agent_updates:scheduled_agent_updates list ->
  ?timeouts:timeouts ->
  load_balancer_type:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?custom_rdp_properties:string prop ->
  ?description:string prop ->
  ?friendly_name:string prop ->
  ?id:string prop ->
  ?maximum_sessions_allowed:float prop ->
  ?personal_desktop_assignment_type:string prop ->
  ?preferred_app_group_type:string prop ->
  ?start_vm_on_connect:bool prop ->
  ?tags:(string * string prop) list ->
  ?validate_environment:bool prop ->
  ?vm_template:string prop ->
  ?scheduled_agent_updates:scheduled_agent_updates list ->
  ?timeouts:timeouts ->
  load_balancer_type:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
