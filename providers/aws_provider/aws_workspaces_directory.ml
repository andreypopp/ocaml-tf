(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_workspaces_directory__self_service_permissions = {
  change_compute_type : bool option; [@option]
      (** change_compute_type *)
  increase_volume_size : bool option; [@option]
      (** increase_volume_size *)
  rebuild_workspace : bool option; [@option]
      (** rebuild_workspace *)
  restart_workspace : bool option; [@option]
      (** restart_workspace *)
  switch_running_mode : bool option; [@option]
      (** switch_running_mode *)
}
[@@deriving yojson_of]
(** aws_workspaces_directory__self_service_permissions *)

type aws_workspaces_directory__workspace_access_properties = {
  device_type_android : string option; [@option]
      (** device_type_android *)
  device_type_chromeos : string option; [@option]
      (** device_type_chromeos *)
  device_type_ios : string option; [@option]  (** device_type_ios *)
  device_type_linux : string option; [@option]
      (** device_type_linux *)
  device_type_osx : string option; [@option]  (** device_type_osx *)
  device_type_web : string option; [@option]  (** device_type_web *)
  device_type_windows : string option; [@option]
      (** device_type_windows *)
  device_type_zeroclient : string option; [@option]
      (** device_type_zeroclient *)
}
[@@deriving yojson_of]
(** aws_workspaces_directory__workspace_access_properties *)

type aws_workspaces_directory__workspace_creation_properties = {
  custom_security_group_id : string option; [@option]
      (** custom_security_group_id *)
  default_ou : string option; [@option]  (** default_ou *)
  enable_internet_access : bool option; [@option]
      (** enable_internet_access *)
  enable_maintenance_mode : bool option; [@option]
      (** enable_maintenance_mode *)
  user_enabled_as_local_administrator : bool option; [@option]
      (** user_enabled_as_local_administrator *)
}
[@@deriving yojson_of]
(** aws_workspaces_directory__workspace_creation_properties *)

type aws_workspaces_directory = {
  directory_id : string;  (** directory_id *)
  id : string option; [@option]  (** id *)
  ip_group_ids : string list option; [@option]  (** ip_group_ids *)
  subnet_ids : string list option; [@option]  (** subnet_ids *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  self_service_permissions :
    aws_workspaces_directory__self_service_permissions list;
  workspace_access_properties :
    aws_workspaces_directory__workspace_access_properties list;
  workspace_creation_properties :
    aws_workspaces_directory__workspace_creation_properties list;
}
[@@deriving yojson_of]
(** aws_workspaces_directory *)

let aws_workspaces_directory ?id ?ip_group_ids ?subnet_ids ?tags
    ?tags_all ~directory_id ~self_service_permissions
    ~workspace_access_properties ~workspace_creation_properties
    __resource_id =
  let __resource_type = "aws_workspaces_directory" in
  let __resource =
    {
      directory_id;
      id;
      ip_group_ids;
      subnet_ids;
      tags;
      tags_all;
      self_service_permissions;
      workspace_access_properties;
      workspace_creation_properties;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_workspaces_directory __resource);
  ()
