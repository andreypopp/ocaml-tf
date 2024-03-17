(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_vpc_association_authorization = {
  id : string prop option; [@option]  (** id *)
  vpc_id : string prop;  (** vpc_id *)
  vpc_region : string prop option; [@option]  (** vpc_region *)
  zone_id : string prop;  (** zone_id *)
}
[@@deriving yojson_of]
(** aws_route53_vpc_association_authorization *)

type t = {
  id : string prop;
  vpc_id : string prop;
  vpc_region : string prop;
  zone_id : string prop;
}

let aws_route53_vpc_association_authorization ?id ?vpc_region ~vpc_id
    ~zone_id __resource_id =
  let __resource_type =
    "aws_route53_vpc_association_authorization"
  in
  let __resource =
    ({ id; vpc_id; vpc_region; zone_id }
      : aws_route53_vpc_association_authorization)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_vpc_association_authorization __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
       vpc_region =
         Prop.computed __resource_type __resource_id "vpc_region";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
