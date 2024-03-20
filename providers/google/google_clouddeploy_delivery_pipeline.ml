(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type serial_pipeline__stages__deploy_parameters = {
  match_target_labels : (string * string prop) list option; [@option]
  values : (string * string prop) list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : serial_pipeline__stages__deploy_parameters) -> ()

let yojson_of_serial_pipeline__stages__deploy_parameters =
  (function
   | {
       match_target_labels = v_match_target_labels;
       values = v_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_values
         in
         ("values", arg) :: bnds
       in
       let bnds =
         match v_match_target_labels with
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
             let bnd = "match_target_labels", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : serial_pipeline__stages__deploy_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_serial_pipeline__stages__deploy_parameters

[@@@deriving.end]

type serial_pipeline__stages__strategy__canary__canary_deployment__postdeploy = {
  actions : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       serial_pipeline__stages__strategy__canary__canary_deployment__postdeploy) ->
  ()

let yojson_of_serial_pipeline__stages__strategy__canary__canary_deployment__postdeploy
    =
  (function
   | { actions = v_actions } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_actions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "actions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : serial_pipeline__stages__strategy__canary__canary_deployment__postdeploy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_serial_pipeline__stages__strategy__canary__canary_deployment__postdeploy

[@@@deriving.end]

type serial_pipeline__stages__strategy__canary__canary_deployment__predeploy = {
  actions : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       serial_pipeline__stages__strategy__canary__canary_deployment__predeploy) ->
  ()

let yojson_of_serial_pipeline__stages__strategy__canary__canary_deployment__predeploy
    =
  (function
   | { actions = v_actions } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_actions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "actions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : serial_pipeline__stages__strategy__canary__canary_deployment__predeploy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_serial_pipeline__stages__strategy__canary__canary_deployment__predeploy

[@@@deriving.end]

type serial_pipeline__stages__strategy__canary__canary_deployment = {
  percentages : float prop list;
  verify : bool prop option; [@option]
  postdeploy :
    serial_pipeline__stages__strategy__canary__canary_deployment__postdeploy
    list;
  predeploy :
    serial_pipeline__stages__strategy__canary__canary_deployment__predeploy
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       serial_pipeline__stages__strategy__canary__canary_deployment) ->
  ()

let yojson_of_serial_pipeline__stages__strategy__canary__canary_deployment
    =
  (function
   | {
       percentages = v_percentages;
       verify = v_verify;
       postdeploy = v_postdeploy;
       predeploy = v_predeploy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_serial_pipeline__stages__strategy__canary__canary_deployment__predeploy
             v_predeploy
         in
         ("predeploy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_serial_pipeline__stages__strategy__canary__canary_deployment__postdeploy
             v_postdeploy
         in
         ("postdeploy", arg) :: bnds
       in
       let bnds =
         match v_verify with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "verify", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_float)
             v_percentages
         in
         ("percentages", arg) :: bnds
       in
       `Assoc bnds
    : serial_pipeline__stages__strategy__canary__canary_deployment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_serial_pipeline__stages__strategy__canary__canary_deployment

[@@@deriving.end]

type serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__postdeploy = {
  actions : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__postdeploy) ->
  ()

let yojson_of_serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__postdeploy
    =
  (function
   | { actions = v_actions } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_actions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "actions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__postdeploy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__postdeploy

[@@@deriving.end]

type serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__predeploy = {
  actions : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__predeploy) ->
  ()

let yojson_of_serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__predeploy
    =
  (function
   | { actions = v_actions } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_actions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "actions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__predeploy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__predeploy

[@@@deriving.end]

type serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs = {
  percentage : float prop;
  phase_id : string prop;
  profiles : string prop list option; [@option]
  verify : bool prop option; [@option]
  postdeploy :
    serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__postdeploy
    list;
  predeploy :
    serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__predeploy
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs) ->
  ()

let yojson_of_serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs
    =
  (function
   | {
       percentage = v_percentage;
       phase_id = v_phase_id;
       profiles = v_profiles;
       verify = v_verify;
       postdeploy = v_postdeploy;
       predeploy = v_predeploy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__predeploy
             v_predeploy
         in
         ("predeploy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__postdeploy
             v_postdeploy
         in
         ("postdeploy", arg) :: bnds
       in
       let bnds =
         match v_verify with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "verify", arg in
             bnd :: bnds
       in
       let bnds =
         match v_profiles with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "profiles", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_phase_id in
         ("phase_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_percentage in
         ("percentage", arg) :: bnds
       in
       `Assoc bnds
    : serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs

[@@@deriving.end]

type serial_pipeline__stages__strategy__canary__custom_canary_deployment = {
  phase_configs :
    serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       serial_pipeline__stages__strategy__canary__custom_canary_deployment) ->
  ()

let yojson_of_serial_pipeline__stages__strategy__canary__custom_canary_deployment
    =
  (function
   | { phase_configs = v_phase_configs } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs
             v_phase_configs
         in
         ("phase_configs", arg) :: bnds
       in
       `Assoc bnds
    : serial_pipeline__stages__strategy__canary__custom_canary_deployment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_serial_pipeline__stages__strategy__canary__custom_canary_deployment

[@@@deriving.end]

type serial_pipeline__stages__strategy__canary__runtime_config__cloud_run = {
  automatic_traffic_control : bool prop option; [@option]
  canary_revision_tags : string prop list option; [@option]
  prior_revision_tags : string prop list option; [@option]
  stable_revision_tags : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       serial_pipeline__stages__strategy__canary__runtime_config__cloud_run) ->
  ()

let yojson_of_serial_pipeline__stages__strategy__canary__runtime_config__cloud_run
    =
  (function
   | {
       automatic_traffic_control = v_automatic_traffic_control;
       canary_revision_tags = v_canary_revision_tags;
       prior_revision_tags = v_prior_revision_tags;
       stable_revision_tags = v_stable_revision_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_stable_revision_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "stable_revision_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prior_revision_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "prior_revision_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_canary_revision_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "canary_revision_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_automatic_traffic_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "automatic_traffic_control", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : serial_pipeline__stages__strategy__canary__runtime_config__cloud_run ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_serial_pipeline__stages__strategy__canary__runtime_config__cloud_run

[@@@deriving.end]

type serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__gateway_service_mesh = {
  deployment : string prop;
  http_route : string prop;
  route_update_wait_time : string prop option; [@option]
  service : string prop;
  stable_cutback_duration : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__gateway_service_mesh) ->
  ()

let yojson_of_serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__gateway_service_mesh
    =
  (function
   | {
       deployment = v_deployment;
       http_route = v_http_route;
       route_update_wait_time = v_route_update_wait_time;
       service = v_service;
       stable_cutback_duration = v_stable_cutback_duration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_stable_cutback_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "stable_cutback_duration", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         match v_route_update_wait_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "route_update_wait_time", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_http_route in
         ("http_route", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_deployment in
         ("deployment", arg) :: bnds
       in
       `Assoc bnds
    : serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__gateway_service_mesh ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__gateway_service_mesh

[@@@deriving.end]

type serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__service_networking = {
  deployment : string prop;
  disable_pod_overprovisioning : bool prop option; [@option]
  service : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__service_networking) ->
  ()

let yojson_of_serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__service_networking
    =
  (function
   | {
       deployment = v_deployment;
       disable_pod_overprovisioning = v_disable_pod_overprovisioning;
       service = v_service;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         match v_disable_pod_overprovisioning with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_pod_overprovisioning", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_deployment in
         ("deployment", arg) :: bnds
       in
       `Assoc bnds
    : serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__service_networking ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__service_networking

[@@@deriving.end]

type serial_pipeline__stages__strategy__canary__runtime_config__kubernetes = {
  gateway_service_mesh :
    serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__gateway_service_mesh
    list;
  service_networking :
    serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__service_networking
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       serial_pipeline__stages__strategy__canary__runtime_config__kubernetes) ->
  ()

let yojson_of_serial_pipeline__stages__strategy__canary__runtime_config__kubernetes
    =
  (function
   | {
       gateway_service_mesh = v_gateway_service_mesh;
       service_networking = v_service_networking;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__service_networking
             v_service_networking
         in
         ("service_networking", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__gateway_service_mesh
             v_gateway_service_mesh
         in
         ("gateway_service_mesh", arg) :: bnds
       in
       `Assoc bnds
    : serial_pipeline__stages__strategy__canary__runtime_config__kubernetes ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_serial_pipeline__stages__strategy__canary__runtime_config__kubernetes

[@@@deriving.end]

type serial_pipeline__stages__strategy__canary__runtime_config = {
  cloud_run :
    serial_pipeline__stages__strategy__canary__runtime_config__cloud_run
    list;
  kubernetes :
    serial_pipeline__stages__strategy__canary__runtime_config__kubernetes
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : serial_pipeline__stages__strategy__canary__runtime_config) ->
  ()

let yojson_of_serial_pipeline__stages__strategy__canary__runtime_config
    =
  (function
   | { cloud_run = v_cloud_run; kubernetes = v_kubernetes } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_serial_pipeline__stages__strategy__canary__runtime_config__kubernetes
             v_kubernetes
         in
         ("kubernetes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_serial_pipeline__stages__strategy__canary__runtime_config__cloud_run
             v_cloud_run
         in
         ("cloud_run", arg) :: bnds
       in
       `Assoc bnds
    : serial_pipeline__stages__strategy__canary__runtime_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_serial_pipeline__stages__strategy__canary__runtime_config

[@@@deriving.end]

type serial_pipeline__stages__strategy__canary = {
  canary_deployment :
    serial_pipeline__stages__strategy__canary__canary_deployment list;
  custom_canary_deployment :
    serial_pipeline__stages__strategy__canary__custom_canary_deployment
    list;
  runtime_config :
    serial_pipeline__stages__strategy__canary__runtime_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : serial_pipeline__stages__strategy__canary) -> ()

let yojson_of_serial_pipeline__stages__strategy__canary =
  (function
   | {
       canary_deployment = v_canary_deployment;
       custom_canary_deployment = v_custom_canary_deployment;
       runtime_config = v_runtime_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_serial_pipeline__stages__strategy__canary__runtime_config
             v_runtime_config
         in
         ("runtime_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_serial_pipeline__stages__strategy__canary__custom_canary_deployment
             v_custom_canary_deployment
         in
         ("custom_canary_deployment", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_serial_pipeline__stages__strategy__canary__canary_deployment
             v_canary_deployment
         in
         ("canary_deployment", arg) :: bnds
       in
       `Assoc bnds
    : serial_pipeline__stages__strategy__canary ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_serial_pipeline__stages__strategy__canary

[@@@deriving.end]

type serial_pipeline__stages__strategy__standard__postdeploy = {
  actions : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : serial_pipeline__stages__strategy__standard__postdeploy) ->
  ()

let yojson_of_serial_pipeline__stages__strategy__standard__postdeploy
    =
  (function
   | { actions = v_actions } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_actions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "actions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : serial_pipeline__stages__strategy__standard__postdeploy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_serial_pipeline__stages__strategy__standard__postdeploy

[@@@deriving.end]

type serial_pipeline__stages__strategy__standard__predeploy = {
  actions : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : serial_pipeline__stages__strategy__standard__predeploy) ->
  ()

let yojson_of_serial_pipeline__stages__strategy__standard__predeploy
    =
  (function
   | { actions = v_actions } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_actions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "actions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : serial_pipeline__stages__strategy__standard__predeploy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_serial_pipeline__stages__strategy__standard__predeploy

[@@@deriving.end]

type serial_pipeline__stages__strategy__standard = {
  verify : bool prop option; [@option]
  postdeploy :
    serial_pipeline__stages__strategy__standard__postdeploy list;
  predeploy :
    serial_pipeline__stages__strategy__standard__predeploy list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : serial_pipeline__stages__strategy__standard) -> ()

let yojson_of_serial_pipeline__stages__strategy__standard =
  (function
   | {
       verify = v_verify;
       postdeploy = v_postdeploy;
       predeploy = v_predeploy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_serial_pipeline__stages__strategy__standard__predeploy
             v_predeploy
         in
         ("predeploy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_serial_pipeline__stages__strategy__standard__postdeploy
             v_postdeploy
         in
         ("postdeploy", arg) :: bnds
       in
       let bnds =
         match v_verify with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "verify", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : serial_pipeline__stages__strategy__standard ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_serial_pipeline__stages__strategy__standard

[@@@deriving.end]

type serial_pipeline__stages__strategy = {
  canary : serial_pipeline__stages__strategy__canary list;
  standard : serial_pipeline__stages__strategy__standard list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : serial_pipeline__stages__strategy) -> ()

let yojson_of_serial_pipeline__stages__strategy =
  (function
   | { canary = v_canary; standard = v_standard } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_serial_pipeline__stages__strategy__standard
             v_standard
         in
         ("standard", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_serial_pipeline__stages__strategy__canary
             v_canary
         in
         ("canary", arg) :: bnds
       in
       `Assoc bnds
    : serial_pipeline__stages__strategy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_serial_pipeline__stages__strategy

[@@@deriving.end]

type serial_pipeline__stages = {
  profiles : string prop list option; [@option]
  target_id : string prop option; [@option]
  deploy_parameters :
    serial_pipeline__stages__deploy_parameters list;
  strategy : serial_pipeline__stages__strategy list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : serial_pipeline__stages) -> ()

let yojson_of_serial_pipeline__stages =
  (function
   | {
       profiles = v_profiles;
       target_id = v_target_id;
       deploy_parameters = v_deploy_parameters;
       strategy = v_strategy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_serial_pipeline__stages__strategy
             v_strategy
         in
         ("strategy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_serial_pipeline__stages__deploy_parameters
             v_deploy_parameters
         in
         ("deploy_parameters", arg) :: bnds
       in
       let bnds =
         match v_target_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_profiles with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "profiles", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : serial_pipeline__stages -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_serial_pipeline__stages

[@@@deriving.end]

type serial_pipeline = { stages : serial_pipeline__stages list }
[@@deriving_inline yojson_of]

let _ = fun (_ : serial_pipeline) -> ()

let yojson_of_serial_pipeline =
  (function
   | { stages = v_stages } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_serial_pipeline__stages v_stages
         in
         ("stages", arg) :: bnds
       in
       `Assoc bnds
    : serial_pipeline -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_serial_pipeline

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type condition__targets_type_condition = {
  error_details : string prop;
  status : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition__targets_type_condition) -> ()

let yojson_of_condition__targets_type_condition =
  (function
   | { error_details = v_error_details; status = v_status } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_error_details in
         ("error_details", arg) :: bnds
       in
       `Assoc bnds
    : condition__targets_type_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition__targets_type_condition

[@@@deriving.end]

type condition__targets_present_condition = {
  missing_targets : string prop list;
  status : bool prop;
  update_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition__targets_present_condition) -> ()

let yojson_of_condition__targets_present_condition =
  (function
   | {
       missing_targets = v_missing_targets;
       status = v_status;
       update_time = v_update_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_update_time in
         ("update_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_missing_targets
         in
         ("missing_targets", arg) :: bnds
       in
       `Assoc bnds
    : condition__targets_present_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition__targets_present_condition

[@@@deriving.end]

type condition__pipeline_ready_condition = {
  status : bool prop;
  update_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition__pipeline_ready_condition) -> ()

let yojson_of_condition__pipeline_ready_condition =
  (function
   | { status = v_status; update_time = v_update_time } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_update_time in
         ("update_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_status in
         ("status", arg) :: bnds
       in
       `Assoc bnds
    : condition__pipeline_ready_condition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition__pipeline_ready_condition

[@@@deriving.end]

type condition = {
  pipeline_ready_condition :
    condition__pipeline_ready_condition list;
  targets_present_condition :
    condition__targets_present_condition list;
  targets_type_condition : condition__targets_type_condition list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition) -> ()

let yojson_of_condition =
  (function
   | {
       pipeline_ready_condition = v_pipeline_ready_condition;
       targets_present_condition = v_targets_present_condition;
       targets_type_condition = v_targets_type_condition;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_condition__targets_type_condition
             v_targets_type_condition
         in
         ("targets_type_condition", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_condition__targets_present_condition
             v_targets_present_condition
         in
         ("targets_present_condition", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_condition__pipeline_ready_condition
             v_pipeline_ready_condition
         in
         ("pipeline_ready_condition", arg) :: bnds
       in
       `Assoc bnds
    : condition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition

[@@@deriving.end]

type google_clouddeploy_delivery_pipeline = {
  annotations : (string * string prop) list option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  suspended : bool prop option; [@option]
  serial_pipeline : serial_pipeline list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_clouddeploy_delivery_pipeline) -> ()

let yojson_of_google_clouddeploy_delivery_pipeline =
  (function
   | {
       annotations = v_annotations;
       description = v_description;
       id = v_id;
       labels = v_labels;
       location = v_location;
       name = v_name;
       project = v_project;
       suspended = v_suspended;
       serial_pipeline = v_serial_pipeline;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_serial_pipeline v_serial_pipeline
         in
         ("serial_pipeline", arg) :: bnds
       in
       let bnds =
         match v_suspended with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "suspended", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_labels with
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
             let bnd = "labels", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_annotations with
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
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_clouddeploy_delivery_pipeline ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_clouddeploy_delivery_pipeline

[@@@deriving.end]

let serial_pipeline__stages__deploy_parameters ?match_target_labels
    ~values () : serial_pipeline__stages__deploy_parameters =
  { match_target_labels; values }

let serial_pipeline__stages__strategy__canary__canary_deployment__postdeploy
    ?actions () :
    serial_pipeline__stages__strategy__canary__canary_deployment__postdeploy
    =
  { actions }

let serial_pipeline__stages__strategy__canary__canary_deployment__predeploy
    ?actions () :
    serial_pipeline__stages__strategy__canary__canary_deployment__predeploy
    =
  { actions }

let serial_pipeline__stages__strategy__canary__canary_deployment
    ?verify ~percentages ~postdeploy ~predeploy () :
    serial_pipeline__stages__strategy__canary__canary_deployment =
  { percentages; verify; postdeploy; predeploy }

let serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__postdeploy
    ?actions () :
    serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__postdeploy
    =
  { actions }

let serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__predeploy
    ?actions () :
    serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs__predeploy
    =
  { actions }

let serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs
    ?profiles ?verify ~percentage ~phase_id ~postdeploy ~predeploy ()
    :
    serial_pipeline__stages__strategy__canary__custom_canary_deployment__phase_configs
    =
  { percentage; phase_id; profiles; verify; postdeploy; predeploy }

let serial_pipeline__stages__strategy__canary__custom_canary_deployment
    ~phase_configs () :
    serial_pipeline__stages__strategy__canary__custom_canary_deployment
    =
  { phase_configs }

let serial_pipeline__stages__strategy__canary__runtime_config__cloud_run
    ?automatic_traffic_control ?canary_revision_tags
    ?prior_revision_tags ?stable_revision_tags () :
    serial_pipeline__stages__strategy__canary__runtime_config__cloud_run
    =
  {
    automatic_traffic_control;
    canary_revision_tags;
    prior_revision_tags;
    stable_revision_tags;
  }

let serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__gateway_service_mesh
    ?route_update_wait_time ?stable_cutback_duration ~deployment
    ~http_route ~service () :
    serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__gateway_service_mesh
    =
  {
    deployment;
    http_route;
    route_update_wait_time;
    service;
    stable_cutback_duration;
  }

let serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__service_networking
    ?disable_pod_overprovisioning ~deployment ~service () :
    serial_pipeline__stages__strategy__canary__runtime_config__kubernetes__service_networking
    =
  { deployment; disable_pod_overprovisioning; service }

let serial_pipeline__stages__strategy__canary__runtime_config__kubernetes
    ~gateway_service_mesh ~service_networking () :
    serial_pipeline__stages__strategy__canary__runtime_config__kubernetes
    =
  { gateway_service_mesh; service_networking }

let serial_pipeline__stages__strategy__canary__runtime_config
    ~cloud_run ~kubernetes () :
    serial_pipeline__stages__strategy__canary__runtime_config =
  { cloud_run; kubernetes }

let serial_pipeline__stages__strategy__canary ~canary_deployment
    ~custom_canary_deployment ~runtime_config () :
    serial_pipeline__stages__strategy__canary =
  { canary_deployment; custom_canary_deployment; runtime_config }

let serial_pipeline__stages__strategy__standard__postdeploy ?actions
    () : serial_pipeline__stages__strategy__standard__postdeploy =
  { actions }

let serial_pipeline__stages__strategy__standard__predeploy ?actions
    () : serial_pipeline__stages__strategy__standard__predeploy =
  { actions }

let serial_pipeline__stages__strategy__standard ?verify ~postdeploy
    ~predeploy () : serial_pipeline__stages__strategy__standard =
  { verify; postdeploy; predeploy }

let serial_pipeline__stages__strategy ~canary ~standard () :
    serial_pipeline__stages__strategy =
  { canary; standard }

let serial_pipeline__stages ?profiles ?target_id ~deploy_parameters
    ~strategy () : serial_pipeline__stages =
  { profiles; target_id; deploy_parameters; strategy }

let serial_pipeline ~stages () : serial_pipeline = { stages }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_clouddeploy_delivery_pipeline ?annotations ?description
    ?id ?labels ?project ?suspended ?timeouts ~location ~name
    ~serial_pipeline () : google_clouddeploy_delivery_pipeline =
  {
    annotations;
    description;
    id;
    labels;
    location;
    name;
    project;
    suspended;
    serial_pipeline;
    timeouts;
  }

type t = {
  annotations : (string * string) list prop;
  condition : condition list prop;
  create_time : string prop;
  description : string prop;
  effective_annotations : (string * string) list prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  suspended : bool prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
}

let make ?annotations ?description ?id ?labels ?project ?suspended
    ?timeouts ~location ~name ~serial_pipeline __id =
  let __type = "google_clouddeploy_delivery_pipeline" in
  let __attrs =
    ({
       annotations = Prop.computed __type __id "annotations";
       condition = Prop.computed __type __id "condition";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       effective_annotations =
         Prop.computed __type __id "effective_annotations";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       suspended = Prop.computed __type __id "suspended";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_clouddeploy_delivery_pipeline
        (google_clouddeploy_delivery_pipeline ?annotations
           ?description ?id ?labels ?project ?suspended ?timeouts
           ~location ~name ~serial_pipeline ());
    attrs = __attrs;
  }

let register ?tf_module ?annotations ?description ?id ?labels
    ?project ?suspended ?timeouts ~location ~name ~serial_pipeline
    __id =
  let (r : _ Tf_core.resource) =
    make ?annotations ?description ?id ?labels ?project ?suspended
      ?timeouts ~location ~name ~serial_pipeline __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
