(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_networkmanager_transit_gateway_registration__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_networkmanager_transit_gateway_registration__timeouts *)

type aws_networkmanager_transit_gateway_registration = {
  global_network_id : string;  (** global_network_id *)
  transit_gateway_arn : string;  (** transit_gateway_arn *)
  timeouts :
    aws_networkmanager_transit_gateway_registration__timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_transit_gateway_registration *)

let aws_networkmanager_transit_gateway_registration ?timeouts
    ~global_network_id ~transit_gateway_arn __resource_id =
  let __resource_type =
    "aws_networkmanager_transit_gateway_registration"
  in
  let __resource =
    { global_network_id; transit_gateway_arn; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_transit_gateway_registration
       __resource);
  ()