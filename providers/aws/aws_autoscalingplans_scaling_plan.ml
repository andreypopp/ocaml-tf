(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type application_source__tag_filter = {
  key : string prop;
  values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : application_source__tag_filter) -> ()

let yojson_of_application_source__tag_filter =
  (function
   | { key = v_key; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "values", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : application_source__tag_filter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_application_source__tag_filter

[@@@deriving.end]

type application_source = {
  cloudformation_stack_arn : string prop option; [@option]
  tag_filter : application_source__tag_filter list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : application_source) -> ()

let yojson_of_application_source =
  (function
   | {
       cloudformation_stack_arn = v_cloudformation_stack_arn;
       tag_filter = v_tag_filter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_application_source__tag_filter
             v_tag_filter
         in
         ("tag_filter", arg) :: bnds
       in
       let bnds =
         match v_cloudformation_stack_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cloudformation_stack_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : application_source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_application_source

[@@@deriving.end]

type scaling_instruction__customized_load_metric_specification = {
  dimensions : (string * string prop) list option; [@option]
  metric_name : string prop;
  namespace : string prop;
  statistic : string prop;
  unit : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : scaling_instruction__customized_load_metric_specification) ->
  ()

let yojson_of_scaling_instruction__customized_load_metric_specification
    =
  (function
   | {
       dimensions = v_dimensions;
       metric_name = v_metric_name;
       namespace = v_namespace;
       statistic = v_statistic;
       unit = v_unit;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_unit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "unit", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_statistic in
         ("statistic", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_metric_name in
         ("metric_name", arg) :: bnds
       in
       let bnds =
         match v_dimensions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "dimensions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : scaling_instruction__customized_load_metric_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_scaling_instruction__customized_load_metric_specification

[@@@deriving.end]

type scaling_instruction__predefined_load_metric_specification = {
  predefined_load_metric_type : string prop;
  resource_label : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : scaling_instruction__predefined_load_metric_specification) ->
  ()

let yojson_of_scaling_instruction__predefined_load_metric_specification
    =
  (function
   | {
       predefined_load_metric_type = v_predefined_load_metric_type;
       resource_label = v_resource_label;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_resource_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_label", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_predefined_load_metric_type
         in
         ("predefined_load_metric_type", arg) :: bnds
       in
       `Assoc bnds
    : scaling_instruction__predefined_load_metric_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_scaling_instruction__predefined_load_metric_specification

[@@@deriving.end]

type scaling_instruction__target_tracking_configuration__customized_scaling_metric_specification = {
  dimensions : (string * string prop) list option; [@option]
  metric_name : string prop;
  namespace : string prop;
  statistic : string prop;
  unit : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       scaling_instruction__target_tracking_configuration__customized_scaling_metric_specification) ->
  ()

let yojson_of_scaling_instruction__target_tracking_configuration__customized_scaling_metric_specification
    =
  (function
   | {
       dimensions = v_dimensions;
       metric_name = v_metric_name;
       namespace = v_namespace;
       statistic = v_statistic;
       unit = v_unit;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_unit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "unit", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_statistic in
         ("statistic", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_metric_name in
         ("metric_name", arg) :: bnds
       in
       let bnds =
         match v_dimensions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "dimensions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : scaling_instruction__target_tracking_configuration__customized_scaling_metric_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_scaling_instruction__target_tracking_configuration__customized_scaling_metric_specification

[@@@deriving.end]

type scaling_instruction__target_tracking_configuration__predefined_scaling_metric_specification = {
  predefined_scaling_metric_type : string prop;
  resource_label : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       scaling_instruction__target_tracking_configuration__predefined_scaling_metric_specification) ->
  ()

let yojson_of_scaling_instruction__target_tracking_configuration__predefined_scaling_metric_specification
    =
  (function
   | {
       predefined_scaling_metric_type =
         v_predefined_scaling_metric_type;
       resource_label = v_resource_label;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_resource_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_label", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_predefined_scaling_metric_type
         in
         ("predefined_scaling_metric_type", arg) :: bnds
       in
       `Assoc bnds
    : scaling_instruction__target_tracking_configuration__predefined_scaling_metric_specification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_scaling_instruction__target_tracking_configuration__predefined_scaling_metric_specification

[@@@deriving.end]

type scaling_instruction__target_tracking_configuration = {
  disable_scale_in : bool prop option; [@option]
  estimated_instance_warmup : float prop option; [@option]
  scale_in_cooldown : float prop option; [@option]
  scale_out_cooldown : float prop option; [@option]
  target_value : float prop;
  customized_scaling_metric_specification :
    scaling_instruction__target_tracking_configuration__customized_scaling_metric_specification
    list;
  predefined_scaling_metric_specification :
    scaling_instruction__target_tracking_configuration__predefined_scaling_metric_specification
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : scaling_instruction__target_tracking_configuration) -> ()

let yojson_of_scaling_instruction__target_tracking_configuration =
  (function
   | {
       disable_scale_in = v_disable_scale_in;
       estimated_instance_warmup = v_estimated_instance_warmup;
       scale_in_cooldown = v_scale_in_cooldown;
       scale_out_cooldown = v_scale_out_cooldown;
       target_value = v_target_value;
       customized_scaling_metric_specification =
         v_customized_scaling_metric_specification;
       predefined_scaling_metric_specification =
         v_predefined_scaling_metric_specification;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_scaling_instruction__target_tracking_configuration__predefined_scaling_metric_specification
             v_predefined_scaling_metric_specification
         in
         ("predefined_scaling_metric_specification", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_scaling_instruction__target_tracking_configuration__customized_scaling_metric_specification
             v_customized_scaling_metric_specification
         in
         ("customized_scaling_metric_specification", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_target_value in
         ("target_value", arg) :: bnds
       in
       let bnds =
         match v_scale_out_cooldown with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "scale_out_cooldown", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scale_in_cooldown with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "scale_in_cooldown", arg in
             bnd :: bnds
       in
       let bnds =
         match v_estimated_instance_warmup with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "estimated_instance_warmup", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_scale_in with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_scale_in", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : scaling_instruction__target_tracking_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scaling_instruction__target_tracking_configuration

[@@@deriving.end]

type scaling_instruction = {
  disable_dynamic_scaling : bool prop option; [@option]
  max_capacity : float prop;
  min_capacity : float prop;
  predictive_scaling_max_capacity_behavior : string prop option;
      [@option]
  predictive_scaling_max_capacity_buffer : float prop option;
      [@option]
  predictive_scaling_mode : string prop option; [@option]
  resource_id : string prop;
  scalable_dimension : string prop;
  scaling_policy_update_behavior : string prop option; [@option]
  scheduled_action_buffer_time : float prop option; [@option]
  service_namespace : string prop;
  customized_load_metric_specification :
    scaling_instruction__customized_load_metric_specification list;
  predefined_load_metric_specification :
    scaling_instruction__predefined_load_metric_specification list;
  target_tracking_configuration :
    scaling_instruction__target_tracking_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : scaling_instruction) -> ()

let yojson_of_scaling_instruction =
  (function
   | {
       disable_dynamic_scaling = v_disable_dynamic_scaling;
       max_capacity = v_max_capacity;
       min_capacity = v_min_capacity;
       predictive_scaling_max_capacity_behavior =
         v_predictive_scaling_max_capacity_behavior;
       predictive_scaling_max_capacity_buffer =
         v_predictive_scaling_max_capacity_buffer;
       predictive_scaling_mode = v_predictive_scaling_mode;
       resource_id = v_resource_id;
       scalable_dimension = v_scalable_dimension;
       scaling_policy_update_behavior =
         v_scaling_policy_update_behavior;
       scheduled_action_buffer_time = v_scheduled_action_buffer_time;
       service_namespace = v_service_namespace;
       customized_load_metric_specification =
         v_customized_load_metric_specification;
       predefined_load_metric_specification =
         v_predefined_load_metric_specification;
       target_tracking_configuration =
         v_target_tracking_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_scaling_instruction__target_tracking_configuration
             v_target_tracking_configuration
         in
         ("target_tracking_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_scaling_instruction__predefined_load_metric_specification
             v_predefined_load_metric_specification
         in
         ("predefined_load_metric_specification", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_scaling_instruction__customized_load_metric_specification
             v_customized_load_metric_specification
         in
         ("customized_load_metric_specification", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_namespace
         in
         ("service_namespace", arg) :: bnds
       in
       let bnds =
         match v_scheduled_action_buffer_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "scheduled_action_buffer_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scaling_policy_update_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scaling_policy_update_behavior", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_scalable_dimension
         in
         ("scalable_dimension", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_id in
         ("resource_id", arg) :: bnds
       in
       let bnds =
         match v_predictive_scaling_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "predictive_scaling_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_predictive_scaling_max_capacity_buffer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "predictive_scaling_max_capacity_buffer", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_predictive_scaling_max_capacity_behavior with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "predictive_scaling_max_capacity_behavior", arg
             in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min_capacity in
         ("min_capacity", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_capacity in
         ("max_capacity", arg) :: bnds
       in
       let bnds =
         match v_disable_dynamic_scaling with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_dynamic_scaling", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : scaling_instruction -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scaling_instruction

[@@@deriving.end]

type aws_autoscalingplans_scaling_plan = {
  id : string prop option; [@option]
  name : string prop;
  application_source : application_source list;
  scaling_instruction : scaling_instruction list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_autoscalingplans_scaling_plan) -> ()

let yojson_of_aws_autoscalingplans_scaling_plan =
  (function
   | {
       id = v_id;
       name = v_name;
       application_source = v_application_source;
       scaling_instruction = v_scaling_instruction;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_scaling_instruction
             v_scaling_instruction
         in
         ("scaling_instruction", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_application_source
             v_application_source
         in
         ("application_source", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_autoscalingplans_scaling_plan ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_autoscalingplans_scaling_plan

[@@@deriving.end]

let application_source__tag_filter ?values ~key () :
    application_source__tag_filter =
  { key; values }

let application_source ?cloudformation_stack_arn ~tag_filter () :
    application_source =
  { cloudformation_stack_arn; tag_filter }

let scaling_instruction__customized_load_metric_specification
    ?dimensions ?unit ~metric_name ~namespace ~statistic () :
    scaling_instruction__customized_load_metric_specification =
  { dimensions; metric_name; namespace; statistic; unit }

let scaling_instruction__predefined_load_metric_specification
    ?resource_label ~predefined_load_metric_type () :
    scaling_instruction__predefined_load_metric_specification =
  { predefined_load_metric_type; resource_label }

let scaling_instruction__target_tracking_configuration__customized_scaling_metric_specification
    ?dimensions ?unit ~metric_name ~namespace ~statistic () :
    scaling_instruction__target_tracking_configuration__customized_scaling_metric_specification
    =
  { dimensions; metric_name; namespace; statistic; unit }

let scaling_instruction__target_tracking_configuration__predefined_scaling_metric_specification
    ?resource_label ~predefined_scaling_metric_type () :
    scaling_instruction__target_tracking_configuration__predefined_scaling_metric_specification
    =
  { predefined_scaling_metric_type; resource_label }

let scaling_instruction__target_tracking_configuration
    ?disable_scale_in ?estimated_instance_warmup ?scale_in_cooldown
    ?scale_out_cooldown
    ?(customized_scaling_metric_specification = [])
    ?(predefined_scaling_metric_specification = []) ~target_value ()
    : scaling_instruction__target_tracking_configuration =
  {
    disable_scale_in;
    estimated_instance_warmup;
    scale_in_cooldown;
    scale_out_cooldown;
    target_value;
    customized_scaling_metric_specification;
    predefined_scaling_metric_specification;
  }

let scaling_instruction ?disable_dynamic_scaling
    ?predictive_scaling_max_capacity_behavior
    ?predictive_scaling_max_capacity_buffer ?predictive_scaling_mode
    ?scaling_policy_update_behavior ?scheduled_action_buffer_time
    ?(customized_load_metric_specification = [])
    ?(predefined_load_metric_specification = []) ~max_capacity
    ~min_capacity ~resource_id ~scalable_dimension ~service_namespace
    ~target_tracking_configuration () : scaling_instruction =
  {
    disable_dynamic_scaling;
    max_capacity;
    min_capacity;
    predictive_scaling_max_capacity_behavior;
    predictive_scaling_max_capacity_buffer;
    predictive_scaling_mode;
    resource_id;
    scalable_dimension;
    scaling_policy_update_behavior;
    scheduled_action_buffer_time;
    service_namespace;
    customized_load_metric_specification;
    predefined_load_metric_specification;
    target_tracking_configuration;
  }

let aws_autoscalingplans_scaling_plan ?id ~name ~application_source
    ~scaling_instruction () : aws_autoscalingplans_scaling_plan =
  { id; name; application_source; scaling_instruction }

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  scaling_plan_version : float prop;
}

let make ?id ~name ~application_source ~scaling_instruction __id =
  let __type = "aws_autoscalingplans_scaling_plan" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       scaling_plan_version =
         Prop.computed __type __id "scaling_plan_version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_autoscalingplans_scaling_plan
        (aws_autoscalingplans_scaling_plan ?id ~name
           ~application_source ~scaling_instruction ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~application_source
    ~scaling_instruction __id =
  let (r : _ Tf_core.resource) =
    make ?id ~name ~application_source ~scaling_instruction __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
