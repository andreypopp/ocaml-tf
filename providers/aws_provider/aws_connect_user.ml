(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_connect_user__identity_info = {
  email : string prop option; [@option]  (** email *)
  first_name : string prop option; [@option]  (** first_name *)
  last_name : string prop option; [@option]  (** last_name *)
}
[@@deriving yojson_of]
(** aws_connect_user__identity_info *)

type aws_connect_user__phone_config = {
  after_contact_work_time_limit : float prop option; [@option]
      (** after_contact_work_time_limit *)
  auto_accept : bool prop option; [@option]  (** auto_accept *)
  desk_phone_number : string prop option; [@option]
      (** desk_phone_number *)
  phone_type : string prop;  (** phone_type *)
}
[@@deriving yojson_of]
(** aws_connect_user__phone_config *)

type aws_connect_user = {
  directory_user_id : string prop option; [@option]
      (** directory_user_id *)
  hierarchy_group_id : string prop option; [@option]
      (** hierarchy_group_id *)
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;  (** instance_id *)
  name : string prop;  (** name *)
  password : string prop option; [@option]  (** password *)
  routing_profile_id : string prop;  (** routing_profile_id *)
  security_profile_ids : string prop list;
      (** security_profile_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
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
