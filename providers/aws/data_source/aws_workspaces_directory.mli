(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type self_service_permissions = {
  change_compute_type : bool prop;  (** change_compute_type *)
  increase_volume_size : bool prop;  (** increase_volume_size *)
  rebuild_workspace : bool prop;  (** rebuild_workspace *)
  restart_workspace : bool prop;  (** restart_workspace *)
  switch_running_mode : bool prop;  (** switch_running_mode *)
}

type workspace_access_properties = {
  device_type_android : string prop;  (** device_type_android *)
  device_type_chromeos : string prop;  (** device_type_chromeos *)
  device_type_ios : string prop;  (** device_type_ios *)
  device_type_linux : string prop;  (** device_type_linux *)
  device_type_osx : string prop;  (** device_type_osx *)
  device_type_web : string prop;  (** device_type_web *)
  device_type_windows : string prop;  (** device_type_windows *)
  device_type_zeroclient : string prop;  (** device_type_zeroclient *)
}

type workspace_creation_properties = {
  custom_security_group_id : string prop;
      (** custom_security_group_id *)
  default_ou : string prop;  (** default_ou *)
  enable_internet_access : bool prop;  (** enable_internet_access *)
  enable_maintenance_mode : bool prop;
      (** enable_maintenance_mode *)
  user_enabled_as_local_administrator : bool prop;
      (** user_enabled_as_local_administrator *)
}

type aws_workspaces_directory

val aws_workspaces_directory :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  directory_id:string prop ->
  unit ->
  aws_workspaces_directory

val yojson_of_aws_workspaces_directory :
  aws_workspaces_directory -> json

(** RESOURCE REGISTRATION *)

type t = private {
  alias : string prop;
  customer_user_name : string prop;
  directory_id : string prop;
  directory_name : string prop;
  directory_type : string prop;
  dns_ip_addresses : string list prop;
  iam_role_id : string prop;
  id : string prop;
  ip_group_ids : string list prop;
  registration_code : string prop;
  self_service_permissions : self_service_permissions list prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  workspace_access_properties :
    workspace_access_properties list prop;
  workspace_creation_properties :
    workspace_creation_properties list prop;
  workspace_security_group_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  directory_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  directory_id:string prop ->
  string ->
  t Tf_core.resource
