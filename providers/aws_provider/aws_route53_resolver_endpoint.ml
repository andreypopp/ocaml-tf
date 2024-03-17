(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_resolver_endpoint__ip_address = {
  ip : string option; [@option]  (** ip *)
  ip_id : string;  (** ip_id *)
  subnet_id : string;  (** subnet_id *)
}
[@@deriving yojson_of]
(** aws_route53_resolver_endpoint__ip_address *)

type aws_route53_resolver_endpoint__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_route53_resolver_endpoint__timeouts *)

type aws_route53_resolver_endpoint = {
  direction : string;  (** direction *)
  name : string option; [@option]  (** name *)
  security_group_ids : string list;  (** security_group_ids *)
  tags : (string * string) list option; [@option]  (** tags *)
  ip_address : aws_route53_resolver_endpoint__ip_address list;
  timeouts : aws_route53_resolver_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** aws_route53_resolver_endpoint *)

let aws_route53_resolver_endpoint ?name ?tags ?timeouts ~direction
    ~security_group_ids ~ip_address __resource_id =
  let __resource_type = "aws_route53_resolver_endpoint" in
  let __resource =
    {
      direction;
      name;
      security_group_ids;
      tags;
      ip_address;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_resolver_endpoint __resource);
  ()
