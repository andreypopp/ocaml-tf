(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_resolver_rule_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_route53_resolver_rule_association__timeouts *)

type aws_route53_resolver_rule_association = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  resolver_rule_id : string prop;  (** resolver_rule_id *)
  vpc_id : string prop;  (** vpc_id *)
  timeouts : aws_route53_resolver_rule_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_route53_resolver_rule_association *)

let aws_route53_resolver_rule_association ?id ?name ?timeouts
    ~resolver_rule_id ~vpc_id __resource_id =
  let __resource_type = "aws_route53_resolver_rule_association" in
  let __resource =
    { id; name; resolver_rule_id; vpc_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_resolver_rule_association __resource);
  ()
