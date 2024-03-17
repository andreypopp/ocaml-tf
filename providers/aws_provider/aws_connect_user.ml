(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_connect_user__identity_info = {
  email : string option; [@option]  (** email *)
  first_name : string option; [@option]  (** first_name *)
  last_name : string option; [@option]  (** last_name *)
}
[@@deriving yojson_of]
(** aws_connect_user__identity_info *)

type aws_connect_user__phone_config = {
  after_contact_work_time_limit : float option; [@option]
      (** after_contact_work_time_limit *)
  auto_accept : bool option; [@option]  (** auto_accept *)
  desk_phone_number : string option; [@option]
      (** desk_phone_number *)
  phone_type : string;  (** phone_type *)
}
[@@deriving yojson_of]
(** aws_connect_user__phone_config *)

type aws_connect_user = {
  directory_user_id : string option; [@option]
      (** directory_user_id *)
  hierarchy_group_id : string option; [@option]
      (** hierarchy_group_id *)
  id : string option; [@option]  (** id *)
  instance_id : string;  (** instance_id *)
  name : string;  (** name *)
  password : string option; [@option]  (** password *)
  routing_profile_id : string;  (** routing_profile_id *)
  security_profile_ids : string list;  (** security_profile_ids *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  identity_info : aws_connect_user__identity_info list;
  phone_config : aws_connect_user__phone_config list;
}
[@@deriving yojson_of]
(** aws_connect_user *)

let aws_connect_user ?directory_user_id ?hierarchy_group_id ?id
    ?password ?tags ?tags_all ~instance_id ~name ~routing_profile_id
    ~security_profile_ids ~identity_info ~phone_config __resource_id
    =
  let __resource_type = "aws_connect_user" in
  let __resource =
    {
      directory_user_id;
      hierarchy_group_id;
      id;
      instance_id;
      name;
      password;
      routing_profile_id;
      security_profile_ids;
      tags;
      tags_all;
      identity_info;
      phone_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_connect_user __resource);
  ()
