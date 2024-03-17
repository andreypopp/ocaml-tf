(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_zone_association = {
  id : string prop option; [@option]  (** id *)
  vpc_id : string prop;  (** vpc_id *)
  vpc_region : string prop option; [@option]  (** vpc_region *)
  zone_id : string prop;  (** zone_id *)
}
[@@deriving yojson_of]
(** aws_route53_zone_association *)

type t = {
  id : string prop;
  owning_account : string prop;
  vpc_id : string prop;
  vpc_region : string prop;
  zone_id : string prop;
}

let aws_route53_zone_association ?id ?vpc_region ~vpc_id ~zone_id
    __resource_id =
  let __resource_type = "aws_route53_zone_association" in
  let __resource =
    ({ id; vpc_id; vpc_region; zone_id }
      : aws_route53_zone_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_zone_association __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       owning_account =
         Prop.computed __resource_type __resource_id "owning_account";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
       vpc_region =
         Prop.computed __resource_type __resource_id "vpc_region";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
