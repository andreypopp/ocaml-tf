(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric__dimensions = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric__dimensions *)

type aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric = {
  metric_name : string prop;  (** metric_name *)
  namespace : string prop;  (** namespace *)
  dimensions :
    aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric__dimensions
    list;
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric *)

type aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat = {
  stat : string prop;  (** stat *)
  unit : string prop option; [@option]  (** unit *)
  metric :
    aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric
    list;
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat *)

type aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries = {
  expression : string prop option; [@option]  (** expression *)
  id : string prop;  (** id *)
  label : string prop option; [@option]  (** label *)
  return_data : bool prop option; [@option]  (** return_data *)
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
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric__dimensions *)

type aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric = {
  metric_name : string prop;  (** metric_name *)
  namespace : string prop;  (** namespace *)
  dimensions :
    aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric__dimensions
    list;
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric *)

type aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat = {
  stat : string prop;  (** stat *)
  unit : string prop option; [@option]  (** unit *)
  metric :
    aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric
    list;
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat *)

type aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries = {
  expression : string prop option; [@option]  (** expression *)
  id : string prop;  (** id *)
  label : string prop option; [@option]  (** label *)
  return_data : bool prop option; [@option]  (** return_data *)
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
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric__dimensions *)

type aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric = {
  metric_name : string prop;  (** metric_name *)
  namespace : string prop;  (** namespace *)
  dimensions :
    aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric__dimensions
    list;
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric *)

type aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat = {
  stat : string prop;  (** stat *)
  unit : string prop option; [@option]  (** unit *)
  metric :
    aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric
    list;
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat *)

type aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries = {
  expression : string prop option; [@option]  (** expression *)
  id : string prop;  (** id *)
  label : string prop option; [@option]  (** label *)
  return_data : bool prop option; [@option]  (** return_data *)
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
  predefined_metric_type : string prop;
      (** predefined_metric_type *)
  resource_label : string prop option; [@option]
      (** resource_label *)
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__predefined_load_metric_specification *)

type aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__predefined_metric_pair_specification = {
  predefined_metric_type : string prop;
      (** predefined_metric_type *)
  resource_label : string prop option; [@option]
      (** resource_label *)
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__predefined_metric_pair_specification *)

type aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__predefined_scaling_metric_specification = {
  predefined_metric_type : string prop;
      (** predefined_metric_type *)
  resource_label : string prop option; [@option]
      (** resource_label *)
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__predictive_scaling_configuration__metric_specification__predefined_scaling_metric_specification *)

type aws_autoscaling_policy__predictive_scaling_configuration__metric_specification = {
  target_value : float prop;  (** target_value *)
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
  max_capacity_breach_behavior : string prop option; [@option]
      (** max_capacity_breach_behavior *)
  max_capacity_buffer : string prop option; [@option]
      (** max_capacity_buffer *)
  mode : string prop option; [@option]  (** mode *)
  scheduling_buffer_time : string prop option; [@option]
      (** scheduling_buffer_time *)
  metric_specification :
    aws_autoscaling_policy__predictive_scaling_configuration__metric_specification
    list;
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__predictive_scaling_configuration *)

type aws_autoscaling_policy__step_adjustment = {
  metric_interval_lower_bound : string prop option; [@option]
      (** metric_interval_lower_bound *)
  metric_interval_upper_bound : string prop option; [@option]
      (** metric_interval_upper_bound *)
  scaling_adjustment : float prop;  (** scaling_adjustment *)
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__step_adjustment *)

type aws_autoscaling_policy__target_tracking_configuration__customized_metric_specification__metric_dimension = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__target_tracking_configuration__customized_metric_specification__metric_dimension *)

type aws_autoscaling_policy__target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions *)

type aws_autoscaling_policy__target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric = {
  metric_name : string prop;  (** metric_name *)
  namespace : string prop;  (** namespace *)
  dimensions :
    aws_autoscaling_policy__target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions
    list;
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric *)

type aws_autoscaling_policy__target_tracking_configuration__customized_metric_specification__metrics__metric_stat = {
  stat : string prop;  (** stat *)
  unit : string prop option; [@option]  (** unit *)
  metric :
    aws_autoscaling_policy__target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric
    list;
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__target_tracking_configuration__customized_metric_specification__metrics__metric_stat *)

type aws_autoscaling_policy__target_tracking_configuration__customized_metric_specification__metrics = {
  expression : string prop option; [@option]  (** expression *)
  id : string prop;  (** id *)
  label : string prop option; [@option]  (** label *)
  return_data : bool prop option; [@option]  (** return_data *)
  metric_stat :
    aws_autoscaling_policy__target_tracking_configuration__customized_metric_specification__metrics__metric_stat
    list;
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__target_tracking_configuration__customized_metric_specification__metrics *)

type aws_autoscaling_policy__target_tracking_configuration__customized_metric_specification = {
  metric_name : string prop option; [@option]  (** metric_name *)
  namespace : string prop option; [@option]  (** namespace *)
  statistic : string prop option; [@option]  (** statistic *)
  unit : string prop option; [@option]  (** unit *)
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
  predefined_metric_type : string prop;
      (** predefined_metric_type *)
  resource_label : string prop option; [@option]
      (** resource_label *)
}
[@@deriving yojson_of]
(** aws_autoscaling_policy__target_tracking_configuration__predefined_metric_specification *)

type aws_autoscaling_policy__target_tracking_configuration = {
  disable_scale_in : bool prop option; [@option]
      (** disable_scale_in *)
  target_value : float prop;  (** target_value *)
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
  adjustment_type : string prop option; [@option]
      (** adjustment_type *)
  autoscaling_group_name : string prop;
      (** autoscaling_group_name *)
  cooldown : float prop option; [@option]  (** cooldown *)
  enabled : bool prop option; [@option]  (** enabled *)
  estimated_instance_warmup : float prop option; [@option]
      (** estimated_instance_warmup *)
  id : string prop option; [@option]  (** id *)
  metric_aggregation_type : string prop option; [@option]
      (** metric_aggregation_type *)
  min_adjustment_magnitude : float prop option; [@option]
      (** min_adjustment_magnitude *)
  name : string prop;  (** name *)
  policy_type : string prop option; [@option]  (** policy_type *)
  scaling_adjustment : float prop option; [@option]
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
    ?estimated_instance_warmup ?id ?metric_aggregation_type
    ?min_adjustment_magnitude ?policy_type ?scaling_adjustment
    ~autoscaling_group_name ~name ~predictive_scaling_configuration
    ~step_adjustment ~target_tracking_configuration __resource_id =
  let __resource_type = "aws_autoscaling_policy" in
  let __resource =
    {
      adjustment_type;
      autoscaling_group_name;
      cooldown;
      enabled;
      estimated_instance_warmup;
      id;
      metric_aggregation_type;
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
