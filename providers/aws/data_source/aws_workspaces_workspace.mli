(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type workspace_properties = {
  compute_type_name : string prop;  (** compute_type_name *)
  root_volume_size_gib : float prop;  (** root_volume_size_gib *)
  running_mode : string prop;  (** running_mode *)
  running_mode_auto_stop_timeout_in_minutes : float prop;
      (** running_mode_auto_stop_timeout_in_minutes *)
  user_volume_size_gib : float prop;  (** user_volume_size_gib *)
}

type aws_workspaces_workspace

val aws_workspaces_workspace :
  ?directory_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?user_name:string prop ->
  ?workspace_id:string prop ->
  unit ->
  aws_workspaces_workspace

val yojson_of_aws_workspaces_workspace :
  aws_workspaces_workspace -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bundle_id : string prop;
  computer_name : string prop;
  directory_id : string prop;
  id : string prop;
  ip_address : string prop;
  root_volume_encryption_enabled : bool prop;
  state : string prop;
  tags : (string * string) list prop;
  user_name : string prop;
  user_volume_encryption_enabled : bool prop;
  volume_encryption_key : string prop;
  workspace_id : string prop;
  workspace_properties : workspace_properties list prop;
}

val register :
  ?tf_module:tf_module ->
  ?directory_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?user_name:string prop ->
  ?workspace_id:string prop ->
  string ->
  t

val make :
  ?directory_id:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?user_name:string prop ->
  ?workspace_id:string prop ->
  string ->
  t Tf_core.resource
