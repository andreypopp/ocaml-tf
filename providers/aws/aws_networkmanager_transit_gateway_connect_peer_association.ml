(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_networkmanager_transit_gateway_connect_peer_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_networkmanager_transit_gateway_connect_peer_association__timeouts *)

type aws_networkmanager_transit_gateway_connect_peer_association = {
  device_id : string prop;  (** device_id *)
  global_network_id : string prop;  (** global_network_id *)
  id : string prop option; [@option]  (** id *)
  link_id : string prop option; [@option]  (** link_id *)
  transit_gateway_connect_peer_arn : string prop;
      (** transit_gateway_connect_peer_arn *)
  timeouts :
    aws_networkmanager_transit_gateway_connect_peer_association__timeouts
    option;
}
[@@deriving yojson_of]
(** aws_networkmanager_transit_gateway_connect_peer_association *)

type t = {
  device_id : string prop;
  global_network_id : string prop;
  id : string prop;
  link_id : string prop;
  transit_gateway_connect_peer_arn : string prop;
}

let aws_networkmanager_transit_gateway_connect_peer_association ?id
    ?link_id ?timeouts ~device_id ~global_network_id
    ~transit_gateway_connect_peer_arn __resource_id =
  let __resource_type =
    "aws_networkmanager_transit_gateway_connect_peer_association"
  in
  let __resource =
    ({
       device_id;
       global_network_id;
       id;
       link_id;
       transit_gateway_connect_peer_arn;
       timeouts;
     }
      : aws_networkmanager_transit_gateway_connect_peer_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_transit_gateway_connect_peer_association
       __resource);
  let __resource_attributes =
    ({
       device_id =
         Prop.computed __resource_type __resource_id "device_id";
       global_network_id =
         Prop.computed __resource_type __resource_id
           "global_network_id";
       id = Prop.computed __resource_type __resource_id "id";
       link_id =
         Prop.computed __resource_type __resource_id "link_id";
       transit_gateway_connect_peer_arn =
         Prop.computed __resource_type __resource_id
           "transit_gateway_connect_peer_arn";
     }
      : t)
  in
  __resource_attributes
