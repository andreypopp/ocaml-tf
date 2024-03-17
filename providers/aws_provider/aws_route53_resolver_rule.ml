(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_resolver_rule__target_ip = {
  ip : string prop;  (** ip *)
  port : float prop option; [@option]  (** port *)
  protocol : string prop option; [@option]  (** protocol *)
}
[@@deriving yojson_of]
(** aws_route53_resolver_rule__target_ip *)

type aws_route53_resolver_rule__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_route53_resolver_rule__timeouts *)

type aws_route53_resolver_rule = {
  domain_name : string prop;  (** domain_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  resolver_endpoint_id : string prop option; [@option]
      (** resolver_endpoint_id *)
  rule_type : string prop;  (** rule_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  target_ip : aws_route53_resolver_rule__target_ip list;
  timeouts : aws_route53_resolver_rule__timeouts option;
}
[@@deriving yojson_of]
(** aws_route53_resolver_rule *)

let aws_route53_resolver_rule ?id ?name ?resolver_endpoint_id ?tags
    ?tags_all ?timeouts ~domain_name ~rule_type ~target_ip
    __resource_id =
  let __resource_type = "aws_route53_resolver_rule" in
  let __resource =
    {
      domain_name;
      id;
      name;
      resolver_endpoint_id;
      rule_type;
      tags;
      tags_all;
      target_ip;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_resolver_rule __resource);
  ()
