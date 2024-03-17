(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_datasync_location_fsx_lustre_file_system = {
  fsx_filesystem_arn : string;  (** fsx_filesystem_arn *)
  security_group_arns : string list;  (** security_group_arns *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_datasync_location_fsx_lustre_file_system *)

let aws_datasync_location_fsx_lustre_file_system ?tags
    ~fsx_filesystem_arn ~security_group_arns __resource_id =
  let __resource_type =
    "aws_datasync_location_fsx_lustre_file_system"
  in
  let __resource =
    { fsx_filesystem_arn; security_group_arns; tags }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_datasync_location_fsx_lustre_file_system
       __resource);
  ()
