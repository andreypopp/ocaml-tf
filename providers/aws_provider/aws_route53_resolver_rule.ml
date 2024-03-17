(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_resolver_rule__target_ip = {
  ip : string;  (** ip *)
  port : float option; [@option]  (** port *)
  protocol : string option; [@option]  (** protocol *)
}
[@@deriving yojson_of]
(** aws_route53_resolver_rule__target_ip *)

type aws_route53_resolver_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_route53_resolver_rule__timeouts *)

type aws_route53_resolver_rule = {
  domain_name : string;  (** domain_name *)
  name : string option; [@option]  (** name *)
  resolver_endpoint_id : string option; [@option]
      (** resolver_endpoint_id *)
  rule_type : string;  (** rule_type *)
  tags : (string * string) list option; [@option]  (** tags *)
  target_ip : aws_route53_resolver_rule__target_ip list;
  timeouts : aws_route53_resolver_rule__timeouts option;
}
[@@deriving yojson_of]
(** aws_route53_resolver_rule *)

let aws_route53_resolver_rule ?name ?resolver_endpoint_id ?tags
    ?timeouts ~domain_name ~rule_type ~target_ip __resource_id =
  let __resource_type = "aws_route53_resolver_rule" in
  let __resource =
    {
      domain_name;
      name;
      resolver_endpoint_id;
      rule_type;
      tags;
      target_ip;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_resolver_rule __resource);
  ()
