(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_workspaces_workspace__timeouts
type aws_workspaces_workspace__workspace_properties
type aws_workspaces_workspace

val aws_workspaces_workspace :
  ?id:string ->
  ?root_volume_encryption_enabled:bool ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?user_volume_encryption_enabled:bool ->
  ?volume_encryption_key:string ->
  ?timeouts:aws_workspaces_workspace__timeouts ->
  bundle_id:string ->
  directory_id:string ->
  user_name:string ->
  workspace_properties:
    aws_workspaces_workspace__workspace_properties list ->
  string ->
  unit
