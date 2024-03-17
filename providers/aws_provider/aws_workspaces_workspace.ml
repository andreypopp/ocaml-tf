(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_workspaces_workspace__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_workspaces_workspace__timeouts *)

type aws_workspaces_workspace__workspace_properties = {
  compute_type_name : string prop option; [@option]
      (** compute_type_name *)
  root_volume_size_gib : float prop option; [@option]
      (** root_volume_size_gib *)
  running_mode : string prop option; [@option]  (** running_mode *)
  running_mode_auto_stop_timeout_in_minutes : float prop option;
      [@option]
      (** running_mode_auto_stop_timeout_in_minutes *)
  user_volume_size_gib : float prop option; [@option]
      (** user_volume_size_gib *)
}
[@@deriving yojson_of]
(** aws_workspaces_workspace__workspace_properties *)

type aws_workspaces_workspace = {
  bundle_id : string prop;  (** bundle_id *)
  directory_id : string prop;  (** directory_id *)
  id : string prop option; [@option]  (** id *)
  root_volume_encryption_enabled : bool prop option; [@option]
      (** root_volume_encryption_enabled *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  user_name : string prop;  (** user_name *)
  user_volume_encryption_enabled : bool prop option; [@option]
      (** user_volume_encryption_enabled *)
  volume_encryption_key : string prop option; [@option]
      (** volume_encryption_key *)
  timeouts : aws_workspaces_workspace__timeouts option;
  workspace_properties :
    aws_workspaces_workspace__workspace_properties list;
}
[@@deriving yojson_of]
(** aws_workspaces_workspace *)

let aws_workspaces_workspace ?id ?root_volume_encryption_enabled
    ?tags ?tags_all ?user_volume_encryption_enabled
    ?volume_encryption_key ?timeouts ~bundle_id ~directory_id
    ~user_name ~workspace_properties __resource_id =
  let __resource_type = "aws_workspaces_workspace" in
  let __resource =
    {
      bundle_id;
      directory_id;
      id;
      root_volume_encryption_enabled;
      tags;
      tags_all;
      user_name;
      user_volume_encryption_enabled;
      volume_encryption_key;
      timeouts;
      workspace_properties;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_workspaces_workspace __resource);
  ()
