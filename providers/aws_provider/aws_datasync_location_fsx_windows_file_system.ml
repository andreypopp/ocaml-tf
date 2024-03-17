(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_datasync_location_fsx_windows_file_system = {
  domain : string prop option; [@option]  (** domain *)
  fsx_filesystem_arn : string prop;  (** fsx_filesystem_arn *)
  id : string prop option; [@option]  (** id *)
  password : string prop;  (** password *)
  security_group_arns : string prop list;  (** security_group_arns *)
  subdirectory : string prop option; [@option]  (** subdirectory *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  user : string prop;  (** user *)
}
[@@deriving yojson_of]
(** aws_datasync_location_fsx_windows_file_system *)

let aws_datasync_location_fsx_windows_file_system ?domain ?id
    ?subdirectory ?tags ?tags_all ~fsx_filesystem_arn ~password
    ~security_group_arns ~user __resource_id =
  let __resource_type =
    "aws_datasync_location_fsx_windows_file_system"
  in
  let __resource =
    {
      domain;
      fsx_filesystem_arn;
      id;
      password;
      security_group_arns;
      subdirectory;
      tags;
      tags_all;
      user;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_datasync_location_fsx_windows_file_system
       __resource);
  ()
