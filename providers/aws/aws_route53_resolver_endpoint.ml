(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type ip_address = {
  ip : string prop option; [@option]  (** ip *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** ip_address *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  ip_address : ip_address list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_route53_resolver_endpoint *)

let ip_address ?ip ~subnet_id () : ip_address = { ip; subnet_id }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_route53_resolver_endpoint ?id ?name ?protocols
    ?resolver_endpoint_type ?tags ?tags_all ?timeouts ~direction
    ~security_group_ids ~ip_address () :
    aws_route53_resolver_endpoint =
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

type t = {
  arn : string prop;
  direction : string prop;
  host_vpc_id : string prop;
  id : string prop;
  name : string prop;
  protocols : string list prop;
  resolver_endpoint_type : string prop;
  security_group_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?name ?protocols ?resolver_endpoint_type
    ?tags ?tags_all ?timeouts ~direction ~security_group_ids
    ~ip_address __resource_id =
  let __resource_type = "aws_route53_resolver_endpoint" in
  let __resource =
    aws_route53_resolver_endpoint ?id ?name ?protocols
      ?resolver_endpoint_type ?tags ?tags_all ?timeouts ~direction
      ~security_group_ids ~ip_address ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_resolver_endpoint __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       direction =
         Prop.computed __resource_type __resource_id "direction";
       host_vpc_id =
         Prop.computed __resource_type __resource_id "host_vpc_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       protocols =
         Prop.computed __resource_type __resource_id "protocols";
       resolver_endpoint_type =
         Prop.computed __resource_type __resource_id
           "resolver_endpoint_type";
       security_group_ids =
         Prop.computed __resource_type __resource_id
           "security_group_ids";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
