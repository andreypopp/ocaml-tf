(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_networkmanager_transit_gateway_route_table_attachment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_networkmanager_transit_gateway_route_table_attachment__timeouts *)

type aws_networkmanager_transit_gateway_route_table_attachment = {
  id : string option; [@option]  (** id *)
  peering_id : string;  (** peering_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  transit_gateway_route_table_arn : string;
      (** transit_gateway_route_table_arn *)
  timeouts :
    aws_networkmanager_transit_gateway_route_table_attachment__timeouts
    option;
}
[@@deriving yojson_of]
(** aws_networkmanager_transit_gateway_route_table_attachment *)

let aws_networkmanager_transit_gateway_route_table_attachment ?id
    ?tags ?tags_all ?timeouts ~peering_id
    ~transit_gateway_route_table_arn __resource_id =
  let __resource_type =
    "aws_networkmanager_transit_gateway_route_table_attachment"
  in
  let __resource =
    {
      id;
      peering_id;
      tags;
      tags_all;
      transit_gateway_route_table_arn;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_transit_gateway_route_table_attachment
       __resource);
  ()
