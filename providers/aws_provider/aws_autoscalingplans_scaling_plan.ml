(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_autoscalingplans_scaling_plan__application_source__tag_filter = {
  key : string;  (** key *)
  values : string list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_autoscalingplans_scaling_plan__application_source__tag_filter *)

type aws_autoscalingplans_scaling_plan__application_source = {
  cloudformation_stack_arn : string option; [@option]
      (** cloudformation_stack_arn *)
  tag_filter :
    aws_autoscalingplans_scaling_plan__application_source__tag_filter
    list;
}
[@@deriving yojson_of]
(** aws_autoscalingplans_scaling_plan__application_source *)

type aws_autoscalingplans_scaling_plan__scaling_instruction__customized_load_metric_specification = {
  dimensions : (string * string) list option; [@option]
      (** dimensions *)
  metric_name : string;  (** metric_name *)
  namespace : string;  (** namespace *)
  statistic : string;  (** statistic *)
  unit : string option; [@option]  (** unit *)
}
[@@deriving yojson_of]
(** aws_autoscalingplans_scaling_plan__scaling_instruction__customized_load_metric_specification *)

type aws_autoscalingplans_scaling_plan__scaling_instruction__predefined_load_metric_specification = {
  predefined_load_metric_type : string;
      (** predefined_load_metric_type *)
  resource_label : string option; [@option]  (** resource_label *)
}
[@@deriving yojson_of]
(** aws_autoscalingplans_scaling_plan__scaling_instruction__predefined_load_metric_specification *)

type aws_autoscalingplans_scaling_plan__scaling_instruction__target_tracking_configuration__customized_scaling_metric_specification = {
  dimensions : (string * string) list option; [@option]
      (** dimensions *)
  metric_name : string;  (** metric_name *)
  namespace : string;  (** namespace *)
  statistic : string;  (** statistic *)
  unit : string option; [@option]  (** unit *)
}
[@@deriving yojson_of]
(** aws_autoscalingplans_scaling_plan__scaling_instruction__target_tracking_configuration__customized_scaling_metric_specification *)

type aws_autoscalingplans_scaling_plan__scaling_instruction__target_tracking_configuration__predefined_scaling_metric_specification = {
  predefined_scaling_metric_type : string;
      (** predefined_scaling_metric_type *)
  resource_label : string option; [@option]  (** resource_label *)
}
[@@deriving yojson_of]
(** aws_autoscalingplans_scaling_plan__scaling_instruction__target_tracking_configuration__predefined_scaling_metric_specification *)

type aws_autoscalingplans_scaling_plan__scaling_instruction__target_tracking_configuration = {
  disable_scale_in : bool option; [@option]  (** disable_scale_in *)
  estimated_instance_warmup : float option; [@option]
      (** estimated_instance_warmup *)
  scale_in_cooldown : float option; [@option]
      (** scale_in_cooldown *)
  scale_out_cooldown : float option; [@option]
      (** scale_out_cooldown *)
  target_value : float;  (** target_value *)
  customized_scaling_metric_specification :
    aws_autoscalingplans_scaling_plan__scaling_instruction__target_tracking_configuration__customized_scaling_metric_specification
    list;
  predefined_scaling_metric_specification :
    aws_autoscalingplans_scaling_plan__scaling_instruction__target_tracking_configuration__predefined_scaling_metric_specification
    list;
}
[@@deriving yojson_of]
(** aws_autoscalingplans_scaling_plan__scaling_instruction__target_tracking_configuration *)

type aws_autoscalingplans_scaling_plan__scaling_instruction = {
  disable_dynamic_scaling : bool option; [@option]
      (** disable_dynamic_scaling *)
  max_capacity : float;  (** max_capacity *)
  min_capacity : float;  (** min_capacity *)
  predictive_scaling_max_capacity_behavior : string option; [@option]
      (** predictive_scaling_max_capacity_behavior *)
  predictive_scaling_max_capacity_buffer : float option; [@option]
      (** predictive_scaling_max_capacity_buffer *)
  predictive_scaling_mode : string option; [@option]
      (** predictive_scaling_mode *)
  resource_id : string;  (** resource_id *)
  scalable_dimension : string;  (** scalable_dimension *)
  scaling_policy_update_behavior : string option; [@option]
      (** scaling_policy_update_behavior *)
  scheduled_action_buffer_time : float option; [@option]
      (** scheduled_action_buffer_time *)
  service_namespace : string;  (** service_namespace *)
  customized_load_metric_specification :
    aws_autoscalingplans_scaling_plan__scaling_instruction__customized_load_metric_specification
    list;
  predefined_load_metric_specification :
    aws_autoscalingplans_scaling_plan__scaling_instruction__predefined_load_metric_specification
    list;
  target_tracking_configuration :
    aws_autoscalingplans_scaling_plan__scaling_instruction__target_tracking_configuration
    list;
}
[@@deriving yojson_of]
(** aws_autoscalingplans_scaling_plan__scaling_instruction *)

type aws_autoscalingplans_scaling_plan = {
  name : string;  (** name *)
  application_source :
    aws_autoscalingplans_scaling_plan__application_source list;
  scaling_instruction :
    aws_autoscalingplans_scaling_plan__scaling_instruction list;
}
[@@deriving yojson_of]
(** aws_autoscalingplans_scaling_plan *)

let aws_autoscalingplans_scaling_plan ~name ~application_source
    ~scaling_instruction __resource_id =
  let __resource_type = "aws_autoscalingplans_scaling_plan" in
  let __resource =
    { name; application_source; scaling_instruction }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_autoscalingplans_scaling_plan __resource);
  ()
