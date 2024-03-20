(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric__dimensions = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric__dimensions *)

type predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric = {
  metric_name : string prop;  (** metric_name *)
  namespace : string prop;  (** namespace *)
  dimensions :
    predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric__dimensions
    list;
}
[@@deriving yojson_of]
(** predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric *)

type predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat = {
  stat : string prop;  (** stat *)
  unit : string prop option; [@option]  (** unit *)
  metric :
    predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric
    list;
}
[@@deriving yojson_of]
(** predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat *)

type predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries = {
  expression : string prop option; [@option]  (** expression *)
  id : string prop;  (** id *)
  label : string prop option; [@option]  (** label *)
  return_data : bool prop option; [@option]  (** return_data *)
  metric_stat :
    predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat
    list;
}
[@@deriving yojson_of]
(** predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries *)

type predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification = {
  metric_data_queries :
    predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries
    list;
}
[@@deriving yojson_of]
(** predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification *)

type predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric__dimensions = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric__dimensions *)

type predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric = {
  metric_name : string prop;  (** metric_name *)
  namespace : string prop;  (** namespace *)
  dimensions :
    predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric__dimensions
    list;
}
[@@deriving yojson_of]
(** predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric *)

type predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat = {
  stat : string prop;  (** stat *)
  unit : string prop option; [@option]  (** unit *)
  metric :
    predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric
    list;
}
[@@deriving yojson_of]
(** predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat *)

type predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries = {
  expression : string prop option; [@option]  (** expression *)
  id : string prop;  (** id *)
  label : string prop option; [@option]  (** label *)
  return_data : bool prop option; [@option]  (** return_data *)
  metric_stat :
    predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat
    list;
}
[@@deriving yojson_of]
(** predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries *)

type predictive_scaling_configuration__metric_specification__customized_load_metric_specification = {
  metric_data_queries :
    predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries
    list;
}
[@@deriving yojson_of]
(** predictive_scaling_configuration__metric_specification__customized_load_metric_specification *)

type predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric__dimensions = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric__dimensions *)

type predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric = {
  metric_name : string prop;  (** metric_name *)
  namespace : string prop;  (** namespace *)
  dimensions :
    predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric__dimensions
    list;
}
[@@deriving yojson_of]
(** predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric *)

type predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat = {
  stat : string prop;  (** stat *)
  unit : string prop option; [@option]  (** unit *)
  metric :
    predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric
    list;
}
[@@deriving yojson_of]
(** predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat *)

type predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries = {
  expression : string prop option; [@option]  (** expression *)
  id : string prop;  (** id *)
  label : string prop option; [@option]  (** label *)
  return_data : bool prop option; [@option]  (** return_data *)
  metric_stat :
    predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat
    list;
}
[@@deriving yojson_of]
(** predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries *)

type predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification = {
  metric_data_queries :
    predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries
    list;
}
[@@deriving yojson_of]
(** predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification *)

type predictive_scaling_configuration__metric_specification__predefined_load_metric_specification = {
  predefined_metric_type : string prop;
      (** predefined_metric_type *)
  resource_label : string prop option; [@option]
      (** resource_label *)
}
[@@deriving yojson_of]
(** predictive_scaling_configuration__metric_specification__predefined_load_metric_specification *)

type predictive_scaling_configuration__metric_specification__predefined_metric_pair_specification = {
  predefined_metric_type : string prop;
      (** predefined_metric_type *)
  resource_label : string prop option; [@option]
      (** resource_label *)
}
[@@deriving yojson_of]
(** predictive_scaling_configuration__metric_specification__predefined_metric_pair_specification *)

type predictive_scaling_configuration__metric_specification__predefined_scaling_metric_specification = {
  predefined_metric_type : string prop;
      (** predefined_metric_type *)
  resource_label : string prop option; [@option]
      (** resource_label *)
}
[@@deriving yojson_of]
(** predictive_scaling_configuration__metric_specification__predefined_scaling_metric_specification *)

