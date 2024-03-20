(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type step_scaling_policy_configuration__step_adjustment = {
  metric_interval_lower_bound : string prop option; [@option]
      (** metric_interval_lower_bound *)
  metric_interval_upper_bound : string prop option; [@option]
      (** metric_interval_upper_bound *)
  scaling_adjustment : float prop;  (** scaling_adjustment *)
}
[@@deriving yojson_of]
(** step_scaling_policy_configuration__step_adjustment *)

type step_scaling_policy_configuration = {
  adjustment_type : string prop option; [@option]
      (** adjustment_type *)
  cooldown : float prop option; [@option]  (** cooldown *)
  metric_aggregation_type : string prop option; [@option]
      (** metric_aggregation_type *)
  min_adjustment_magnitude : float prop option; [@option]
      (** min_adjustment_magnitude *)
  step_adjustment :
    step_scaling_policy_configuration__step_adjustment list;
}
[@@deriving yojson_of]
(** step_scaling_policy_configuration *)

type target_tracking_scaling_policy_configuration__customized_metric_specification__dimensions = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** target_tracking_scaling_policy_configuration__customized_metric_specification__dimensions *)

type target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions *)

type target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric = {
  metric_name : string prop;  (** metric_name *)
  namespace : string prop;  (** namespace *)
  dimensions :
    target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions
    list;
}
[@@deriving yojson_of]
(** target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric *)

type target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat = {
  stat : string prop;  (** stat *)
  unit : string prop option; [@option]  (** unit *)
  metric :
    target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric
    list;
}
[@@deriving yojson_of]
(** target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat *)

type target_tracking_scaling_policy_configuration__customized_metric_specification__metrics = {
  expression : string prop option; [@option]  (** expression *)
  id : string prop;  (** id *)
  label : string prop option; [@option]  (** label *)
  return_data : bool prop option; [@option]  (** return_data *)
  metric_stat :
    target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat
    list;
}
[@@deriving yojson_of]
(** target_tracking_scaling_policy_configuration__customized_metric_specification__metrics *)

type target_tracking_scaling_policy_configuration__customized_metric_specification = {
  metric_name : string prop option; [@option]  (** metric_name *)
  namespace : string prop option; [@option]  (** namespace *)
  statistic : string prop option; [@option]  (** statistic *)
  unit : string prop option; [@option]  (** unit *)
  dimensions :
    target_tracking_scaling_policy_configuration__customized_metric_specification__dimensions
    list;
  metrics :
    target_tracking_scaling_policy_configuration__customized_metric_specification__metrics
    list;
}
[@@deriving yojson_of]
(** target_tracking_scaling_policy_configuration__customized_metric_specification *)

type target_tracking_scaling_policy_configuration__predefined_metric_specification = {
  predefined_metric_type : string prop;
      (** predefined_metric_type *)
  resource_label : string prop option; [@option]
      (** resource_label *)
}
[@@deriving yojson_of]
(** target_tracking_scaling_policy_configuration__predefined_metric_specification *)

type target_tracking_scaling_policy_configuration = {
  disable_scale_in : bool prop option; [@option]
      (** disable_scale_in *)
  scale_in_cooldown : float prop option; [@option]
      (** scale_in_cooldown *)
  scale_out_cooldown : float prop option; [@option]
      (** scale_out_cooldown *)
  target_value : float prop;  (** target_value *)
  customized_metric_specification :
    target_tracking_scaling_policy_configuration__customized_metric_specification
    list;
  predefined_metric_specification :
    target_tracking_scaling_policy_configuration__predefined_metric_specification
    list;
}
[@@deriving yojson_of]
(** target_tracking_scaling_policy_configuration *)

type aws_appautoscaling_policy = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  policy_type : string prop option; [@option]  (** policy_type *)
  resource_id : string prop;  (** resource_id *)
  scalable_dimension : string prop;  (** scalable_dimension *)
  service_namespace : string prop;  (** service_namespace *)
  step_scaling_policy_configuration :
    step_scaling_policy_configuration list;
  target_tracking_scaling_policy_configuration :
    target_tracking_scaling_policy_configuration list;
}
[@@deriving yojson_of]
(** aws_appautoscaling_policy *)

