(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_datasync_location_smb__mount_options = {
  version : string option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** aws_datasync_location_smb__mount_options *)

type aws_datasync_location_smb = {
  agent_arns : string list;  (** agent_arns *)
  password : string;  (** password *)
  server_hostname : string;  (** server_hostname *)
  subdirectory : string;  (** subdirectory *)
  tags : (string * string) list option; [@option]  (** tags *)
  user : string;  (** user *)
  mount_options : aws_datasync_location_smb__mount_options list;
}
[@@deriving yojson_of]
(** aws_datasync_location_smb *)

let aws_datasync_location_smb ?tags ~agent_arns ~password
    ~server_hostname ~subdirectory ~user ~mount_options __resource_id
    =
  let __resource_type = "aws_datasync_location_smb" in
  let __resource =
    {
      agent_arns;
      password;
      server_hostname;
      subdirectory;
      tags;
      user;
      mount_options;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_datasync_location_smb __resource);
  ()
