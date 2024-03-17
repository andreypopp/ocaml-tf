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

type t = {
  arn : string prop;
  domain_name : string prop;
  id : string prop;
  name : string prop;
  owner_id : string prop;
  resolver_endpoint_id : string prop;
  rule_type : string prop;
  share_status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_route53_resolver_rule ?id ?name ?resolver_endpoint_id ?tags
    ?tags_all ?timeouts ~domain_name ~rule_type ~target_ip
    __resource_id =
  let __resource_type = "aws_route53_resolver_rule" in
  let __resource =
    ({
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
      : aws_route53_resolver_rule)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_resolver_rule __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       domain_name =
         Prop.computed __resource_type __resource_id "domain_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       owner_id =
         Prop.computed __resource_type __resource_id "owner_id";
       resolver_endpoint_id =
         Prop.computed __resource_type __resource_id
           "resolver_endpoint_id";
       rule_type =
         Prop.computed __resource_type __resource_id "rule_type";
       share_status =
         Prop.computed __resource_type __resource_id "share_status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
