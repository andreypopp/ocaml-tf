(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_efs_access_point__posix_user = {
  gid : float;  (** gid *)
  secondary_gids : float list option; [@option]
      (** secondary_gids *)
  uid : float;  (** uid *)
}
[@@deriving yojson_of]
(** aws_efs_access_point__posix_user *)

type aws_efs_access_point__root_directory__creation_info = {
  owner_gid : float;  (** owner_gid *)
  owner_uid : float;  (** owner_uid *)
  permissions : string;  (** permissions *)
}
[@@deriving yojson_of]
(** aws_efs_access_point__root_directory__creation_info *)

type aws_efs_access_point__root_directory = {
  path : string option; [@option]  (** path *)
  creation_info :
    aws_efs_access_point__root_directory__creation_info list;
}
[@@deriving yojson_of]
(** aws_efs_access_point__root_directory *)

type aws_efs_access_point = {
  file_system_id : string;  (** file_system_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  posix_user : aws_efs_access_point__posix_user list;
  root_directory : aws_efs_access_point__root_directory list;
}
[@@deriving yojson_of]
(** aws_efs_access_point *)

let aws_efs_access_point ?tags ~file_system_id ~posix_user
    ~root_directory __resource_id =
  let __resource_type = "aws_efs_access_point" in
  let __resource =
    { file_system_id; tags; posix_user; root_directory }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_efs_access_point __resource);
  ()
