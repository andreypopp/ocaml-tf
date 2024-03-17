(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_datasync_location_fsx_openzfs_file_system__protocol__nfs__mount_options = {
  version : string option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** aws_datasync_location_fsx_openzfs_file_system__protocol__nfs__mount_options *)

type aws_datasync_location_fsx_openzfs_file_system__protocol__nfs = {
  mount_options :
    aws_datasync_location_fsx_openzfs_file_system__protocol__nfs__mount_options
    list;
}
[@@deriving yojson_of]
(** aws_datasync_location_fsx_openzfs_file_system__protocol__nfs *)

type aws_datasync_location_fsx_openzfs_file_system__protocol = {
  nfs :
    aws_datasync_location_fsx_openzfs_file_system__protocol__nfs list;
}
[@@deriving yojson_of]
(** aws_datasync_location_fsx_openzfs_file_system__protocol *)

type aws_datasync_location_fsx_openzfs_file_system = {
  fsx_filesystem_arn : string;  (** fsx_filesystem_arn *)
  security_group_arns : string list;  (** security_group_arns *)
  tags : (string * string) list option; [@option]  (** tags *)
  protocol :
    aws_datasync_location_fsx_openzfs_file_system__protocol list;
}
[@@deriving yojson_of]
(** aws_datasync_location_fsx_openzfs_file_system *)

let aws_datasync_location_fsx_openzfs_file_system ?tags
    ~fsx_filesystem_arn ~security_group_arns ~protocol __resource_id
    =
  let __resource_type =
    "aws_datasync_location_fsx_openzfs_file_system"
  in
  let __resource =
    { fsx_filesystem_arn; security_group_arns; tags; protocol }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_datasync_location_fsx_openzfs_file_system
       __resource);
  ()
