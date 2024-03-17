(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_transfer_user__home_directory_mappings = {
  entry : string prop;  (** entry *)
  target : string prop;  (** target *)
}
[@@deriving yojson_of]
(** aws_transfer_user__home_directory_mappings *)

type aws_transfer_user__posix_profile = {
  gid : float prop;  (** gid *)
  secondary_gids : float prop list option; [@option]
      (** secondary_gids *)
  uid : float prop;  (** uid *)
}
[@@deriving yojson_of]
(** aws_transfer_user__posix_profile *)

type aws_transfer_user__timeouts = {
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_transfer_user__timeouts *)

type aws_transfer_user = {
  home_directory : string prop option; [@option]
      (** home_directory *)
  home_directory_type : string prop option; [@option]
      (** home_directory_type *)
  id : string prop option; [@option]  (** id *)
  policy : string prop option; [@option]  (** policy *)
  role : string prop;  (** role *)
  server_id : string prop;  (** server_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  user_name : string prop;  (** user_name *)
  home_directory_mappings :
    aws_transfer_user__home_directory_mappings list;
  posix_profile : aws_transfer_user__posix_profile list;
  timeouts : aws_transfer_user__timeouts option;
}
[@@deriving yojson_of]
(** aws_transfer_user *)

type t = {
  arn : string prop;
  home_directory : string prop;
  home_directory_type : string prop;
  id : string prop;
  policy : string prop;
  role : string prop;
  server_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_name : string prop;
}

let aws_transfer_user ?home_directory ?home_directory_type ?id
    ?policy ?tags ?tags_all ?timeouts ~role ~server_id ~user_name
    ~home_directory_mappings ~posix_profile __resource_id =
  let __resource_type = "aws_transfer_user" in
  let __resource =
    ({
       home_directory;
       home_directory_type;
       id;
       policy;
       role;
       server_id;
       tags;
       tags_all;
       user_name;
       home_directory_mappings;
       posix_profile;
       timeouts;
     }
      : aws_transfer_user)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_transfer_user __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
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
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       user_name =
         Prop.computed __resource_type __resource_id "user_name";
     }
      : t)
  in
  __resource_attributes
