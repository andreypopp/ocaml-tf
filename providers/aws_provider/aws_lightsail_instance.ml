(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_instance__add_on = {
  snapshot_time : string;  (** snapshot_time *)
  status : string;  (** status *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_lightsail_instance__add_on *)

type aws_lightsail_instance = {
  availability_zone : string;  (** availability_zone *)
  blueprint_id : string;  (** blueprint_id *)
  bundle_id : string;  (** bundle_id *)
  id : string option; [@option]  (** id *)
  ip_address_type : string option; [@option]  (** ip_address_type *)
  key_pair_name : string option; [@option]  (** key_pair_name *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  user_data : string option; [@option]  (** user_data *)
  add_on : aws_lightsail_instance__add_on list;
}
[@@deriving yojson_of]
(** aws_lightsail_instance *)

let aws_lightsail_instance ?id ?ip_address_type ?key_pair_name ?tags
    ?tags_all ?user_data ~availability_zone ~blueprint_id ~bundle_id
    ~name ~add_on __resource_id =
  let __resource_type = "aws_lightsail_instance" in
  let __resource =
    {
      availability_zone;
      blueprint_id;
      bundle_id;
      id;
      ip_address_type;
      key_pair_name;
      name;
      tags;
      tags_all;
      user_data;
      add_on;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_instance __resource);
  ()
