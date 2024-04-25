(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type minimum_healthy_hosts = {
  type_ : string prop option; [@option] [@key "type"]
  value : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : minimum_healthy_hosts) -> ()

let yojson_of_minimum_healthy_hosts =
  (function
   | { type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : minimum_healthy_hosts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_minimum_healthy_hosts

[@@@deriving.end]

type traffic_routing_config__time_based_canary = {
  interval : float prop option; [@option]
  percentage : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : traffic_routing_config__time_based_canary) -> ()

let yojson_of_traffic_routing_config__time_based_canary =
  (function
   | { interval = v_interval; percentage = v_percentage } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "percentage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "interval", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : traffic_routing_config__time_based_canary ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_traffic_routing_config__time_based_canary

[@@@deriving.end]

type traffic_routing_config__time_based_linear = {
  interval : float prop option; [@option]
  percentage : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : traffic_routing_config__time_based_linear) -> ()

let yojson_of_traffic_routing_config__time_based_linear =
  (function
   | { interval = v_interval; percentage = v_percentage } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "percentage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "interval", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : traffic_routing_config__time_based_linear ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_traffic_routing_config__time_based_linear

[@@@deriving.end]

type traffic_routing_config = {
  type_ : string prop option; [@option] [@key "type"]
  time_based_canary : traffic_routing_config__time_based_canary list;
  time_based_linear : traffic_routing_config__time_based_linear list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : traffic_routing_config) -> ()

let yojson_of_traffic_routing_config =
  (function
   | {
       type_ = v_type_;
       time_based_canary = v_time_based_canary;
       time_based_linear = v_time_based_linear;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_traffic_routing_config__time_based_linear
             v_time_based_linear
         in
         ("time_based_linear", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_traffic_routing_config__time_based_canary
             v_time_based_canary
         in
         ("time_based_canary", arg) :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : traffic_routing_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_traffic_routing_config

[@@@deriving.end]

type aws_codedeploy_deployment_config = {
  compute_platform : string prop option; [@option]
  deployment_config_name : string prop;
  id : string prop option; [@option]
  minimum_healthy_hosts : minimum_healthy_hosts list;
  traffic_routing_config : traffic_routing_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_codedeploy_deployment_config) -> ()

let yojson_of_aws_codedeploy_deployment_config =
  (function
   | {
       compute_platform = v_compute_platform;
       deployment_config_name = v_deployment_config_name;
       id = v_id;
       minimum_healthy_hosts = v_minimum_healthy_hosts;
       traffic_routing_config = v_traffic_routing_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_traffic_routing_config
             v_traffic_routing_config
         in
         ("traffic_routing_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_minimum_healthy_hosts
             v_minimum_healthy_hosts
         in
         ("minimum_healthy_hosts", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_deployment_config_name
         in
         ("deployment_config_name", arg) :: bnds
       in
       let bnds =
         match v_compute_platform with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compute_platform", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_codedeploy_deployment_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_codedeploy_deployment_config

[@@@deriving.end]

let minimum_healthy_hosts ?type_ ?value () : minimum_healthy_hosts =
  { type_; value }

let traffic_routing_config__time_based_canary ?interval ?percentage
    () : traffic_routing_config__time_based_canary =
  { interval; percentage }

let traffic_routing_config__time_based_linear ?interval ?percentage
    () : traffic_routing_config__time_based_linear =
  { interval; percentage }

let traffic_routing_config ?type_ ?(time_based_canary = [])
    ?(time_based_linear = []) () : traffic_routing_config =
  { type_; time_based_canary; time_based_linear }

let aws_codedeploy_deployment_config ?compute_platform ?id
    ?(minimum_healthy_hosts = []) ?(traffic_routing_config = [])
    ~deployment_config_name () : aws_codedeploy_deployment_config =
  {
    compute_platform;
    deployment_config_name;
    id;
    minimum_healthy_hosts;
    traffic_routing_config;
  }

type t = {
  arn : string prop;
  compute_platform : string prop;
  deployment_config_id : string prop;
  deployment_config_name : string prop;
  id : string prop;
}

let make ?compute_platform ?id ?(minimum_healthy_hosts = [])
    ?(traffic_routing_config = []) ~deployment_config_name __id =
  let __type = "aws_codedeploy_deployment_config" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       compute_platform =
         Prop.computed __type __id "compute_platform";
       deployment_config_id =
         Prop.computed __type __id "deployment_config_id";
       deployment_config_name =
         Prop.computed __type __id "deployment_config_name";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codedeploy_deployment_config
        (aws_codedeploy_deployment_config ?compute_platform ?id
           ~minimum_healthy_hosts ~traffic_routing_config
           ~deployment_config_name ());
    attrs = __attrs;
  }

let register ?tf_module ?compute_platform ?id
    ?(minimum_healthy_hosts = []) ?(traffic_routing_config = [])
    ~deployment_config_name __id =
  let (r : _ Tf_core.resource) =
    make ?compute_platform ?id ~minimum_healthy_hosts
      ~traffic_routing_config ~deployment_config_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
