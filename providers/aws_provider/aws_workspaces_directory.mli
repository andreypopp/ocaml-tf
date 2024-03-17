(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_workspaces_directory__self_service_permissions
type aws_workspaces_directory__workspace_access_properties
type aws_workspaces_directory__workspace_creation_properties
type aws_workspaces_directory

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

val aws_workspaces_directory :
  ?id:string prop ->
  ?ip_group_ids:string prop list ->
  ?subnet_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  directory_id:string prop ->
  self_service_permissions:
    aws_workspaces_directory__self_service_permissions list ->
  workspace_access_properties:
    aws_workspaces_directory__workspace_access_properties list ->
  workspace_creation_properties:
    aws_workspaces_directory__workspace_creation_properties list ->
  string ->
  t
