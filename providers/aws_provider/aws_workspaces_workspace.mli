(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_workspaces_workspace__timeouts
type aws_workspaces_workspace__workspace_properties
type aws_workspaces_workspace

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
  unit
