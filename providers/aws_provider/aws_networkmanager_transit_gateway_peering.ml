(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_networkmanager_transit_gateway_peering__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_networkmanager_transit_gateway_peering__timeouts *)

type aws_networkmanager_transit_gateway_peering = {
  core_network_id : string;  (** core_network_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  transit_gateway_arn : string;  (** transit_gateway_arn *)
  timeouts :
    aws_networkmanager_transit_gateway_peering__timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_transit_gateway_peering *)

let aws_networkmanager_transit_gateway_peering ?tags ?timeouts
    ~core_network_id ~transit_gateway_arn __resource_id =
  let __resource_type =
    "aws_networkmanager_transit_gateway_peering"
  in
  let __resource =
    { core_network_id; tags; transit_gateway_arn; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_transit_gateway_peering __resource);
  ()
