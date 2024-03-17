(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_networkmanager_transit_gateway_peering__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_networkmanager_transit_gateway_peering__timeouts *)

type aws_networkmanager_transit_gateway_peering = {
  core_network_id : string prop;  (** core_network_id *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  transit_gateway_arn : string prop;  (** transit_gateway_arn *)
  timeouts :
    aws_networkmanager_transit_gateway_peering__timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_transit_gateway_peering *)

let aws_networkmanager_transit_gateway_peering ?id ?tags ?tags_all
    ?timeouts ~core_network_id ~transit_gateway_arn __resource_id =
  let __resource_type =
    "aws_networkmanager_transit_gateway_peering"
  in
  let __resource =
    {
      core_network_id;
      id;
      tags;
      tags_all;
      transit_gateway_arn;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_transit_gateway_peering __resource);
  ()
