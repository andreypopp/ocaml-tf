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

type t = {
  arn : string prop;
  creation_time : string prop;
  domain : string prop;
  fsx_filesystem_arn : string prop;
  id : string prop;
  password : string prop;
  security_group_arns : string list prop;
  subdirectory : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  uri : string prop;
  user : string prop;
}

let aws_datasync_location_fsx_windows_file_system ?domain ?id
    ?subdirectory ?tags ?tags_all ~fsx_filesystem_arn ~password
    ~security_group_arns ~user __resource_id =
  let __resource_type =
    "aws_datasync_location_fsx_windows_file_system"
  in
  let __resource =
    ({
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
      : aws_datasync_location_fsx_windows_file_system)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_datasync_location_fsx_windows_file_system
       __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       creation_time =
         Prop.computed __resource_type __resource_id "creation_time";
       domain = Prop.computed __resource_type __resource_id "domain";
       fsx_filesystem_arn =
         Prop.computed __resource_type __resource_id
           "fsx_filesystem_arn";
       id = Prop.computed __resource_type __resource_id "id";
       password =
         Prop.computed __resource_type __resource_id "password";
       security_group_arns =
         Prop.computed __resource_type __resource_id
           "security_group_arns";
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
