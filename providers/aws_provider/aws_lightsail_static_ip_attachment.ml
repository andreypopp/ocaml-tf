(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_static_ip_attachment = {
  id : string prop option; [@option]  (** id *)
  instance_name : string prop;  (** instance_name *)
  static_ip_name : string prop;  (** static_ip_name *)
}
[@@deriving yojson_of]
(** aws_lightsail_static_ip_attachment *)

type t = {
  id : string prop;
  instance_name : string prop;
  ip_address : string prop;
  static_ip_name : string prop;
}

let aws_lightsail_static_ip_attachment ?id ~instance_name
    ~static_ip_name __resource_id =
  let __resource_type = "aws_lightsail_static_ip_attachment" in
  let __resource =
    ({ id; instance_name; static_ip_name }
      : aws_lightsail_static_ip_attachment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_static_ip_attachment __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       instance_name =
         Prop.computed __resource_type __resource_id "instance_name";
       ip_address =
         Prop.computed __resource_type __resource_id "ip_address";
       static_ip_name =
         Prop.computed __resource_type __resource_id "static_ip_name";
     }
      : t)
  in
  __resource_attributes
