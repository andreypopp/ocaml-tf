(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type self_service_permissions

val self_service_permissions :
  ?change_compute_type:bool prop ->
  ?increase_volume_size:bool prop ->
  ?rebuild_workspace:bool prop ->
  ?restart_workspace:bool prop ->
  ?switch_running_mode:bool prop ->
  unit ->
  self_service_permissions

type workspace_access_properties

val workspace_access_properties :
  ?device_type_android:string prop ->
  ?device_type_chromeos:string prop ->
  ?device_type_ios:string prop ->
  ?device_type_linux:string prop ->
  ?device_type_osx:string prop ->
  ?device_type_web:string prop ->
  ?device_type_windows:string prop ->
  ?device_type_zeroclient:string prop ->
  unit ->
  workspace_access_properties

type workspace_creation_properties

val workspace_creation_properties :
  ?custom_security_group_id:string prop ->
  ?default_ou:string prop ->
  ?enable_internet_access:bool prop ->
  ?enable_maintenance_mode:bool prop ->
  ?user_enabled_as_local_administrator:bool prop ->
  unit ->
  workspace_creation_properties

type aws_workspaces_directory

val aws_workspaces_directory :
  ?id:string prop ->
  ?ip_group_ids:string prop list ->
  ?subnet_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  directory_id:string prop ->
  self_service_permissions:self_service_permissions list ->
  workspace_access_properties:workspace_access_properties list ->
  workspace_creation_properties:workspace_creation_properties list ->
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
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  workspace_security_group_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?ip_group_ids:string prop list ->
  ?subnet_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  directory_id:string prop ->
  self_service_permissions:self_service_permissions list ->
  workspace_access_properties:workspace_access_properties list ->
  workspace_creation_properties:workspace_creation_properties list ->
  string ->
  t
