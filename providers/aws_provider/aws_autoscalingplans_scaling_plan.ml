(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_autoscalingplans_scaling_plan__application_source__tag_filter = {
  key : string prop;  (** key *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_autoscalingplans_scaling_plan__application_source__tag_filter *)

type aws_autoscalingplans_scaling_plan__application_source = {
  cloudformation_stack_arn : string prop option; [@option]
      (** cloudformation_stack_arn *)
  tag_filter :
    aws_autoscalingplans_scaling_plan__application_source__tag_filter
    list;
}
[@@deriving yojson_of]
(** aws_autoscalingplans_scaling_plan__application_source *)

type aws_autoscalingplans_scaling_plan__scaling_instruction__customized_load_metric_specification = {
  dimensions : (string * string prop) list option; [@option]
      (** dimensions *)
  metric_name : string prop;  (** metric_name *)
  namespace : string prop;  (** namespace *)
  statistic : string prop;  (** statistic *)
  unit : string prop option; [@option]  (** unit *)
}
[@@deriving yojson_of]
(** aws_autoscalingplans_scaling_plan__scaling_instruction__customized_load_metric_specification *)

type aws_autoscalingplans_scaling_plan__scaling_instruction__predefined_load_metric_specification = {
  predefined_load_metric_type : string prop;
      (** predefined_load_metric_type *)
  resource_label : string prop option; [@option]
      (** resource_label *)
}
[@@deriving yojson_of]
(** aws_autoscalingplans_scaling_plan__scaling_instruction__predefined_load_metric_specification *)

type aws_autoscalingplans_scaling_plan__scaling_instruction__target_tracking_configuration__customized_scaling_metric_specification = {
  dimensions : (string * string prop) list option; [@option]
      (** dimensions *)
  metric_name : string prop;  (** metric_name *)
  namespace : string prop;  (** namespace *)
  statistic : string prop;  (** statistic *)
  unit : string prop option; [@option]  (** unit *)
}
[@@deriving yojson_of]
(** aws_autoscalingplans_scaling_plan__scaling_instruction__target_tracking_configuration__customized_scaling_metric_specification *)

type aws_autoscalingplans_scaling_plan__scaling_instruction__target_tracking_configuration__predefined_scaling_metric_specification = {
  predefined_scaling_metric_type : string prop;
      (** predefined_scaling_metric_type *)
  resource_label : string prop option; [@option]
      (** resource_label *)
}
[@@deriving yojson_of]
(** aws_autoscalingplans_scaling_plan__scaling_instruction__target_tracking_configuration__predefined_scaling_metric_specification *)

type aws_autoscalingplans_scaling_plan__scaling_instruction__target_tracking_configuration = {
  disable_scale_in : bool prop option; [@option]
      (** disable_scale_in *)
  estimated_instance_warmup : float prop option; [@option]
      (** estimated_instance_warmup *)
  scale_in_cooldown : float prop option; [@option]
      (** scale_in_cooldown *)
  scale_out_cooldown : float prop option; [@option]
      (** scale_out_cooldown *)
  target_value : float prop;  (** target_value *)
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
  disable_dynamic_scaling : bool prop option; [@option]
      (** disable_dynamic_scaling *)
  max_capacity : float prop;  (** max_capacity *)
  min_capacity : float prop;  (** min_capacity *)
  predictive_scaling_max_capacity_behavior : string prop option;
      [@option]
      (** predictive_scaling_max_capacity_behavior *)
  predictive_scaling_max_capacity_buffer : float prop option;
      [@option]
      (** predictive_scaling_max_capacity_buffer *)
  predictive_scaling_mode : string prop option; [@option]
      (** predictive_scaling_mode *)
  resource_id : string prop;  (** resource_id *)
  scalable_dimension : string prop;  (** scalable_dimension *)
  scaling_policy_update_behavior : string prop option; [@option]
      (** scaling_policy_update_behavior *)
  scheduled_action_buffer_time : float prop option; [@option]
      (** scheduled_action_buffer_time *)
  service_namespace : string prop;  (** service_namespace *)
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
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  application_source :
    aws_autoscalingplans_scaling_plan__application_source list;
  scaling_instruction :
    aws_autoscalingplans_scaling_plan__scaling_instruction list;
}
[@@deriving yojson_of]
(** aws_autoscalingplans_scaling_plan *)

let aws_autoscalingplans_scaling_plan ?id ~name ~application_source
    ~scaling_instruction __resource_id =
  let __resource_type = "aws_autoscalingplans_scaling_plan" in
  let __resource =
    { id; name; application_source; scaling_instruction }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_autoscalingplans_scaling_plan __resource);
  ()
