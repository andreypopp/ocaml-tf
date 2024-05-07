(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type auto_shutdown

val auto_shutdown :
  ?disconnect_delay:string prop ->
  ?idle_delay:string prop ->
  ?no_connect_delay:string prop ->
  ?shutdown_on_idle:string prop ->
  unit ->
  auto_shutdown

type connection_setting

val connection_setting :
  ?client_rdp_access:string prop ->
  ?client_ssh_access:string prop ->
  unit ->
  connection_setting

type network

val network : ?subnet_id:string prop -> unit -> network

type roster

val roster :
  ?active_directory_group_id:string prop ->
  ?lms_instance:string prop ->
  ?lti_client_id:string prop ->
  ?lti_context_id:string prop ->
  ?lti_roster_endpoint:string prop ->
  unit ->
  roster

type security

val security : open_access_enabled:bool prop -> unit -> security

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type virtual_machine__admin_user

val virtual_machine__admin_user :
  password:string prop ->
  username:string prop ->
  unit ->
  virtual_machine__admin_user

type virtual_machine__image_reference

val virtual_machine__image_reference :
  ?id:string prop ->
  ?offer:string prop ->
  ?publisher:string prop ->
  ?sku:string prop ->
  ?version:string prop ->
  unit ->
  virtual_machine__image_reference

type virtual_machine__non_admin_user

val virtual_machine__non_admin_user :
  password:string prop ->
  username:string prop ->
  unit ->
  virtual_machine__non_admin_user

type virtual_machine__sku

val virtual_machine__sku :
  capacity:float prop ->
  name:string prop ->
  unit ->
  virtual_machine__sku

type virtual_machine

val virtual_machine :
  ?additional_capability_gpu_drivers_installed:bool prop ->
  ?create_option:string prop ->
  ?shared_password_enabled:bool prop ->
  ?usage_quota:string prop ->
  ?non_admin_user:virtual_machine__non_admin_user list ->
  admin_user:virtual_machine__admin_user list ->
  image_reference:virtual_machine__image_reference list ->
  sku:virtual_machine__sku list ->
  unit ->
  virtual_machine

type azurerm_lab_service_lab

val azurerm_lab_service_lab :
  ?description:string prop ->
  ?id:string prop ->
  ?lab_plan_id:string prop ->
  ?tags:(string * string prop) list ->
  ?auto_shutdown:auto_shutdown list ->
  ?network:network list ->
  ?roster:roster list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  title:string prop ->
  connection_setting:connection_setting list ->
  security:security list ->
  virtual_machine:virtual_machine list ->
  unit ->
  azurerm_lab_service_lab

val yojson_of_azurerm_lab_service_lab :
  azurerm_lab_service_lab -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  id : string prop;
  lab_plan_id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  title : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?lab_plan_id:string prop ->
  ?tags:(string * string prop) list ->
  ?auto_shutdown:auto_shutdown list ->
  ?network:network list ->
  ?roster:roster list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  title:string prop ->
  connection_setting:connection_setting list ->
  security:security list ->
  virtual_machine:virtual_machine list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?lab_plan_id:string prop ->
  ?tags:(string * string prop) list ->
  ?auto_shutdown:auto_shutdown list ->
  ?network:network list ->
  ?roster:roster list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  title:string prop ->
  connection_setting:connection_setting list ->
  security:security list ->
  virtual_machine:virtual_machine list ->
  string ->
  t Tf_core.resource
