(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_globalaccelerator_custom_routing_endpoint_group__destination_configuration = {
  from_port : float;  (** from_port *)
  protocols : string list;  (** protocols *)
  to_port : float;  (** to_port *)
}
[@@deriving yojson_of]
(** aws_globalaccelerator_custom_routing_endpoint_group__destination_configuration *)

type aws_globalaccelerator_custom_routing_endpoint_group__endpoint_configuration = {
  endpoint_id : string option; [@option]  (** endpoint_id *)
}
[@@deriving yojson_of]
(** aws_globalaccelerator_custom_routing_endpoint_group__endpoint_configuration *)

type aws_globalaccelerator_custom_routing_endpoint_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_globalaccelerator_custom_routing_endpoint_group__timeouts *)

type aws_globalaccelerator_custom_routing_endpoint_group = {
  listener_arn : string;  (** listener_arn *)
  destination_configuration :
    aws_globalaccelerator_custom_routing_endpoint_group__destination_configuration
    list;
  endpoint_configuration :
    aws_globalaccelerator_custom_routing_endpoint_group__endpoint_configuration
    list;
  timeouts :
    aws_globalaccelerator_custom_routing_endpoint_group__timeouts
    option;
}
[@@deriving yojson_of]
(** aws_globalaccelerator_custom_routing_endpoint_group *)

let aws_globalaccelerator_custom_routing_endpoint_group ?timeouts
    ~listener_arn ~destination_configuration ~endpoint_configuration
    __resource_id =
  let __resource_type =
    "aws_globalaccelerator_custom_routing_endpoint_group"
  in
  let __resource =
    {
      listener_arn;
      destination_configuration;
      endpoint_configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_globalaccelerator_custom_routing_endpoint_group
       __resource);
  ()
