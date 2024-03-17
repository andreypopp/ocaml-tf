(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_datasync_location_smb__mount_options = {
  version : string prop option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** aws_datasync_location_smb__mount_options *)

type aws_datasync_location_smb = {
  agent_arns : string prop list;  (** agent_arns *)
  domain : string prop option; [@option]  (** domain *)
  id : string prop option; [@option]  (** id *)
  password : string prop;  (** password *)
  server_hostname : string prop;  (** server_hostname *)
  subdirectory : string prop;  (** subdirectory *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  user : string prop;  (** user *)
  mount_options : aws_datasync_location_smb__mount_options list;
}
[@@deriving yojson_of]
(** aws_datasync_location_smb *)

let aws_datasync_location_smb ?domain ?id ?tags ?tags_all ~agent_arns
    ~password ~server_hostname ~subdirectory ~user ~mount_options
    __resource_id =
  let __resource_type = "aws_datasync_location_smb" in
  let __resource =
    {
      agent_arns;
      domain;
      id;
      password;
      server_hostname;
      subdirectory;
      tags;
      tags_all;
      user;
      mount_options;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_datasync_location_smb __resource);
  ()
