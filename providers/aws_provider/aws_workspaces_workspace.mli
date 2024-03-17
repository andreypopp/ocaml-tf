(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_workspaces_workspace__timeouts
type aws_workspaces_workspace__workspace_properties
type aws_workspaces_workspace

type t = private {
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

val aws_workspaces_workspace :
  ?id:string prop ->
  ?root_volume_encryption_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?user_volume_encryption_enabled:bool prop ->
  ?volume_encryption_key:string prop ->
  ?timeouts:aws_workspaces_workspace__timeouts ->
  bundle_id:string prop ->
  directory_id:string prop ->
  user_name:string prop ->
  workspace_properties:
    aws_workspaces_workspace__workspace_properties list ->
  string ->
  t
