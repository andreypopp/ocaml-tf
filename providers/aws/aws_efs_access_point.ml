(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type posix_user = {
  gid : float prop;  (** gid *)
  secondary_gids : float prop list option; [@option]
      (** secondary_gids *)
  uid : float prop;  (** uid *)
}
[@@deriving yojson_of]
(** posix_user *)

type root_directory__creation_info = {
  owner_gid : float prop;  (** owner_gid *)
  owner_uid : float prop;  (** owner_uid *)
  permissions : string prop;  (** permissions *)
}
[@@deriving yojson_of]
(** root_directory__creation_info *)

type root_directory = {
  path : string prop option; [@option]  (** path *)
  creation_info : root_directory__creation_info list;
}
[@@deriving yojson_of]
(** root_directory *)

type aws_efs_access_point = {
  file_system_id : string prop;  (** file_system_id *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  posix_user : posix_user list;
  root_directory : root_directory list;
}
[@@deriving yojson_of]
(** aws_efs_access_point *)

let posix_user ?secondary_gids ~gid ~uid () : posix_user =
  { gid; secondary_gids; uid }

let root_directory__creation_info ~owner_gid ~owner_uid ~permissions
    () : root_directory__creation_info =
  { owner_gid; owner_uid; permissions }

let root_directory ?path ~creation_info () : root_directory =
  { path; creation_info }

let aws_efs_access_point ?id ?tags ?tags_all ~file_system_id
    ~posix_user ~root_directory () : aws_efs_access_point =
  { file_system_id; id; tags; tags_all; posix_user; root_directory }

type t = {
  arn : string prop;
  file_system_arn : string prop;
  file_system_id : string prop;
  id : string prop;
  owner_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?tags_all ~file_system_id
    ~posix_user ~root_directory __resource_id =
  let __resource_type = "aws_efs_access_point" in
  let __resource =
    aws_efs_access_point ?id ?tags ?tags_all ~file_system_id
      ~posix_user ~root_directory ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_efs_access_point __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       file_system_arn =
         Prop.computed __resource_type __resource_id
           "file_system_arn";
       file_system_id =
         Prop.computed __resource_type __resource_id "file_system_id";
       id = Prop.computed __resource_type __resource_id "id";
       owner_id =
         Prop.computed __resource_type __resource_id "owner_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
