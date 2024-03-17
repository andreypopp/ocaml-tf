(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_resolver_endpoint__ip_address = {
  ip : string prop option; [@option]  (** ip *)
  ip_id : string prop;  (** ip_id *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** aws_route53_resolver_endpoint__ip_address *)

type aws_route53_resolver_endpoint__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_route53_resolver_endpoint__timeouts *)

type aws_route53_resolver_endpoint = {
  direction : string prop;  (** direction *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  protocols : string prop list option; [@option]  (** protocols *)
  resolver_endpoint_type : string prop option; [@option]
      (** resolver_endpoint_type *)
  security_group_ids : string prop list;  (** security_group_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  ip_address : aws_route53_resolver_endpoint__ip_address list;
  timeouts : aws_route53_resolver_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** aws_route53_resolver_endpoint *)

let aws_route53_resolver_endpoint ?id ?name ?protocols
    ?resolver_endpoint_type ?tags ?tags_all ?timeouts ~direction
    ~security_group_ids ~ip_address __resource_id =
  let __resource_type = "aws_route53_resolver_endpoint" in
  let __resource =
    {
      direction;
      id;
      name;
      protocols;
      resolver_endpoint_type;
      security_group_ids;
      tags;
      tags_all;
      ip_address;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_resolver_endpoint __resource);
  ()
