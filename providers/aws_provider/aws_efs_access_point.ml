(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_efs_access_point__posix_user = {
  gid : float prop;  (** gid *)
  secondary_gids : float prop list option; [@option]
      (** secondary_gids *)
  uid : float prop;  (** uid *)
}
[@@deriving yojson_of]
(** aws_efs_access_point__posix_user *)

type aws_efs_access_point__root_directory__creation_info = {
  owner_gid : float prop;  (** owner_gid *)
  owner_uid : float prop;  (** owner_uid *)
  permissions : string prop;  (** permissions *)
}
[@@deriving yojson_of]
(** aws_efs_access_point__root_directory__creation_info *)

type aws_efs_access_point__root_directory = {
  path : string prop option; [@option]  (** path *)
  creation_info :
    aws_efs_access_point__root_directory__creation_info list;
}
[@@deriving yojson_of]
(** aws_efs_access_point__root_directory *)

type aws_efs_access_point = {
  file_system_id : string prop;  (** file_system_id *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  posix_user : aws_efs_access_point__posix_user list;
  root_directory : aws_efs_access_point__root_directory list;
}
[@@deriving yojson_of]
(** aws_efs_access_point *)

let aws_efs_access_point ?id ?tags ?tags_all ~file_system_id
    ~posix_user ~root_directory __resource_id =
  let __resource_type = "aws_efs_access_point" in
  let __resource =
    {
      file_system_id;
      id;
      tags;
      tags_all;
      posix_user;
      root_directory;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_efs_access_point __resource);
  ()
