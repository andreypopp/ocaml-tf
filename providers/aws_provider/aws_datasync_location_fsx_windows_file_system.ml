(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_datasync_location_fsx_windows_file_system = {
  domain : string option; [@option]  (** domain *)
  fsx_filesystem_arn : string;  (** fsx_filesystem_arn *)
  password : string;  (** password *)
  security_group_arns : string list;  (** security_group_arns *)
  tags : (string * string) list option; [@option]  (** tags *)
  user : string;  (** user *)
}
[@@deriving yojson_of]
(** aws_datasync_location_fsx_windows_file_system *)

let aws_datasync_location_fsx_windows_file_system ?domain ?tags
    ~fsx_filesystem_arn ~password ~security_group_arns ~user
    __resource_id =
  let __resource_type =
    "aws_datasync_location_fsx_windows_file_system"
  in
  let __resource =
    {
      domain;
      fsx_filesystem_arn;
      password;
      security_group_arns;
      tags;
      user;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_datasync_location_fsx_windows_file_system
       __resource);
  ()
