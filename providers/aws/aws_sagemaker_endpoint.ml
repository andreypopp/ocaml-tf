(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type deployment_config__auto_rollback_configuration__alarms = {
  alarm_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : deployment_config__auto_rollback_configuration__alarms) ->
  ()

let yojson_of_deployment_config__auto_rollback_configuration__alarms
    =
  (function
   | { alarm_name = v_alarm_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_alarm_name in
         ("alarm_name", arg) :: bnds
       in
       `Assoc bnds
    : deployment_config__auto_rollback_configuration__alarms ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deployment_config__auto_rollback_configuration__alarms

[@@@deriving.end]

type deployment_config__auto_rollback_configuration = {
  alarms :
    deployment_config__auto_rollback_configuration__alarms list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : deployment_config__auto_rollback_configuration) -> ()

let yojson_of_deployment_config__auto_rollback_configuration =
  (function
   | { alarms = v_alarms } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_alarms then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deployment_config__auto_rollback_configuration__alarms)
               v_alarms
           in
           let bnd = "alarms", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deployment_config__auto_rollback_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deployment_config__auto_rollback_configuration

[@@@deriving.end]

type deployment_config__blue_green_update_policy__traffic_routing_configuration__canary_size = {
  type_ : string prop; [@key "type"]
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deployment_config__blue_green_update_policy__traffic_routing_configuration__canary_size) ->
  ()

let yojson_of_deployment_config__blue_green_update_policy__traffic_routing_configuration__canary_size
    =
  (function
   | { type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : deployment_config__blue_green_update_policy__traffic_routing_configuration__canary_size ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deployment_config__blue_green_update_policy__traffic_routing_configuration__canary_size

[@@@deriving.end]

type deployment_config__blue_green_update_policy__traffic_routing_configuration__linear_step_size = {
  type_ : string prop; [@key "type"]
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deployment_config__blue_green_update_policy__traffic_routing_configuration__linear_step_size) ->
  ()

let yojson_of_deployment_config__blue_green_update_policy__traffic_routing_configuration__linear_step_size
    =
  (function
   | { type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : deployment_config__blue_green_update_policy__traffic_routing_configuration__linear_step_size ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deployment_config__blue_green_update_policy__traffic_routing_configuration__linear_step_size

[@@@deriving.end]

type deployment_config__blue_green_update_policy__traffic_routing_configuration = {
  type_ : string prop; [@key "type"]
  wait_interval_in_seconds : float prop;
  canary_size :
    deployment_config__blue_green_update_policy__traffic_routing_configuration__canary_size
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  linear_step_size :
    deployment_config__blue_green_update_policy__traffic_routing_configuration__linear_step_size
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deployment_config__blue_green_update_policy__traffic_routing_configuration) ->
  ()

let yojson_of_deployment_config__blue_green_update_policy__traffic_routing_configuration
    =
  (function
   | {
       type_ = v_type_;
       wait_interval_in_seconds = v_wait_interval_in_seconds;
       canary_size = v_canary_size;
       linear_step_size = v_linear_step_size;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_linear_step_size then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deployment_config__blue_green_update_policy__traffic_routing_configuration__linear_step_size)
               v_linear_step_size
           in
           let bnd = "linear_step_size", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_canary_size then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deployment_config__blue_green_update_policy__traffic_routing_configuration__canary_size)
               v_canary_size
           in
           let bnd = "canary_size", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_wait_interval_in_seconds
         in
         ("wait_interval_in_seconds", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : deployment_config__blue_green_update_policy__traffic_routing_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deployment_config__blue_green_update_policy__traffic_routing_configuration

[@@@deriving.end]

type deployment_config__blue_green_update_policy = {
  maximum_execution_timeout_in_seconds : float prop option; [@option]
  termination_wait_in_seconds : float prop option; [@option]
  traffic_routing_configuration :
    deployment_config__blue_green_update_policy__traffic_routing_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : deployment_config__blue_green_update_policy) -> ()

let yojson_of_deployment_config__blue_green_update_policy =
  (function
   | {
       maximum_execution_timeout_in_seconds =
         v_maximum_execution_timeout_in_seconds;
       termination_wait_in_seconds = v_termination_wait_in_seconds;
       traffic_routing_configuration =
         v_traffic_routing_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_traffic_routing_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deployment_config__blue_green_update_policy__traffic_routing_configuration)
               v_traffic_routing_configuration
           in
           let bnd = "traffic_routing_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_termination_wait_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "termination_wait_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maximum_execution_timeout_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_execution_timeout_in_seconds", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deployment_config__blue_green_update_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deployment_config__blue_green_update_policy

[@@@deriving.end]

type deployment_config__rolling_update_policy__maximum_batch_size = {
  type_ : string prop; [@key "type"]
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deployment_config__rolling_update_policy__maximum_batch_size) ->
  ()

let yojson_of_deployment_config__rolling_update_policy__maximum_batch_size
    =
  (function
   | { type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : deployment_config__rolling_update_policy__maximum_batch_size ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deployment_config__rolling_update_policy__maximum_batch_size

[@@@deriving.end]

type deployment_config__rolling_update_policy__rollback_maximum_batch_size = {
  type_ : string prop; [@key "type"]
  value : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deployment_config__rolling_update_policy__rollback_maximum_batch_size) ->
  ()

let yojson_of_deployment_config__rolling_update_policy__rollback_maximum_batch_size
    =
  (function
   | { type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : deployment_config__rolling_update_policy__rollback_maximum_batch_size ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deployment_config__rolling_update_policy__rollback_maximum_batch_size

[@@@deriving.end]

type deployment_config__rolling_update_policy = {
  maximum_execution_timeout_in_seconds : float prop option; [@option]
  wait_interval_in_seconds : float prop;
  maximum_batch_size :
    deployment_config__rolling_update_policy__maximum_batch_size list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  rollback_maximum_batch_size :
    deployment_config__rolling_update_policy__rollback_maximum_batch_size
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : deployment_config__rolling_update_policy) -> ()

let yojson_of_deployment_config__rolling_update_policy =
  (function
   | {
       maximum_execution_timeout_in_seconds =
         v_maximum_execution_timeout_in_seconds;
       wait_interval_in_seconds = v_wait_interval_in_seconds;
       maximum_batch_size = v_maximum_batch_size;
       rollback_maximum_batch_size = v_rollback_maximum_batch_size;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rollback_maximum_batch_size then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deployment_config__rolling_update_policy__rollback_maximum_batch_size)
               v_rollback_maximum_batch_size
           in
           let bnd = "rollback_maximum_batch_size", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_maximum_batch_size then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deployment_config__rolling_update_policy__maximum_batch_size)
               v_maximum_batch_size
           in
           let bnd = "maximum_batch_size", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_wait_interval_in_seconds
         in
         ("wait_interval_in_seconds", arg) :: bnds
       in
       let bnds =
         match v_maximum_execution_timeout_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_execution_timeout_in_seconds", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : deployment_config__rolling_update_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deployment_config__rolling_update_policy

[@@@deriving.end]

type deployment_config = {
  auto_rollback_configuration :
    deployment_config__auto_rollback_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  blue_green_update_policy :
    deployment_config__blue_green_update_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  rolling_update_policy :
    deployment_config__rolling_update_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : deployment_config) -> ()

let yojson_of_deployment_config =
  (function
   | {
       auto_rollback_configuration = v_auto_rollback_configuration;
       blue_green_update_policy = v_blue_green_update_policy;
       rolling_update_policy = v_rolling_update_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rolling_update_policy then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deployment_config__rolling_update_policy)
               v_rolling_update_policy
           in
           let bnd = "rolling_update_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_blue_green_update_policy then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deployment_config__blue_green_update_policy)
               v_blue_green_update_policy
           in
           let bnd = "blue_green_update_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_auto_rollback_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deployment_config__auto_rollback_configuration)
               v_auto_rollback_configuration
           in
           let bnd = "auto_rollback_configuration", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deployment_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deployment_config

[@@@deriving.end]

type aws_sagemaker_endpoint = {
  endpoint_config_name : string prop;
  id : string prop option; [@option]
  name : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  deployment_config : deployment_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sagemaker_endpoint) -> ()

let yojson_of_aws_sagemaker_endpoint =
  (function
   | {
       endpoint_config_name = v_endpoint_config_name;
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       deployment_config = v_deployment_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_deployment_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_deployment_config)
               v_deployment_config
           in
           let bnd = "deployment_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_endpoint_config_name
         in
         ("endpoint_config_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_sagemaker_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sagemaker_endpoint

[@@@deriving.end]

let deployment_config__auto_rollback_configuration__alarms
    ~alarm_name () :
    deployment_config__auto_rollback_configuration__alarms =
  { alarm_name }

let deployment_config__auto_rollback_configuration ~alarms () :
    deployment_config__auto_rollback_configuration =
  { alarms }

let deployment_config__blue_green_update_policy__traffic_routing_configuration__canary_size
    ~type_ ~value () :
    deployment_config__blue_green_update_policy__traffic_routing_configuration__canary_size
    =
  { type_; value }

let deployment_config__blue_green_update_policy__traffic_routing_configuration__linear_step_size
    ~type_ ~value () :
    deployment_config__blue_green_update_policy__traffic_routing_configuration__linear_step_size
    =
  { type_; value }

let deployment_config__blue_green_update_policy__traffic_routing_configuration
    ?(canary_size = []) ?(linear_step_size = []) ~type_
    ~wait_interval_in_seconds () :
    deployment_config__blue_green_update_policy__traffic_routing_configuration
    =
  { type_; wait_interval_in_seconds; canary_size; linear_step_size }

let deployment_config__blue_green_update_policy
    ?maximum_execution_timeout_in_seconds
    ?termination_wait_in_seconds ~traffic_routing_configuration () :
    deployment_config__blue_green_update_policy =
  {
    maximum_execution_timeout_in_seconds;
    termination_wait_in_seconds;
    traffic_routing_configuration;
  }

let deployment_config__rolling_update_policy__maximum_batch_size
    ~type_ ~value () :
    deployment_config__rolling_update_policy__maximum_batch_size =
  { type_; value }

let deployment_config__rolling_update_policy__rollback_maximum_batch_size
    ~type_ ~value () :
    deployment_config__rolling_update_policy__rollback_maximum_batch_size
    =
  { type_; value }

let deployment_config__rolling_update_policy
    ?maximum_execution_timeout_in_seconds
    ?(rollback_maximum_batch_size = []) ~wait_interval_in_seconds
    ~maximum_batch_size () : deployment_config__rolling_update_policy
    =
  {
    maximum_execution_timeout_in_seconds;
    wait_interval_in_seconds;
    maximum_batch_size;
    rollback_maximum_batch_size;
  }

let deployment_config ?(auto_rollback_configuration = [])
    ?(blue_green_update_policy = []) ?(rolling_update_policy = []) ()
    : deployment_config =
  {
    auto_rollback_configuration;
    blue_green_update_policy;
    rolling_update_policy;
  }

let aws_sagemaker_endpoint ?id ?name ?tags ?tags_all
    ?(deployment_config = []) ~endpoint_config_name () :
    aws_sagemaker_endpoint =
  {
    endpoint_config_name;
    id;
    name;
    tags;
    tags_all;
    deployment_config;
  }

type t = {
  tf_name : string;
  arn : string prop;
  endpoint_config_name : string prop;
  id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?id ?name ?tags ?tags_all ?(deployment_config = [])
    ~endpoint_config_name __id =
  let __type = "aws_sagemaker_endpoint" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       endpoint_config_name =
         Prop.computed __type __id "endpoint_config_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sagemaker_endpoint
        (aws_sagemaker_endpoint ?id ?name ?tags ?tags_all
           ~deployment_config ~endpoint_config_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?tags ?tags_all
    ?(deployment_config = []) ~endpoint_config_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?tags ?tags_all ~deployment_config
      ~endpoint_config_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
