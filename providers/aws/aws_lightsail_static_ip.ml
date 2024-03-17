(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_static_ip = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_lightsail_static_ip *)

type t = {
  arn : string prop;
  id : string prop;
  ip_address : string prop;
  name : string prop;
  support_code : string prop;
}

let aws_lightsail_static_ip ?id ~name __resource_id =
  let __resource_type = "aws_lightsail_static_ip" in
  let __resource = ({ id; name } : aws_lightsail_static_ip) in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_static_ip __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       ip_address =
         Prop.computed __resource_type __resource_id "ip_address";
       name = Prop.computed __resource_type __resource_id "name";
       support_code =
         Prop.computed __resource_type __resource_id "support_code";
     }
      : t)
  in
  __resource_attributes
