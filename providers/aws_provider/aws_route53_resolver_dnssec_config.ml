(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_resolver_dnssec_config = {
  id : string prop option; [@option]  (** id *)
  resource_id : string prop;  (** resource_id *)
}
[@@deriving yojson_of]
(** aws_route53_resolver_dnssec_config *)

type t = {
  arn : string prop;
  id : string prop;
  owner_id : string prop;
  resource_id : string prop;
  validation_status : string prop;
}

let aws_route53_resolver_dnssec_config ?id ~resource_id __resource_id
    =
  let __resource_type = "aws_route53_resolver_dnssec_config" in
  let __resource =
    ({ id; resource_id } : aws_route53_resolver_dnssec_config)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_resolver_dnssec_config __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       owner_id =
         Prop.computed __resource_type __resource_id "owner_id";
       resource_id =
         Prop.computed __resource_type __resource_id "resource_id";
       validation_status =
         Prop.computed __resource_type __resource_id
           "validation_status";
     }
      : t)
  in
  __resource_attributes
