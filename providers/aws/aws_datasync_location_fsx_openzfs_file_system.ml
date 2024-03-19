(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type protocol__nfs__mount_options = {
  version : string prop option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** protocol__nfs__mount_options *)

type protocol__nfs = {
  mount_options : protocol__nfs__mount_options list;
}
[@@deriving yojson_of]
(** protocol__nfs *)

type protocol = { nfs : protocol__nfs list } [@@deriving yojson_of]
(** protocol *)

type aws_datasync_location_fsx_openzfs_file_system = {
  fsx_filesystem_arn : string prop;  (** fsx_filesystem_arn *)
  id : string prop option; [@option]  (** id *)
  security_group_arns : string prop list;  (** security_group_arns *)
  subdirectory : string prop option; [@option]  (** subdirectory *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  protocol : protocol list;
}
[@@deriving yojson_of]
(** aws_datasync_location_fsx_openzfs_file_system *)

let protocol__nfs__mount_options ?version () :
    protocol__nfs__mount_options =
  { version }

let protocol__nfs ~mount_options () : protocol__nfs =
  { mount_options }

let protocol ~nfs () : protocol = { nfs }

let aws_datasync_location_fsx_openzfs_file_system ?id ?subdirectory
    ?tags ?tags_all ~fsx_filesystem_arn ~security_group_arns
    ~protocol () : aws_datasync_location_fsx_openzfs_file_system =
  {
    fsx_filesystem_arn;
    id;
    security_group_arns;
    subdirectory;
    tags;
    tags_all;
    protocol;
  }

type t = {
  arn : string prop;
  creation_time : string prop;
  fsx_filesystem_arn : string prop;
  id : string prop;
  security_group_arns : string list prop;
  subdirectory : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  uri : string prop;
}

let register ?tf_module ?id ?subdirectory ?tags ?tags_all
    ~fsx_filesystem_arn ~security_group_arns ~protocol __resource_id
    =
  let __resource_type =
    "aws_datasync_location_fsx_openzfs_file_system"
  in
  let __resource =
    aws_datasync_location_fsx_openzfs_file_system ?id ?subdirectory
      ?tags ?tags_all ~fsx_filesystem_arn ~security_group_arns
      ~protocol ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_datasync_location_fsx_openzfs_file_system
       __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       creation_time =
         Prop.computed __resource_type __resource_id "creation_time";
       fsx_filesystem_arn =
         Prop.computed __resource_type __resource_id
           "fsx_filesystem_arn";
       id = Prop.computed __resource_type __resource_id "id";
       security_group_arns =
         Prop.computed __resource_type __resource_id
           "security_group_arns";
       subdirectory =
         Prop.computed __resource_type __resource_id "subdirectory";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       uri = Prop.computed __resource_type __resource_id "uri";
     }
      : t)
  in
  __resource_attributes
