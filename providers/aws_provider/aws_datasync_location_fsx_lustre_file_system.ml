(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_datasync_location_fsx_lustre_file_system = {
  fsx_filesystem_arn : string prop;  (** fsx_filesystem_arn *)
  id : string prop option; [@option]  (** id *)
  security_group_arns : string prop list;  (** security_group_arns *)
  subdirectory : string prop option; [@option]  (** subdirectory *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_datasync_location_fsx_lustre_file_system *)

let aws_datasync_location_fsx_lustre_file_system ?id ?subdirectory
    ?tags ?tags_all ~fsx_filesystem_arn ~security_group_arns
    __resource_id =
  let __resource_type =
    "aws_datasync_location_fsx_lustre_file_system"
  in
  let __resource =
    {
      fsx_filesystem_arn;
      id;
      security_group_arns;
      subdirectory;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_datasync_location_fsx_lustre_file_system
       __resource);
  ()
