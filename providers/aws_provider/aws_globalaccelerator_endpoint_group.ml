(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_globalaccelerator_endpoint_group__endpoint_configuration = {
  client_ip_preservation_enabled : bool option; [@option]
      (** client_ip_preservation_enabled *)
  endpoint_id : string option; [@option]  (** endpoint_id *)
  weight : float option; [@option]  (** weight *)
}
[@@deriving yojson_of]
(** aws_globalaccelerator_endpoint_group__endpoint_configuration *)

type aws_globalaccelerator_endpoint_group__port_override = {
  endpoint_port : float;  (** endpoint_port *)
  listener_port : float;  (** listener_port *)
}
[@@deriving yojson_of]
(** aws_globalaccelerator_endpoint_group__port_override *)

type aws_globalaccelerator_endpoint_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_globalaccelerator_endpoint_group__timeouts *)

type aws_globalaccelerator_endpoint_group = {
  endpoint_group_region : string option; [@option]
      (** endpoint_group_region *)
  health_check_interval_seconds : float option; [@option]
      (** health_check_interval_seconds *)
  health_check_path : string option; [@option]
      (** health_check_path *)
  health_check_port : float option; [@option]
      (** health_check_port *)
  health_check_protocol : string option; [@option]
      (** health_check_protocol *)
  id : string option; [@option]  (** id *)
  listener_arn : string;  (** listener_arn *)
  threshold_count : float option; [@option]  (** threshold_count *)
  traffic_dial_percentage : float option; [@option]
      (** traffic_dial_percentage *)
  endpoint_configuration :
    aws_globalaccelerator_endpoint_group__endpoint_configuration list;
  port_override :
    aws_globalaccelerator_endpoint_group__port_override list;
  timeouts : aws_globalaccelerator_endpoint_group__timeouts option;
}
[@@deriving yojson_of]
(** aws_globalaccelerator_endpoint_group *)

let aws_globalaccelerator_endpoint_group ?endpoint_group_region
    ?health_check_interval_seconds ?health_check_path
    ?health_check_port ?health_check_protocol ?id ?threshold_count
    ?traffic_dial_percentage ?timeouts ~listener_arn
    ~endpoint_configuration ~port_override __resource_id =
  let __resource_type = "aws_globalaccelerator_endpoint_group" in
  let __resource =
    {
      endpoint_group_region;
      health_check_interval_seconds;
      health_check_path;
      health_check_port;
      health_check_protocol;
      id;
      listener_arn;
      threshold_count;
      traffic_dial_percentage;
      endpoint_configuration;
      port_override;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_globalaccelerator_endpoint_group __resource);
  ()
