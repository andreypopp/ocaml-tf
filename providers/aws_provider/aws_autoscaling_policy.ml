(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric__dimensions = {
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric__dimensions *)

type aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric = {
  metric_name : string;  (** metric_name *)
  namespace : string;  (** namespace *)
  dimensions :
    aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric__dimensions
    list;
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric *)

type aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat = {
  stat : string;  (** stat *)
  unit : string option; [@option]  (** unit *)
  metric :
    aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric
    list;
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat *)

type aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries = {
  expression : string option; [@option]  (** expression *)
  id : string;  (** id *)
  label : string option; [@option]  (** label *)
  return_data : bool option; [@option]  (** return_data *)
  metric_stat :
    aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat
    list;
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries *)

type aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification = {
  metric_data_queries :
    aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries
    list;
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification *)

type aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric__dimensions = {
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric__dimensions *)

type aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric = {
  metric_name : string;  (** metric_name *)
  namespace : string;  (** namespace *)
  dimensions :
    aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric__dimensions
    list;
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric *)

type aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat = {
  stat : string;  (** stat *)
  unit : string option; [@option]  (** unit *)
  metric :
    aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric
    list;
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat *)

type aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries = {
  expression : string option; [@option]  (** expression *)
  id : string;  (** id *)
  label : string option; [@option]  (** label *)
  return_data : bool option; [@option]  (** return_data *)
  metric_stat :
    aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat
    list;
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries *)

type aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_load_metric_specification = {
  metric_data_queries :
    aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries
    list;
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_load_metric_specification *)

type aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric__dimensions = {
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric__dimensions *)

type aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric = {
  metric_name : string;  (** metric_name *)
  namespace : string;  (** namespace *)
  dimensions :
    aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric__dimensions
    list;
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric *)

type aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat = {
  stat : string;  (** stat *)
  unit : string option; [@option]  (** unit *)
  metric :
    aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric
    list;
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat *)

type aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries = {
  expression : string option; [@option]  (** expression *)
  id : string;  (** id *)
  label : string option; [@option]  (** label *)
  return_data : bool option; [@option]  (** return_data *)
  metric_stat :
    aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat
    list;
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries *)

type aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification = {
  metric_data_queries :
    aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries
    list;
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification *)

type aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__predefined_load_metric_specification = {
  predefined_metric_type : string;  (** predefined_metric_type *)
  resource_label : string option; [@option]  (** resource_label *)
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__predefined_load_metric_specification *)

type aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__predefined_metric_pair_specification = {
  predefined_metric_type : string;  (** predefined_metric_type *)
  resource_label : string option; [@option]  (** resource_label *)
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__predefined_metric_pair_specification *)

type aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__predefined_scaling_metric_specification = {
  predefined_metric_type : string;  (** predefined_metric_type *)
  resource_label : string option; [@option]  (** resource_label *)
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__predefined_scaling_metric_specification *)

type aws_autoscaling_policy__predictive_scaling_configuration__metric_specification = {
  target_value : float;  (** target_value *)
  customized_capacity_metric_specification :
    aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification
    list;
  customized_load_metric_specification :
    aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_load_metric_specification
    list;
  customized_scaling_metric_specification :
    aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification
    list;
  predefined_load_metric_specification :
    aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__predefined_load_metric_specification
    list;
  predefined_metric_pair_specification :
    aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__predefined_metric_pair_specification
    list;
  predefined_scaling_metric_specification :
    aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__predefined_scaling_metric_specification
    list;
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__predictive_scaling_configuration__metric_specification *)

type aws_autoscaling_policy__predictive_scaling_configuration = {
  max_capacity_breach_behavior : string option; [@option]
      (** max_capacity_breach_behavior *)
  max_capacity_buffer : string option; [@option]
      (** max_capacity_buffer *)
  mode : string option; [@option]  (** mode *)
  scheduling_buffer_time : string option; [@option]
      (** scheduling_buffer_time *)
  metric_specification :
    aws_autoscaling_policy__predictive_scaling_configuration__metric_specification
    list;
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__predictive_scaling_configuration *)

type aws_autoscaling_policy__step_adjustment = {
  metric_interval_lower_bound : string option; [@option]
      (** metric_interval_lower_bound *)
  metric_interval_upper_bound : string option; [@option]
      (** metric_interval_upper_bound *)
  scaling_adjustment : float;  (** scaling_adjustment *)
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__step_adjustment *)

type aws_autoscaling_policy__target_tracking_configuration__customized_metric_specification__metric_dimension = {
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__target_tracking_configuration__customized_metric_specification__metric_dimension *)

type aws_autoscaling_policy__target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions = {
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions *)

type aws_autoscaling_policy__target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric = {
  metric_name : string;  (** metric_name *)
  namespace : string;  (** namespace *)
  dimensions :
    aws_autoscaling_policy__target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions
    list;
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric *)

type aws_autoscaling_policy__target_tracking_configuration__customized_metric_specification__metrics__metric_stat = {
  stat : string;  (** stat *)
  unit : string option; [@option]  (** unit *)
  metric :
    aws_autoscaling_policy__target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric
    list;
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__target_tracking_configuration__customized_metric_specification__metrics__metric_stat *)

type aws_autoscaling_policy__target_tracking_configuration__customized_metric_specification__metrics = {
  expression : string option; [@option]  (** expression *)
  id : string;  (** id *)
  label : string option; [@option]  (** label *)
  return_data : bool option; [@option]  (** return_data *)
  metric_stat :
    aws_autoscaling_policy__target_tracking_configuration__customized_metric_specification__metrics__metric_stat
    list;
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__target_tracking_configuration__customized_metric_specification__metrics *)

type aws_autoscaling_policy__target_tracking_configuration__customized_metric_specification = {
  metric_name : string option; [@option]  (** metric_name *)
  namespace : string option; [@option]  (** namespace *)
  statistic : string option; [@option]  (** statistic *)
  unit : string option; [@option]  (** unit *)
  metric_dimension :
    aws_autoscaling_policy__target_tracking_configuration__customized_metric_specification__metric_dimension
    list;
  metrics :
    aws_autoscaling_policy__target_tracking_configuration__customized_metric_specification__metrics
    list;
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__target_tracking_configuration__customized_metric_specification *)

type aws_autoscaling_policy__target_tracking_configuration__predefined_metric_specification = {
  predefined_metric_type : string;  (** predefined_metric_type *)
  resource_label : string option; [@option]  (** resource_label *)
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__target_tracking_configuration__predefined_metric_specification *)

type aws_autoscaling_policy__target_tracking_configuration = {
  disable_scale_in : bool option; [@option]  (** disable_scale_in *)
  target_value : float;  (** target_value *)
  customized_metric_specification :
    aws_autoscaling_policy__target_tracking_configuration__customized_metric_specification
    list;
  predefined_metric_specification :
    aws_autoscaling_policy__target_tracking_configuration__predefined_metric_specification
    list;
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__target_tracking_configuration *)

type aws_autoscaling_policy = {
  adjustment_type : string option; [@option]  (** adjustment_type *)
  autoscaling_group_name : string;  (** autoscaling_group_name *)
  cooldown : float option; [@option]  (** cooldown *)
  enabled : bool option; [@option]  (** enabled *)
  estimated_instance_warmup : float option; [@option]
      (** estimated_instance_warmup *)
  min_adjustment_magnitude : float option; [@option]
      (** min_adjustment_magnitude *)
  name : string;  (** name *)
  policy_type : string option; [@option]  (** policy_type *)
  scaling_adjustment : float option; [@option]
      (** scaling_adjustment *)
  predictive_scaling_configuration :
    aws_autoscaling_policy__predictive_scaling_configuration list;
  step_adjustment : aws_autoscaling_policy__step_adjustment list;
  target_tracking_configuration :
    aws_autoscaling_policy__target_tracking_configuration list;
}
[@@deriving yojson_of]
(** aws_autoscaling_policy *)

let aws_autoscaling_policy ?adjustment_type ?cooldown ?enabled
    ?estimated_instance_warmup ?min_adjustment_magnitude ?policy_type
    ?scaling_adjustment ~autoscaling_group_name ~name
    ~predictive_scaling_configuration ~step_adjustment
    ~target_tracking_configuration __resource_id =
  let __resource_type = "aws_autoscaling_policy" in
  let __resource =
    {
      adjustment_type;
      autoscaling_group_name;
      cooldown;
      enabled;
      estimated_instance_warmup;
      min_adjustment_magnitude;
      name;
      policy_type;
      scaling_adjustment;
      predictive_scaling_configuration;
      step_adjustment;
      target_tracking_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_autoscaling_policy __resource);
  ()
