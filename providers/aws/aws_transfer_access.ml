(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_transfer_access__home_directory_mappings = {
  entry : string prop;  (** entry *)
  target : string prop;  (** target *)
}
[@@deriving yojson_of]
(** aws_transfer_access__home_directory_mappings *)

type aws_transfer_access__posix_profile = {
  gid : float prop;  (** gid *)
  secondary_gids : float prop list option; [@option]
      (** secondary_gids *)
  uid : float prop;  (** uid *)
}
[@@deriving yojson_of]
(** aws_transfer_access__posix_profile *)

type aws_transfer_access = {
  external_id : string prop;  (** external_id *)
  home_directory : string prop option; [@option]
      (** home_directory *)
  home_directory_type : string prop option; [@option]
      (** home_directory_type *)
  id : string prop option; [@option]  (** id *)
  policy : string prop option; [@option]  (** policy *)
  role : string prop option; [@option]  (** role *)
  server_id : string prop;  (** server_id *)
  home_directory_mappings :
    aws_transfer_access__home_directory_mappings list;
  posix_profile : aws_transfer_access__posix_profile list;
}
[@@deriving yojson_of]
(** aws_transfer_access *)

type t = {
  external_id : string prop;
  home_directory : string prop;
  home_directory_type : string prop;
  id : string prop;
  policy : string prop;
  role : string prop;
  server_id : string prop;
}

let aws_transfer_access ?home_directory ?home_directory_type ?id
    ?policy ?role ~external_id ~server_id ~home_directory_mappings
    ~posix_profile __resource_id =
  let __resource_type = "aws_transfer_access" in
  let __resource =
    ({
       external_id;
       home_directory;
       home_directory_type;
       id;
       policy;
       role;
       server_id;
       home_directory_mappings;
       posix_profile;
     }
      : aws_transfer_access)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_transfer_access __resource);
  let __resource_attributes =
    ({
       external_id =
         Prop.computed __resource_type __resource_id "external_id";
       home_directory =
         Prop.computed __resource_type __resource_id "home_directory";
       home_directory_type =
         Prop.computed __resource_type __resource_id
           "home_directory_type";
       id = Prop.computed __resource_type __resource_id "id";
       policy = Prop.computed __resource_type __resource_id "policy";
       role = Prop.computed __resource_type __resource_id "role";
       server_id =
         Prop.computed __resource_type __resource_id "server_id";
     }
      : t)
  in
  __resource_attributes
