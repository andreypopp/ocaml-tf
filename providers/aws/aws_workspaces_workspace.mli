(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type workspace_properties

val workspace_properties :
  ?compute_type_name:string prop ->
  ?root_volume_size_gib:float prop ->
  ?running_mode:string prop ->
  ?running_mode_auto_stop_timeout_in_minutes:float prop ->
  ?user_volume_size_gib:float prop ->
  unit ->
  workspace_properties

type aws_workspaces_workspace

val aws_workspaces_workspace :
  ?id:string prop ->
  ?root_volume_encryption_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?user_volume_encryption_enabled:bool prop ->
  ?volume_encryption_key:string prop ->
  ?timeouts:timeouts ->
  ?workspace_properties:workspace_properties list ->
  bundle_id:string prop ->
  directory_id:string prop ->
  user_name:string prop ->
  unit ->
  aws_workspaces_workspace

val yojson_of_aws_workspaces_workspace :
  aws_workspaces_workspace -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  bundle_id : string prop;
  computer_name : string prop;
  directory_id : string prop;
  id : string prop;
  ip_address : string prop;
  root_volume_encryption_enabled : bool prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_name : string prop;
  user_volume_encryption_enabled : bool prop;
  volume_encryption_key : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?root_volume_encryption_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?user_volume_encryption_enabled:bool prop ->
  ?volume_encryption_key:string prop ->
  ?timeouts:timeouts ->
  ?workspace_properties:workspace_properties list ->
  bundle_id:string prop ->
  directory_id:string prop ->
  user_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?root_volume_encryption_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?user_volume_encryption_enabled:bool prop ->
  ?volume_encryption_key:string prop ->
  ?timeouts:timeouts ->
  ?workspace_properties:workspace_properties list ->
  bundle_id:string prop ->
  directory_id:string prop ->
  user_name:string prop ->
  string ->
  t Tf_core.resource
