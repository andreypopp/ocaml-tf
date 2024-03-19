(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_route53_resolver_rule_association = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  resolver_rule_id : string prop;  (** resolver_rule_id *)
  vpc_id : string prop;  (** vpc_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_route53_resolver_rule_association *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_route53_resolver_rule_association ?id ?name ?timeouts
    ~resolver_rule_id ~vpc_id () :
    aws_route53_resolver_rule_association =
  { id; name; resolver_rule_id; vpc_id; timeouts }

type t = {
  id : string prop;
  name : string prop;
  resolver_rule_id : string prop;
  vpc_id : string prop;
}

let register ?tf_module ?id ?name ?timeouts ~resolver_rule_id ~vpc_id
    __resource_id =
  let __resource_type = "aws_route53_resolver_rule_association" in
  let __resource =
    aws_route53_resolver_rule_association ?id ?name ?timeouts
      ~resolver_rule_id ~vpc_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_resolver_rule_association __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resolver_rule_id =
         Prop.computed __resource_type __resource_id
           "resolver_rule_id";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
     }
      : t)
  in
  __resource_attributes
