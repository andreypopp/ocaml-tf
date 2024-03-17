(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_transit_gateway_multicast_domain__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_multicast_domain__timeouts *)

type aws_ec2_transit_gateway_multicast_domain = {
  auto_accept_shared_associations : string prop option; [@option]
      (** auto_accept_shared_associations *)
  id : string prop option; [@option]  (** id *)
  igmpv2_support : string prop option; [@option]
      (** igmpv2_support *)
  static_sources_support : string prop option; [@option]
      (** static_sources_support *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  transit_gateway_id : string prop;  (** transit_gateway_id *)
  timeouts :
    aws_ec2_transit_gateway_multicast_domain__timeouts option;
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_multicast_domain *)

type t = {
  arn : string prop;
  auto_accept_shared_associations : string prop;
  id : string prop;
  igmpv2_support : string prop;
  owner_id : string prop;
  static_sources_support : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  transit_gateway_id : string prop;
}

let aws_ec2_transit_gateway_multicast_domain
    ?auto_accept_shared_associations ?id ?igmpv2_support
    ?static_sources_support ?tags ?tags_all ?timeouts
    ~transit_gateway_id __resource_id =
  let __resource_type = "aws_ec2_transit_gateway_multicast_domain" in
  let __resource =
    ({
       auto_accept_shared_associations;
       id;
       igmpv2_support;
       static_sources_support;
       tags;
       tags_all;
       transit_gateway_id;
       timeouts;
     }
      : aws_ec2_transit_gateway_multicast_domain)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_transit_gateway_multicast_domain __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       auto_accept_shared_associations =
         Prop.computed __resource_type __resource_id
           "auto_accept_shared_associations";
       id = Prop.computed __resource_type __resource_id "id";
       igmpv2_support =
         Prop.computed __resource_type __resource_id "igmpv2_support";
       owner_id =
         Prop.computed __resource_type __resource_id "owner_id";
       static_sources_support =
         Prop.computed __resource_type __resource_id
           "static_sources_support";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       transit_gateway_id =
         Prop.computed __resource_type __resource_id
           "transit_gateway_id";
     }
      : t)
  in
  __resource_attributes
