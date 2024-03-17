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

type t = {
  arn : string prop;
  created_at : string prop;
  dns_name : string prop;
  health_check_path : string prop;
  id : string prop;
  instance_port : float prop;
  ip_address_type : string prop;
  name : string prop;
  protocol : string prop;
  public_ports : float list prop;
  support_code : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_lightsail_lb ?health_check_path ?id ?ip_address_type ?tags
    ?tags_all ~instance_port ~name __resource_id =
  let __resource_type = "aws_lightsail_lb" in
  let __resource =
    ({
       health_check_path;
       id;
       instance_port;
       ip_address_type;
       name;
       tags;
       tags_all;
     }
      : aws_lightsail_lb)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_lb __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       created_at =
         Prop.computed __resource_type __resource_id "created_at";
       dns_name =
         Prop.computed __resource_type __resource_id "dns_name";
       health_check_path =
         Prop.computed __resource_type __resource_id
           "health_check_path";
       id = Prop.computed __resource_type __resource_id "id";
       instance_port =
         Prop.computed __resource_type __resource_id "instance_port";
       ip_address_type =
         Prop.computed __resource_type __resource_id
           "ip_address_type";
       name = Prop.computed __resource_type __resource_id "name";
       protocol =
         Prop.computed __resource_type __resource_id "protocol";
       public_ports =
         Prop.computed __resource_type __resource_id "public_ports";
       support_code =
         Prop.computed __resource_type __resource_id "support_code";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
