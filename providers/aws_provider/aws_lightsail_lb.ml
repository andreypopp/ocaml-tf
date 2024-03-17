(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_lb = {
  health_check_path : string prop option; [@option]
      (** health_check_path *)
  id : string prop option; [@option]  (** id *)
  instance_port : float prop;  (** instance_port *)
  ip_address_type : string prop option; [@option]
      (** ip_address_type *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_lightsail_lb *)

let aws_lightsail_lb ?health_check_path ?id ?ip_address_type ?tags
    ?tags_all ~instance_port ~name __resource_id =
  let __resource_type = "aws_lightsail_lb" in
  let __resource =
    {
      health_check_path;
      id;
      instance_port;
      ip_address_type;
      name;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_lb __resource);
  ()