type predictive_scaling_configuration__metric_specification = {
  target_value : float prop;  (** target_value *)
  customized_capacity_metric_specification :
    predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification
    list;
  customized_load_metric_specification :
    predictive_scaling_configuration__metric_specification__customized_load_metric_specification
    list;
  customized_scaling_metric_specification :
    predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification
    list;
  predefined_load_metric_specification :
    predictive_scaling_configuration__metric_specification__predefined_load_metric_specification
    list;
  predefined_metric_pair_specification :
    predictive_scaling_configuration__metric_specification__predefined_metric_pair_specification
    list;
  predefined_scaling_metric_specification :
    predictive_scaling_configuration__metric_specification__predefined_scaling_metric_specification
    list;
}
[@@deriving yojson_of]
(** predictive_scaling_configuration__metric_specification *)

type predictive_scaling_configuration = {
  max_capacity_breach_behavior : string prop option; [@option]
      (** max_capacity_breach_behavior *)
  max_capacity_buffer : string prop option; [@option]
      (** max_capacity_buffer *)
  mode : string prop option; [@option]  (** mode *)
  scheduling_buffer_time : string prop option; [@option]
      (** scheduling_buffer_time *)
  metric_specification :
    predictive_scaling_configuration__metric_specification list;
}
[@@deriving yojson_of]
(** predictive_scaling_configuration *)

type step_adjustment = {
  metric_interval_lower_bound : string prop option; [@option]
      (** metric_interval_lower_bound *)
  metric_interval_upper_bound : string prop option; [@option]
      (** metric_interval_upper_bound *)
  scaling_adjustment : float prop;  (** scaling_adjustment *)
}
[@@deriving yojson_of]
(** step_adjustment *)

type target_tracking_configuration__customized_metric_specification__metric_dimension = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** target_tracking_configuration__customized_metric_specification__metric_dimension *)

type target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions *)

type target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric = {
  metric_name : string prop;  (** metric_name *)
  namespace : string prop;  (** namespace *)
  dimensions :
    target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions
    list;
}
[@@deriving yojson_of]
(** target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric *)

type target_tracking_configuration__customized_metric_specification__metrics__metric_stat = {
  stat : string prop;  (** stat *)
  unit : string prop option; [@option]  (** unit *)
  metric :
    target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric
    list;
}
[@@deriving yojson_of]
(** target_tracking_configuration__customized_metric_specification__metrics__metric_stat *)

type target_tracking_configuration__customized_metric_specification__metrics = {
  expression : string prop option; [@option]  (** expression *)
  id : string prop;  (** id *)
  label : string prop option; [@option]  (** label *)
  return_data : bool prop option; [@option]  (** return_data *)
  metric_stat :
    target_tracking_configuration__customized_metric_specification__metrics__metric_stat
    list;
}
[@@deriving yojson_of]
(** target_tracking_configuration__customized_metric_specification__metrics *)

type target_tracking_configuration__customized_metric_specification = {
  metric_name : string prop option; [@option]  (** metric_name *)
  namespace : string prop option; [@option]  (** namespace *)
  statistic : string prop option; [@option]  (** statistic *)
  unit : string prop option; [@option]  (** unit *)
  metric_dimension :
    target_tracking_configuration__customized_metric_specification__metric_dimension
    list;
  metrics :
    target_tracking_configuration__customized_metric_specification__metrics
    list;
}
[@@deriving yojson_of]
(** target_tracking_configuration__customized_metric_specification *)

type target_tracking_configuration__predefined_metric_specification = {
  predefined_metric_type : string prop;
      (** predefined_metric_type *)
  resource_label : string prop option; [@option]
      (** resource_label *)
}
[@@deriving yojson_of]
(** target_tracking_configuration__predefined_metric_specification *)

type target_tracking_configuration = {
  disable_scale_in : bool prop option; [@option]
      (** disable_scale_in *)
  target_value : float prop;  (** target_value *)
  customized_metric_specification :
    target_tracking_configuration__customized_metric_specification
    list;
  predefined_metric_specification :
    target_tracking_configuration__predefined_metric_specification
    list;
}
[@@deriving yojson_of]
(** target_tracking_configuration *)

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
    predictive_scaling_configuration list;
  step_adjustment : step_adjustment list;
  target_tracking_configuration : target_tracking_configuration list;
}
[@@deriving yojson_of]
(** aws_autoscaling_policy *)

let predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric__dimensions
    ~name ~value () :
    predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric__dimensions
    =
  { name; value }

let predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric
    ~metric_name ~namespace ~dimensions () :
    predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat__metric
    =
  { metric_name; namespace; dimensions }

let predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat
    ?unit ~stat ~metric () :
    predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries__metric_stat
    =
  { stat; unit; metric }

let predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries
    ?expression ?label ?return_data ~id ~metric_stat () :
    predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification__metric_data_queries
    =
  { expression; id; label; return_data; metric_stat }

let predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification
    ~metric_data_queries () :
    predictive_scaling_configuration__metric_specification__customized_capacity_metric_specification
    =
  { metric_data_queries }

let predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric__dimensions
    ~name ~value () :
    predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric__dimensions
    =
  { name; value }

let predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric
    ~metric_name ~namespace ~dimensions () :
    predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat__metric
    =
  { metric_name; namespace; dimensions }

let predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat
    ?unit ~stat ~metric () :
    predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries__metric_stat
    =
  { stat; unit; metric }

let predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries
    ?expression ?label ?return_data ~id ~metric_stat () :
    predictive_scaling_configuration__metric_specification__customized_load_metric_specification__metric_data_queries
    =
  { expression; id; label; return_data; metric_stat }

let predictive_scaling_configuration__metric_specification__customized_load_metric_specification
    ~metric_data_queries () :
    predictive_scaling_configuration__metric_specification__customized_load_metric_specification
    =
  { metric_data_queries }

let predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric__dimensions
    ~name ~value () :
    predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric__dimensions
    =
  { name; value }

let predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric
    ~metric_name ~namespace ~dimensions () :
    predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat__metric
    =
  { metric_name; namespace; dimensions }

let predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat
    ?unit ~stat ~metric () :
    predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries__metric_stat
    =
  { stat; unit; metric }

let predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries
    ?expression ?label ?return_data ~id ~metric_stat () :
    predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification__metric_data_queries
    =
  { expression; id; label; return_data; metric_stat }

let predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification
    ~metric_data_queries () :
    predictive_scaling_configuration__metric_specification__customized_scaling_metric_specification
    =
  { metric_data_queries }

let predictive_scaling_configuration__metric_specification__predefined_load_metric_specification
    ?resource_label ~predefined_metric_type () :
    predictive_scaling_configuration__metric_specification__predefined_load_metric_specification
    =
  { predefined_metric_type; resource_label }

let predictive_scaling_configuration__metric_specification__predefined_metric_pair_specification
    ?resource_label ~predefined_metric_type () :
    predictive_scaling_configuration__metric_specification__predefined_metric_pair_specification
    =
  { predefined_metric_type; resource_label }

let predictive_scaling_configuration__metric_specification__predefined_scaling_metric_specification
    ?resource_label ~predefined_metric_type () :
    predictive_scaling_configuration__metric_specification__predefined_scaling_metric_specification
    =
  { predefined_metric_type; resource_label }

let predictive_scaling_configuration__metric_specification
    ~target_value ~customized_capacity_metric_specification
    ~customized_load_metric_specification
    ~customized_scaling_metric_specification
    ~predefined_load_metric_specification
    ~predefined_metric_pair_specification
    ~predefined_scaling_metric_specification () :
    predictive_scaling_configuration__metric_specification =
  {
    target_value;
    customized_capacity_metric_specification;
    customized_load_metric_specification;
    customized_scaling_metric_specification;
    predefined_load_metric_specification;
    predefined_metric_pair_specification;
    predefined_scaling_metric_specification;
  }

let predictive_scaling_configuration ?max_capacity_breach_behavior
    ?max_capacity_buffer ?mode ?scheduling_buffer_time
    ~metric_specification () : predictive_scaling_configuration =
  {
    max_capacity_breach_behavior;
    max_capacity_buffer;
    mode;
    scheduling_buffer_time;
    metric_specification;
  }

let step_adjustment ?metric_interval_lower_bound
    ?metric_interval_upper_bound ~scaling_adjustment () :
    step_adjustment =
  {
    metric_interval_lower_bound;
    metric_interval_upper_bound;
    scaling_adjustment;
  }

let target_tracking_configuration__customized_metric_specification__metric_dimension
    ~name ~value () :
    target_tracking_configuration__customized_metric_specification__metric_dimension
    =
  { name; value }

let target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions
    ~name ~value () :
    target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions
    =
  { name; value }

let target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric
    ~metric_name ~namespace ~dimensions () :
    target_tracking_configuration__customized_metric_specification__metrics__metric_stat__metric
    =
  { metric_name; namespace; dimensions }

