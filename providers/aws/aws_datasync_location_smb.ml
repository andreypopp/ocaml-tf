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

type t = {
  agent_arns : string list prop;
  arn : string prop;
  domain : string prop;
  id : string prop;
  password : string prop;
  server_hostname : string prop;
  subdirectory : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  uri : string prop;
  user : string prop;
}

let aws_datasync_location_smb ?domain ?id ?tags ?tags_all ~agent_arns
    ~password ~server_hostname ~subdirectory ~user ~mount_options
    __resource_id =
  let __resource_type = "aws_datasync_location_smb" in
  let __resource =
    ({
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
      : aws_datasync_location_smb)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_datasync_location_smb __resource);
  let __resource_attributes =
    ({
       agent_arns =
         Prop.computed __resource_type __resource_id "agent_arns";
       arn = Prop.computed __resource_type __resource_id "arn";
       domain = Prop.computed __resource_type __resource_id "domain";
       id = Prop.computed __resource_type __resource_id "id";
       password =
         Prop.computed __resource_type __resource_id "password";
       server_hostname =
         Prop.computed __resource_type __resource_id
           "server_hostname";
       subdirectory =
         Prop.computed __resource_type __resource_id "subdirectory";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       uri = Prop.computed __resource_type __resource_id "uri";
       user = Prop.computed __resource_type __resource_id "user";
     }
      : t)
  in
  __resource_attributes
