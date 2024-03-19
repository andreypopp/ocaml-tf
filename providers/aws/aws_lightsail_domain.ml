(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_domain = {
  domain_name : string prop;  (** domain_name *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_lightsail_domain *)

let aws_lightsail_domain ?id ~domain_name () : aws_lightsail_domain =
  { domain_name; id }

type t = {
  arn : string prop;
  domain_name : string prop;
  id : string prop;
}

let register ?tf_module ?id ~domain_name __resource_id =
  let __resource_type = "aws_lightsail_domain" in
  let __resource = aws_lightsail_domain ?id ~domain_name () in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_domain __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       domain_name =
         Prop.computed __resource_type __resource_id "domain_name";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
