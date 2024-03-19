(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type endpoint_configuration = {
  client_ip_preservation_enabled : bool prop option; [@option]
      (** client_ip_preservation_enabled *)
  endpoint_id : string prop option; [@option]  (** endpoint_id *)
  weight : float prop option; [@option]  (** weight *)
}
[@@deriving yojson_of]
(** endpoint_configuration *)

type port_override = {
  endpoint_port : float prop;  (** endpoint_port *)
  listener_port : float prop;  (** listener_port *)
}
[@@deriving yojson_of]
(** port_override *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_globalaccelerator_endpoint_group = {
  endpoint_group_region : string prop option; [@option]
      (** endpoint_group_region *)
  health_check_interval_seconds : float prop option; [@option]
      (** health_check_interval_seconds *)
  health_check_path : string prop option; [@option]
      (** health_check_path *)
  health_check_port : float prop option; [@option]
      (** health_check_port *)
  health_check_protocol : string prop option; [@option]
      (** health_check_protocol *)
  id : string prop option; [@option]  (** id *)
  listener_arn : string prop;  (** listener_arn *)
  threshold_count : float prop option; [@option]
      (** threshold_count *)
  traffic_dial_percentage : float prop option; [@option]
      (** traffic_dial_percentage *)
  endpoint_configuration : endpoint_configuration list;
  port_override : port_override list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_globalaccelerator_endpoint_group *)

let endpoint_configuration ?client_ip_preservation_enabled
    ?endpoint_id ?weight () : endpoint_configuration =
  { client_ip_preservation_enabled; endpoint_id; weight }

let port_override ~endpoint_port ~listener_port () : port_override =
  { endpoint_port; listener_port }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_globalaccelerator_endpoint_group ?endpoint_group_region
    ?health_check_interval_seconds ?health_check_path
    ?health_check_port ?health_check_protocol ?id ?threshold_count
    ?traffic_dial_percentage ?timeouts ~listener_arn
    ~endpoint_configuration ~port_override () :
    aws_globalaccelerator_endpoint_group =
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

type t = {
  arn : string prop;
  endpoint_group_region : string prop;
  health_check_interval_seconds : float prop;
  health_check_path : string prop;
  health_check_port : float prop;
  health_check_protocol : string prop;
  id : string prop;
  listener_arn : string prop;
  threshold_count : float prop;
  traffic_dial_percentage : float prop;
}

let register ?tf_module ?endpoint_group_region
    ?health_check_interval_seconds ?health_check_path
    ?health_check_port ?health_check_protocol ?id ?threshold_count
    ?traffic_dial_percentage ?timeouts ~listener_arn
    ~endpoint_configuration ~port_override __resource_id =
  let __resource_type = "aws_globalaccelerator_endpoint_group" in
  let __resource =
    aws_globalaccelerator_endpoint_group ?endpoint_group_region
      ?health_check_interval_seconds ?health_check_path
      ?health_check_port ?health_check_protocol ?id ?threshold_count
      ?traffic_dial_percentage ?timeouts ~listener_arn
      ~endpoint_configuration ~port_override ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_globalaccelerator_endpoint_group __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       endpoint_group_region =
         Prop.computed __resource_type __resource_id
           "endpoint_group_region";
       health_check_interval_seconds =
         Prop.computed __resource_type __resource_id
           "health_check_interval_seconds";
       health_check_path =
         Prop.computed __resource_type __resource_id
           "health_check_path";
       health_check_port =
         Prop.computed __resource_type __resource_id
           "health_check_port";
       health_check_protocol =
         Prop.computed __resource_type __resource_id
           "health_check_protocol";
       id = Prop.computed __resource_type __resource_id "id";
       listener_arn =
         Prop.computed __resource_type __resource_id "listener_arn";
       threshold_count =
         Prop.computed __resource_type __resource_id
           "threshold_count";
       traffic_dial_percentage =
         Prop.computed __resource_type __resource_id
           "traffic_dial_percentage";
     }
      : t)
  in
  __resource_attributes
