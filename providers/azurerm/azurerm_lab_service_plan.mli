(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type default_auto_shutdown

val default_auto_shutdown :
  ?disconnect_delay:string prop ->
  ?idle_delay:string prop ->
  ?no_connect_delay:string prop ->
  ?shutdown_on_idle:string prop ->
  unit ->
  default_auto_shutdown

type default_connection

val default_connection :
  ?client_rdp_access:string prop ->
  ?client_ssh_access:string prop ->
  ?web_rdp_access:string prop ->
  ?web_ssh_access:string prop ->
  unit ->
  default_connection

type support

val support :
  ?email:string prop ->
  ?instructions:string prop ->
  ?phone:string prop ->
  ?url:string prop ->
  unit ->
  support

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_lab_service_plan

val azurerm_lab_service_plan :
  ?default_network_subnet_id:string prop ->
  ?id:string prop ->
  ?shared_gallery_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  allowed_regions:string prop list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  default_auto_shutdown:default_auto_shutdown list ->
  default_connection:default_connection list ->
  support:support list ->
  unit ->
  azurerm_lab_service_plan

val yojson_of_azurerm_lab_service_plan :
  azurerm_lab_service_plan -> json

(** RESOURCE REGISTRATION *)

type t = private {
  allowed_regions : string list prop;
  default_network_subnet_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  shared_gallery_id : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?default_network_subnet_id:string prop ->
  ?id:string prop ->
  ?shared_gallery_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  allowed_regions:string prop list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  default_auto_shutdown:default_auto_shutdown list ->
  default_connection:default_connection list ->
  support:support list ->
  string ->
  t

val make :
  ?default_network_subnet_id:string prop ->
  ?id:string prop ->
  ?shared_gallery_id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  allowed_regions:string prop list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  default_auto_shutdown:default_auto_shutdown list ->
  default_connection:default_connection list ->
  support:support list ->
  string ->
  t Tf_core.resource
