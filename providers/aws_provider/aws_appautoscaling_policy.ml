(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appautoscaling_policy__step_scaling_policy_configuration__step_adjustment = {
  metric_interval_lower_bound : string option; [@option]
      (** metric_interval_lower_bound *)
  metric_interval_upper_bound : string option; [@option]
      (** metric_interval_upper_bound *)
  scaling_adjustment : float;  (** scaling_adjustment *)
}
[@@deriving yojson_of]
(** aws_appautoscaling_policy__step_scaling_policy_configuration__step_adjustment *)

type aws_appautoscaling_policy__step_scaling_policy_configuration = {
  adjustment_type : string option; [@option]  (** adjustment_type *)
  cooldown : float option; [@option]  (** cooldown *)
  metric_aggregation_type : string option; [@option]
      (** metric_aggregation_type *)
  min_adjustment_magnitude : float option; [@option]
      (** min_adjustment_magnitude *)
  step_adjustment :
    aws_appautoscaling_policy__step_scaling_policy_configuration__step_adjustment
    list;
}
[@@deriving yojson_of]
(** aws_appautoscaling_policy__step_scaling_policy_configuration *)

type aws_appautoscaling_policy__target_tracking_scaling_policy_configuration__customized_metric_specification__dimensions = {
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_appautoscaling_policy__target_tracking_scaling_policy_configuration__customized_metric_specification__dimensions *)

type aws_appautoscaling_policy__target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions = {
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_appautoscaling_policy__target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions *)

type aws_appautoscaling_policy__target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric = {
  metric_name : string;  (** metric_name *)
  namespace : string;  (** namespace *)
  dimensions :
    aws_appautoscaling_policy__target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions
    list;
}
[@@deriving yojson_of]
(** aws_appautoscaling_policy__target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric *)

type aws_appautoscaling_policy__target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat = {
  stat : string;  (** stat *)
  unit : string option; [@option]  (** unit *)
  metric :
    aws_appautoscaling_policy__target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric
    list;
}
[@@deriving yojson_of]
(** aws_appautoscaling_policy__target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat *)

type aws_appautoscaling_policy__target_tracking_scaling_policy_configuration__customized_metric_specification__metrics = {
  expression : string option; [@option]  (** expression *)
  id : string;  (** id *)
  label : string option; [@option]  (** label *)
  return_data : bool option; [@option]  (** return_data *)
  metric_stat :
    aws_appautoscaling_policy__target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat
    list;
}
[@@deriving yojson_of]
(** aws_appautoscaling_policy__target_tracking_scaling_policy_configuration__customized_metric_specification__metrics *)

type aws_appautoscaling_policy__target_tracking_scaling_policy_configuration__customized_metric_specification = {
  metric_name : string option; [@option]  (** metric_name *)
  namespace : string option; [@option]  (** namespace *)
  statistic : string option; [@option]  (** statistic *)
  unit : string option; [@option]  (** unit *)
  dimensions :
    aws_appautoscaling_policy__target_tracking_scaling_policy_configuration__customized_metric_specification__dimensions
    list;
  metrics :
    aws_appautoscaling_policy__target_tracking_scaling_policy_configuration__customized_metric_specification__metrics
    list;
}
[@@deriving yojson_of]
(** aws_appautoscaling_policy__target_tracking_scaling_policy_configuration__customized_metric_specification *)

type aws_appautoscaling_policy__target_tracking_scaling_policy_configuration__predefined_metric_specification = {
  predefined_metric_type : string;  (** predefined_metric_type *)
  resource_label : string option; [@option]  (** resource_label *)
}
[@@deriving yojson_of]
(** aws_appautoscaling_policy__target_tracking_scaling_policy_configuration__predefined_metric_specification *)

type aws_appautoscaling_policy__target_tracking_scaling_policy_configuration = {
  disable_scale_in : bool option; [@option]  (** disable_scale_in *)
  scale_in_cooldown : float option; [@option]
      (** scale_in_cooldown *)
  scale_out_cooldown : float option; [@option]
      (** scale_out_cooldown *)
  target_value : float;  (** target_value *)
  customized_metric_specification :
    aws_appautoscaling_policy__target_tracking_scaling_policy_configuration__customized_metric_specification
    list;
  predefined_metric_specification :
    aws_appautoscaling_policy__target_tracking_scaling_policy_configuration__predefined_metric_specification
    list;
}
[@@deriving yojson_of]
(** aws_appautoscaling_policy__target_tracking_scaling_policy_configuration *)

type aws_appautoscaling_policy = {
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  policy_type : string option; [@option]  (** policy_type *)
  resource_id : string;  (** resource_id *)
  scalable_dimension : string;  (** scalable_dimension *)
  service_namespace : string;  (** service_namespace *)
  step_scaling_policy_configuration :
    aws_appautoscaling_policy__step_scaling_policy_configuration list;
  target_tracking_scaling_policy_configuration :
    aws_appautoscaling_policy__target_tracking_scaling_policy_configuration
    list;
}
[@@deriving yojson_of]
(** aws_appautoscaling_policy *)

let aws_appautoscaling_policy ?id ?policy_type ~name ~resource_id
    ~scalable_dimension ~service_namespace
    ~step_scaling_policy_configuration
    ~target_tracking_scaling_policy_configuration __resource_id =
  let __resource_type = "aws_appautoscaling_policy" in
  let __resource =
    {
      id;
      name;
      policy_type;
      resource_id;
      scalable_dimension;
      service_namespace;
      step_scaling_policy_configuration;
      target_tracking_scaling_policy_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appautoscaling_policy __resource);
  ()
