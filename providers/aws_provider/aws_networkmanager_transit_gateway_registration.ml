(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_networkmanager_transit_gateway_registration__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_networkmanager_transit_gateway_registration__timeouts *)

type aws_networkmanager_transit_gateway_registration = {
  global_network_id : string prop;  (** global_network_id *)
  id : string prop option; [@option]  (** id *)
  transit_gateway_arn : string prop;  (** transit_gateway_arn *)
  timeouts :
    aws_networkmanager_transit_gateway_registration__timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_transit_gateway_registration *)

let aws_networkmanager_transit_gateway_registration ?id ?timeouts
    ~global_network_id ~transit_gateway_arn __resource_id =
  let __resource_type =
    "aws_networkmanager_transit_gateway_registration"
  in
  let __resource =
    { global_network_id; id; transit_gateway_arn; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_transit_gateway_registration
       __resource);
  ()
