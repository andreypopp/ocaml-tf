(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_transit_gateway_multicast_domain__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_multicast_domain__timeouts *)

type aws_ec2_transit_gateway_multicast_domain = {
  auto_accept_shared_associations : string option; [@option]
      (** auto_accept_shared_associations *)
  igmpv2_support : string option; [@option]  (** igmpv2_support *)
  static_sources_support : string option; [@option]
      (** static_sources_support *)
  tags : (string * string) list option; [@option]  (** tags *)
  transit_gateway_id : string;  (** transit_gateway_id *)
  timeouts :
    aws_ec2_transit_gateway_multicast_domain__timeouts option;
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_multicast_domain *)

let aws_ec2_transit_gateway_multicast_domain
    ?auto_accept_shared_associations ?igmpv2_support
    ?static_sources_support ?tags ?timeouts ~transit_gateway_id
    __resource_id =
  let __resource_type = "aws_ec2_transit_gateway_multicast_domain" in
  let __resource =
    {
      auto_accept_shared_associations;
      igmpv2_support;
      static_sources_support;
      tags;
      transit_gateway_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_transit_gateway_multicast_domain __resource);
  ()
