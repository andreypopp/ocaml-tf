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

let aws_ec2_transit_gateway_multicast_domain
    ?auto_accept_shared_associations ?id ?igmpv2_support
    ?static_sources_support ?tags ?tags_all ?timeouts
    ~transit_gateway_id __resource_id =
  let __resource_type = "aws_ec2_transit_gateway_multicast_domain" in
  let __resource =
    {
      auto_accept_shared_associations;
      id;
      igmpv2_support;
      static_sources_support;
      tags;
      tags_all;
      transit_gateway_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_transit_gateway_multicast_domain __resource);
  ()
