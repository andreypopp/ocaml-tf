(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_networkmanager_transit_gateway_connect_peer_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_networkmanager_transit_gateway_connect_peer_association__timeouts *)

type aws_networkmanager_transit_gateway_connect_peer_association = {
  device_id : string;  (** device_id *)
  global_network_id : string;  (** global_network_id *)
  link_id : string option; [@option]  (** link_id *)
  transit_gateway_connect_peer_arn : string;
      (** transit_gateway_connect_peer_arn *)
  timeouts :
    aws_networkmanager_transit_gateway_connect_peer_association__timeouts
    option;
}
[@@deriving yojson_of]
(** aws_networkmanager_transit_gateway_connect_peer_association *)

let aws_networkmanager_transit_gateway_connect_peer_association
    ?link_id ?timeouts ~device_id ~global_network_id
    ~transit_gateway_connect_peer_arn __resource_id =
  let __resource_type =
    "aws_networkmanager_transit_gateway_connect_peer_association"
  in
  let __resource =
    {
      device_id;
      global_network_id;
      link_id;
      transit_gateway_connect_peer_arn;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_transit_gateway_connect_peer_association
       __resource);
  ()
