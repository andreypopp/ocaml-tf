(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_globalaccelerator_custom_routing_endpoint_group__destination_configuration = {
  from_port : float prop;  (** from_port *)
  protocols : string prop list;  (** protocols *)
  to_port : float prop;  (** to_port *)
}
[@@deriving yojson_of]
(** aws_globalaccelerator_custom_routing_endpoint_group__destination_configuration *)

type aws_globalaccelerator_custom_routing_endpoint_group__endpoint_configuration = {
  endpoint_id : string prop option; [@option]  (** endpoint_id *)
}
[@@deriving yojson_of]
(** aws_globalaccelerator_custom_routing_endpoint_group__endpoint_configuration *)

type aws_globalaccelerator_custom_routing_endpoint_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_globalaccelerator_custom_routing_endpoint_group__timeouts *)

type aws_globalaccelerator_custom_routing_endpoint_group = {
  endpoint_group_region : string prop option; [@option]
      (** endpoint_group_region *)
  id : string prop option; [@option]  (** id *)
  listener_arn : string prop;  (** listener_arn *)
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

type t = {
  arn : string prop;
  endpoint_group_region : string prop;
  id : string prop;
  listener_arn : string prop;
}

let aws_globalaccelerator_custom_routing_endpoint_group
    ?endpoint_group_region ?id ?timeouts ~listener_arn
    ~destination_configuration ~endpoint_configuration __resource_id
    =
  let __resource_type =
    "aws_globalaccelerator_custom_routing_endpoint_group"
  in
  let __resource =
    ({
       endpoint_group_region;
       id;
       listener_arn;
       destination_configuration;
       endpoint_configuration;
       timeouts;
     }
      : aws_globalaccelerator_custom_routing_endpoint_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_globalaccelerator_custom_routing_endpoint_group
       __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       endpoint_group_region =
         Prop.computed __resource_type __resource_id
           "endpoint_group_region";
       id = Prop.computed __resource_type __resource_id "id";
       listener_arn =
         Prop.computed __resource_type __resource_id "listener_arn";
     }
      : t)
  in
  __resource_attributes