let step_scaling_policy_configuration__step_adjustment
    ?metric_interval_lower_bound ?metric_interval_upper_bound
    ~scaling_adjustment () :
    step_scaling_policy_configuration__step_adjustment =
  {
    metric_interval_lower_bound;
    metric_interval_upper_bound;
    scaling_adjustment;
  }

let step_scaling_policy_configuration ?adjustment_type ?cooldown
    ?metric_aggregation_type ?min_adjustment_magnitude
    ~step_adjustment () : step_scaling_policy_configuration =
  {
    adjustment_type;
    cooldown;
    metric_aggregation_type;
    min_adjustment_magnitude;
    step_adjustment;
  }

let target_tracking_scaling_policy_configuration__customized_metric_specification__dimensions
    ~name ~value () :
    target_tracking_scaling_policy_configuration__customized_metric_specification__dimensions
    =
  { name; value }

let target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions
    ~name ~value () :
    target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric__dimensions
    =
  { name; value }

let target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric
    ~metric_name ~namespace ~dimensions () :
    target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat__metric
    =
  { metric_name; namespace; dimensions }

let target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat
    ?unit ~stat ~metric () :
    target_tracking_scaling_policy_configuration__customized_metric_specification__metrics__metric_stat
    =
  { stat; unit; metric }

let target_tracking_scaling_policy_configuration__customized_metric_specification__metrics
    ?expression ?label ?return_data ~id ~metric_stat () :
    target_tracking_scaling_policy_configuration__customized_metric_specification__metrics
    =
  { expression; id; label; return_data; metric_stat }

let target_tracking_scaling_policy_configuration__customized_metric_specification
    ?metric_name ?namespace ?statistic ?unit ~dimensions ~metrics ()
    :
    target_tracking_scaling_policy_configuration__customized_metric_specification
    =
  { metric_name; namespace; statistic; unit; dimensions; metrics }

let target_tracking_scaling_policy_configuration__predefined_metric_specification
    ?resource_label ~predefined_metric_type () :
    target_tracking_scaling_policy_configuration__predefined_metric_specification
    =
  { predefined_metric_type; resource_label }

let target_tracking_scaling_policy_configuration ?disable_scale_in
    ?scale_in_cooldown ?scale_out_cooldown ~target_value
    ~customized_metric_specification ~predefined_metric_specification
    () : target_tracking_scaling_policy_configuration =
  {
    disable_scale_in;
    scale_in_cooldown;
    scale_out_cooldown;
    target_value;
    customized_metric_specification;
    predefined_metric_specification;
  }

let aws_appautoscaling_policy ?id ?policy_type ~name ~resource_id
    ~scalable_dimension ~service_namespace
    ~step_scaling_policy_configuration
    ~target_tracking_scaling_policy_configuration () :
    aws_appautoscaling_policy =
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

type t = {
  alarm_arns : string list prop;
  arn : string prop;
  id : string prop;
  name : string prop;
  policy_type : string prop;
  resource_id : string prop;
  scalable_dimension : string prop;
  service_namespace : string prop;
}

let make ?id ?policy_type ~name ~resource_id ~scalable_dimension
    ~service_namespace ~step_scaling_policy_configuration
    ~target_tracking_scaling_policy_configuration __id =
  let __type = "aws_appautoscaling_policy" in
  let __attrs =
    ({
       alarm_arns = Prop.computed __type __id "alarm_arns";
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       policy_type = Prop.computed __type __id "policy_type";
       resource_id = Prop.computed __type __id "resource_id";
       scalable_dimension =
         Prop.computed __type __id "scalable_dimension";
       service_namespace =
         Prop.computed __type __id "service_namespace";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appautoscaling_policy
        (aws_appautoscaling_policy ?id ?policy_type ~name
           ~resource_id ~scalable_dimension ~service_namespace
           ~step_scaling_policy_configuration
           ~target_tracking_scaling_policy_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?policy_type ~name ~resource_id
    ~scalable_dimension ~service_namespace
    ~step_scaling_policy_configuration
    ~target_tracking_scaling_policy_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?id ?policy_type ~name ~resource_id ~scalable_dimension
      ~service_namespace ~step_scaling_policy_configuration
      ~target_tracking_scaling_policy_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
