(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_workspaces_directory__self_service_permissions
type aws_workspaces_directory__workspace_access_properties
type aws_workspaces_directory__workspace_creation_properties
type aws_workspaces_directory

val aws_workspaces_directory :
  ?id:string ->
  ?ip_group_ids:string list ->
  ?subnet_ids:string list ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  directory_id:string ->
  self_service_permissions:
    aws_workspaces_directory__self_service_permissions list ->
  workspace_access_properties:
    aws_workspaces_directory__workspace_access_properties list ->
  workspace_creation_properties:
    aws_workspaces_directory__workspace_creation_properties list ->
  string ->
  unit
