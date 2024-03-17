(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ec2_transit_gateway_vpc_attachment = {
  appliance_mode_support : string option; [@option]
      (** appliance_mode_support *)
  dns_support : string option; [@option]  (** dns_support *)
  ipv6_support : string option; [@option]  (** ipv6_support *)
  subnet_ids : string list;  (** subnet_ids *)
  tags : (string * string) list option; [@option]  (** tags *)
  transit_gateway_id : string;  (** transit_gateway_id *)
  vpc_id : string;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_ec2_transit_gateway_vpc_attachment *)

let aws_ec2_transit_gateway_vpc_attachment ?appliance_mode_support
    ?dns_support ?ipv6_support ?tags ~subnet_ids ~transit_gateway_id
    ~vpc_id __resource_id =
  let __resource_type = "aws_ec2_transit_gateway_vpc_attachment" in
  let __resource =
    {
      appliance_mode_support;
      dns_support;
      ipv6_support;
      subnet_ids;
      tags;
      transit_gateway_id;
      vpc_id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_transit_gateway_vpc_attachment __resource);
  ()
