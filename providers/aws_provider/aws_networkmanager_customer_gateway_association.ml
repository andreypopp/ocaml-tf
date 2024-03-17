(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_networkmanager_customer_gateway_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_networkmanager_customer_gateway_association__timeouts *)

type aws_networkmanager_customer_gateway_association = {
  customer_gateway_arn : string;  (** customer_gateway_arn *)
  device_id : string;  (** device_id *)
  global_network_id : string;  (** global_network_id *)
  link_id : string option; [@option]  (** link_id *)
  timeouts :
    aws_networkmanager_customer_gateway_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_customer_gateway_association *)

let aws_networkmanager_customer_gateway_association ?link_id
    ?timeouts ~customer_gateway_arn ~device_id ~global_network_id
    __resource_id =
  let __resource_type =
    "aws_networkmanager_customer_gateway_association"
  in
  let __resource =
    {
      customer_gateway_arn;
      device_id;
      global_network_id;
      link_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_customer_gateway_association
       __resource);
  ()
