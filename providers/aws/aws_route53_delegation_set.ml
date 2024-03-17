(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_delegation_set = {
  id : string prop option; [@option]  (** id *)
  reference_name : string prop option; [@option]
      (** reference_name *)
}
[@@deriving yojson_of]
(** aws_route53_delegation_set *)

type t = {
  arn : string prop;
  id : string prop;
  name_servers : string list prop;
  reference_name : string prop;
}

let aws_route53_delegation_set ?id ?reference_name __resource_id =
  let __resource_type = "aws_route53_delegation_set" in
  let __resource =
    ({ id; reference_name } : aws_route53_delegation_set)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_delegation_set __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name_servers =
         Prop.computed __resource_type __resource_id "name_servers";
       reference_name =
         Prop.computed __resource_type __resource_id "reference_name";
     }
      : t)
  in
  __resource_attributes