let target_tracking_configuration__customized_metric_specification__metrics__metric_stat
    ?unit ~stat ~metric () :
    target_tracking_configuration__customized_metric_specification__metrics__metric_stat
    =
  { stat; unit; metric }

let target_tracking_configuration__customized_metric_specification__metrics
    ?expression ?label ?return_data ~id ~metric_stat () :
    target_tracking_configuration__customized_metric_specification__metrics
    =
  { expression; id; label; return_data; metric_stat }

let target_tracking_configuration__customized_metric_specification
    ?metric_name ?namespace ?statistic ?unit ~metric_dimension
    ~metrics () :
    target_tracking_configuration__customized_metric_specification =
  {
    metric_name;
    namespace;
    statistic;
    unit;
    metric_dimension;
    metrics;
  }

let target_tracking_configuration__predefined_metric_specification
    ?resource_label ~predefined_metric_type () :
    target_tracking_configuration__predefined_metric_specification =
  { predefined_metric_type; resource_label }

let target_tracking_configuration ?disable_scale_in ~target_value
    ~customized_metric_specification ~predefined_metric_specification
    () : target_tracking_configuration =
  {
    disable_scale_in;
    target_value;
    customized_metric_specification;
    predefined_metric_specification;
  }

let aws_autoscaling_policy ?adjustment_type ?cooldown ?enabled
    ?estimated_instance_warmup ?id ?metric_aggregation_type
    ?min_adjustment_magnitude ?policy_type ?scaling_adjustment
    ~autoscaling_group_name ~name ~predictive_scaling_configuration
    ~step_adjustment ~target_tracking_configuration () :
    aws_autoscaling_policy =
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

type t = {
  adjustment_type : string prop;
  arn : string prop;
  autoscaling_group_name : string prop;
  cooldown : float prop;
  enabled : bool prop;
  estimated_instance_warmup : float prop;
  id : string prop;
  metric_aggregation_type : string prop;
  min_adjustment_magnitude : float prop;
  name : string prop;
  policy_type : string prop;
  scaling_adjustment : float prop;
}

let make ?adjustment_type ?cooldown ?enabled
    ?estimated_instance_warmup ?id ?metric_aggregation_type
    ?min_adjustment_magnitude ?policy_type ?scaling_adjustment
    ~autoscaling_group_name ~name ~predictive_scaling_configuration
    ~step_adjustment ~target_tracking_configuration __id =
  let __type = "aws_autoscaling_policy" in
  let __attrs =
    ({
       adjustment_type = Prop.computed __type __id "adjustment_type";
       arn = Prop.computed __type __id "arn";
       autoscaling_group_name =
         Prop.computed __type __id "autoscaling_group_name";
       cooldown = Prop.computed __type __id "cooldown";
       enabled = Prop.computed __type __id "enabled";
       estimated_instance_warmup =
         Prop.computed __type __id "estimated_instance_warmup";
       id = Prop.computed __type __id "id";
       metric_aggregation_type =
         Prop.computed __type __id "metric_aggregation_type";
       min_adjustment_magnitude =
         Prop.computed __type __id "min_adjustment_magnitude";
       name = Prop.computed __type __id "name";
       policy_type = Prop.computed __type __id "policy_type";
       scaling_adjustment =
         Prop.computed __type __id "scaling_adjustment";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_autoscaling_policy
        (aws_autoscaling_policy ?adjustment_type ?cooldown ?enabled
           ?estimated_instance_warmup ?id ?metric_aggregation_type
           ?min_adjustment_magnitude ?policy_type ?scaling_adjustment
           ~autoscaling_group_name ~name
           ~predictive_scaling_configuration ~step_adjustment
           ~target_tracking_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?adjustment_type ?cooldown ?enabled
    ?estimated_instance_warmup ?id ?metric_aggregation_type
    ?min_adjustment_magnitude ?policy_type ?scaling_adjustment
    ~autoscaling_group_name ~name ~predictive_scaling_configuration
    ~step_adjustment ~target_tracking_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?adjustment_type ?cooldown ?enabled
      ?estimated_instance_warmup ?id ?metric_aggregation_type
      ?min_adjustment_magnitude ?policy_type ?scaling_adjustment
      ~autoscaling_group_name ~name ~predictive_scaling_configuration
      ~step_adjustment ~target_tracking_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
