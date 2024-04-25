(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type adaptive_routing = {
  failover_across_pools : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : adaptive_routing) -> ()

let yojson_of_adaptive_routing =
  (function
   | { failover_across_pools = v_failover_across_pools } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_failover_across_pools with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "failover_across_pools", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : adaptive_routing -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_adaptive_routing

[@@@deriving.end]

type country_pools = {
  country : string prop;
  pool_ids : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : country_pools) -> ()

let yojson_of_country_pools =
  (function
   | { country = v_country; pool_ids = v_pool_ids } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_pool_ids
         in
         ("pool_ids", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_country in
         ("country", arg) :: bnds
       in
       `Assoc bnds
    : country_pools -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_country_pools

[@@@deriving.end]

type location_strategy = {
  mode : string prop option; [@option]
  prefer_ecs : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : location_strategy) -> ()

let yojson_of_location_strategy =
  (function
   | { mode = v_mode; prefer_ecs = v_prefer_ecs } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_prefer_ecs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefer_ecs", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : location_strategy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_location_strategy

[@@@deriving.end]

type pop_pools = { pool_ids : string prop list; pop : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : pop_pools) -> ()

let yojson_of_pop_pools =
  (function
   | { pool_ids = v_pool_ids; pop = v_pop } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pop in
         ("pop", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_pool_ids
         in
         ("pool_ids", arg) :: bnds
       in
       `Assoc bnds
    : pop_pools -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_pop_pools

[@@@deriving.end]

type random_steering = {
  default_weight : float prop option; [@option]
  pool_weights : (string * float prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : random_steering) -> ()

let yojson_of_random_steering =
  (function
   | {
       default_weight = v_default_weight;
       pool_weights = v_pool_weights;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_pool_weights with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_float v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "pool_weights", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_weight with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "default_weight", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : random_steering -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_random_steering

[@@@deriving.end]

type region_pools = {
  pool_ids : string prop list;
  region : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : region_pools) -> ()

let yojson_of_region_pools =
  (function
   | { pool_ids = v_pool_ids; region = v_region } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_pool_ids
         in
         ("pool_ids", arg) :: bnds
       in
       `Assoc bnds
    : region_pools -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_region_pools

[@@@deriving.end]

type rules__fixed_response = {
  content_type : string prop option; [@option]
  location : string prop option; [@option]
  message_body : string prop option; [@option]
  status_code : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__fixed_response) -> ()

let yojson_of_rules__fixed_response =
  (function
   | {
       content_type = v_content_type;
       location = v_location;
       message_body = v_message_body;
       status_code = v_status_code;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_status_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "status_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_message_body with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "message_body", arg in
             bnd :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__fixed_response -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__fixed_response

[@@@deriving.end]

type rules__overrides__adaptive_routing = {
  failover_across_pools : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__overrides__adaptive_routing) -> ()

let yojson_of_rules__overrides__adaptive_routing =
  (function
   | { failover_across_pools = v_failover_across_pools } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_failover_across_pools with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "failover_across_pools", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__overrides__adaptive_routing ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__overrides__adaptive_routing

[@@@deriving.end]

type rules__overrides__country_pools = {
  country : string prop;
  pool_ids : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__overrides__country_pools) -> ()

let yojson_of_rules__overrides__country_pools =
  (function
   | { country = v_country; pool_ids = v_pool_ids } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_pool_ids
         in
         ("pool_ids", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_country in
         ("country", arg) :: bnds
       in
       `Assoc bnds
    : rules__overrides__country_pools ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__overrides__country_pools

[@@@deriving.end]

type rules__overrides__location_strategy = {
  mode : string prop option; [@option]
  prefer_ecs : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__overrides__location_strategy) -> ()

let yojson_of_rules__overrides__location_strategy =
  (function
   | { mode = v_mode; prefer_ecs = v_prefer_ecs } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_prefer_ecs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefer_ecs", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__overrides__location_strategy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__overrides__location_strategy

[@@@deriving.end]

type rules__overrides__pop_pools = {
  pool_ids : string prop list;
  pop : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__overrides__pop_pools) -> ()

let yojson_of_rules__overrides__pop_pools =
  (function
   | { pool_ids = v_pool_ids; pop = v_pop } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pop in
         ("pop", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_pool_ids
         in
         ("pool_ids", arg) :: bnds
       in
       `Assoc bnds
    : rules__overrides__pop_pools ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__overrides__pop_pools

[@@@deriving.end]

type rules__overrides__random_steering = {
  default_weight : float prop option; [@option]
  pool_weights : (string * float prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__overrides__random_steering) -> ()

let yojson_of_rules__overrides__random_steering =
  (function
   | {
       default_weight = v_default_weight;
       pool_weights = v_pool_weights;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_pool_weights with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_float v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "pool_weights", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_weight with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "default_weight", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__overrides__random_steering ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__overrides__random_steering

[@@@deriving.end]

type rules__overrides__region_pools = {
  pool_ids : string prop list;
  region : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__overrides__region_pools) -> ()

let yojson_of_rules__overrides__region_pools =
  (function
   | { pool_ids = v_pool_ids; region = v_region } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_pool_ids
         in
         ("pool_ids", arg) :: bnds
       in
       `Assoc bnds
    : rules__overrides__region_pools ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__overrides__region_pools

[@@@deriving.end]

type rules__overrides__session_affinity_attributes = {
  headers : string prop list option; [@option]
  require_all_headers : bool prop option; [@option]
  samesite : string prop option; [@option]
  secure : string prop option; [@option]
  zero_downtime_failover : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__overrides__session_affinity_attributes) -> ()

let yojson_of_rules__overrides__session_affinity_attributes =
  (function
   | {
       headers = v_headers;
       require_all_headers = v_require_all_headers;
       samesite = v_samesite;
       secure = v_secure;
       zero_downtime_failover = v_zero_downtime_failover;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_zero_downtime_failover with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zero_downtime_failover", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secure with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secure", arg in
             bnd :: bnds
       in
       let bnds =
         match v_samesite with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "samesite", arg in
             bnd :: bnds
       in
       let bnds =
         match v_require_all_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_all_headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "headers", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__overrides__session_affinity_attributes ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__overrides__session_affinity_attributes

[@@@deriving.end]

type rules__overrides = {
  default_pools : string prop list option; [@option]
  fallback_pool : string prop option; [@option]
  session_affinity : string prop option; [@option]
  session_affinity_ttl : float prop option; [@option]
  steering_policy : string prop option; [@option]
  ttl : float prop option; [@option]
  adaptive_routing : rules__overrides__adaptive_routing list;
  country_pools : rules__overrides__country_pools list;
  location_strategy : rules__overrides__location_strategy list;
  pop_pools : rules__overrides__pop_pools list;
  random_steering : rules__overrides__random_steering list;
  region_pools : rules__overrides__region_pools list;
  session_affinity_attributes :
    rules__overrides__session_affinity_attributes list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules__overrides) -> ()

let yojson_of_rules__overrides =
  (function
   | {
       default_pools = v_default_pools;
       fallback_pool = v_fallback_pool;
       session_affinity = v_session_affinity;
       session_affinity_ttl = v_session_affinity_ttl;
       steering_policy = v_steering_policy;
       ttl = v_ttl;
       adaptive_routing = v_adaptive_routing;
       country_pools = v_country_pools;
       location_strategy = v_location_strategy;
       pop_pools = v_pop_pools;
       random_steering = v_random_steering;
       region_pools = v_region_pools;
       session_affinity_attributes = v_session_affinity_attributes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rules__overrides__session_affinity_attributes
             v_session_affinity_attributes
         in
         ("session_affinity_attributes", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_rules__overrides__region_pools
             v_region_pools
         in
         ("region_pools", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_rules__overrides__random_steering
             v_random_steering
         in
         ("random_steering", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_rules__overrides__pop_pools
             v_pop_pools
         in
         ("pop_pools", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rules__overrides__location_strategy
             v_location_strategy
         in
         ("location_strategy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_rules__overrides__country_pools
             v_country_pools
         in
         ("country_pools", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rules__overrides__adaptive_routing
             v_adaptive_routing
         in
         ("adaptive_routing", arg) :: bnds
       in
       let bnds =
         match v_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_steering_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "steering_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_session_affinity_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "session_affinity_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_session_affinity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "session_affinity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fallback_pool with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fallback_pool", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_pools with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "default_pools", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules__overrides -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules__overrides

[@@@deriving.end]

type rules = {
  condition : string prop option; [@option]
  disabled : bool prop option; [@option]
  name : string prop;
  priority : float prop option; [@option]
  terminates : bool prop option; [@option]
  fixed_response : rules__fixed_response list;
  overrides : rules__overrides list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rules) -> ()

let yojson_of_rules =
  (function
   | {
       condition = v_condition;
       disabled = v_disabled;
       name = v_name;
       priority = v_priority;
       terminates = v_terminates;
       fixed_response = v_fixed_response;
       overrides = v_overrides;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_rules__overrides v_overrides
         in
         ("overrides", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_rules__fixed_response
             v_fixed_response
         in
         ("fixed_response", arg) :: bnds
       in
       let bnds =
         match v_terminates with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "terminates", arg in
             bnd :: bnds
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_condition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "condition", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rules

[@@@deriving.end]

type session_affinity_attributes = {
  drain_duration : float prop option; [@option]
  headers : string prop list option; [@option]
  require_all_headers : bool prop option; [@option]
  samesite : string prop option; [@option]
  secure : string prop option; [@option]
  zero_downtime_failover : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : session_affinity_attributes) -> ()

let yojson_of_session_affinity_attributes =
  (function
   | {
       drain_duration = v_drain_duration;
       headers = v_headers;
       require_all_headers = v_require_all_headers;
       samesite = v_samesite;
       secure = v_secure;
       zero_downtime_failover = v_zero_downtime_failover;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_zero_downtime_failover with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zero_downtime_failover", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secure with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secure", arg in
             bnd :: bnds
       in
       let bnds =
         match v_samesite with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "samesite", arg in
             bnd :: bnds
       in
       let bnds =
         match v_require_all_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_all_headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_drain_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "drain_duration", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : session_affinity_attributes ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_session_affinity_attributes

[@@@deriving.end]

type cloudflare_load_balancer = {
  default_pool_ids : string prop list;
  description : string prop option; [@option]
  enabled : bool prop option; [@option]
  fallback_pool_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  proxied : bool prop option; [@option]
  session_affinity : string prop option; [@option]
  session_affinity_ttl : float prop option; [@option]
  steering_policy : string prop option; [@option]
  ttl : float prop option; [@option]
  zone_id : string prop;
  adaptive_routing : adaptive_routing list;
  country_pools : country_pools list;
  location_strategy : location_strategy list;
  pop_pools : pop_pools list;
  random_steering : random_steering list;
  region_pools : region_pools list;
  rules : rules list;
  session_affinity_attributes : session_affinity_attributes list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_load_balancer) -> ()

let yojson_of_cloudflare_load_balancer =
  (function
   | {
       default_pool_ids = v_default_pool_ids;
       description = v_description;
       enabled = v_enabled;
       fallback_pool_id = v_fallback_pool_id;
       id = v_id;
       name = v_name;
       proxied = v_proxied;
       session_affinity = v_session_affinity;
       session_affinity_ttl = v_session_affinity_ttl;
       steering_policy = v_steering_policy;
       ttl = v_ttl;
       zone_id = v_zone_id;
       adaptive_routing = v_adaptive_routing;
       country_pools = v_country_pools;
       location_strategy = v_location_strategy;
       pop_pools = v_pop_pools;
       random_steering = v_random_steering;
       region_pools = v_region_pools;
       rules = v_rules;
       session_affinity_attributes = v_session_affinity_attributes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_session_affinity_attributes
             v_session_affinity_attributes
         in
         ("session_affinity_attributes", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_rules v_rules in
         ("rules", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_region_pools v_region_pools
         in
         ("region_pools", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_random_steering v_random_steering
         in
         ("random_steering", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_pop_pools v_pop_pools in
         ("pop_pools", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_location_strategy
             v_location_strategy
         in
         ("location_strategy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_country_pools v_country_pools
         in
         ("country_pools", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_adaptive_routing
             v_adaptive_routing
         in
         ("adaptive_routing", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone_id in
         ("zone_id", arg) :: bnds
       in
       let bnds =
         match v_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_steering_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "steering_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_session_affinity_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "session_affinity_ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_session_affinity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "session_affinity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_proxied with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "proxied", arg in
             bnd :: bnds
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_fallback_pool_id
         in
         ("fallback_pool_id", arg) :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_default_pool_ids
         in
         ("default_pool_ids", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_load_balancer -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_load_balancer

[@@@deriving.end]

let adaptive_routing ?failover_across_pools () : adaptive_routing =
  { failover_across_pools }

let country_pools ~country ~pool_ids () : country_pools =
  { country; pool_ids }

let location_strategy ?mode ?prefer_ecs () : location_strategy =
  { mode; prefer_ecs }

let pop_pools ~pool_ids ~pop () : pop_pools = { pool_ids; pop }

let random_steering ?default_weight ?pool_weights () :
    random_steering =
  { default_weight; pool_weights }

let region_pools ~pool_ids ~region () : region_pools =
  { pool_ids; region }

let rules__fixed_response ?content_type ?location ?message_body
    ?status_code () : rules__fixed_response =
  { content_type; location; message_body; status_code }

let rules__overrides__adaptive_routing ?failover_across_pools () :
    rules__overrides__adaptive_routing =
  { failover_across_pools }

let rules__overrides__country_pools ~country ~pool_ids () :
    rules__overrides__country_pools =
  { country; pool_ids }

let rules__overrides__location_strategy ?mode ?prefer_ecs () :
    rules__overrides__location_strategy =
  { mode; prefer_ecs }

let rules__overrides__pop_pools ~pool_ids ~pop () :
    rules__overrides__pop_pools =
  { pool_ids; pop }

let rules__overrides__random_steering ?default_weight ?pool_weights
    () : rules__overrides__random_steering =
  { default_weight; pool_weights }

let rules__overrides__region_pools ~pool_ids ~region () :
    rules__overrides__region_pools =
  { pool_ids; region }

let rules__overrides__session_affinity_attributes ?headers
    ?require_all_headers ?samesite ?secure ?zero_downtime_failover ()
    : rules__overrides__session_affinity_attributes =
  {
    headers;
    require_all_headers;
    samesite;
    secure;
    zero_downtime_failover;
  }

let rules__overrides ?default_pools ?fallback_pool ?session_affinity
    ?session_affinity_ttl ?steering_policy ?ttl ~adaptive_routing
    ~country_pools ~location_strategy ~pop_pools ~random_steering
    ~region_pools ~session_affinity_attributes () : rules__overrides
    =
  {
    default_pools;
    fallback_pool;
    session_affinity;
    session_affinity_ttl;
    steering_policy;
    ttl;
    adaptive_routing;
    country_pools;
    location_strategy;
    pop_pools;
    random_steering;
    region_pools;
    session_affinity_attributes;
  }

let rules ?condition ?disabled ?priority ?terminates
    ?(fixed_response = []) ?(overrides = []) ~name () : rules =
  {
    condition;
    disabled;
    name;
    priority;
    terminates;
    fixed_response;
    overrides;
  }

let session_affinity_attributes ?drain_duration ?headers
    ?require_all_headers ?samesite ?secure ?zero_downtime_failover ()
    : session_affinity_attributes =
  {
    drain_duration;
    headers;
    require_all_headers;
    samesite;
    secure;
    zero_downtime_failover;
  }

let cloudflare_load_balancer ?description ?enabled ?id ?proxied
    ?session_affinity ?session_affinity_ttl ?steering_policy ?ttl
    ?(rules = []) ~default_pool_ids ~fallback_pool_id ~name ~zone_id
    ~adaptive_routing ~country_pools ~location_strategy ~pop_pools
    ~random_steering ~region_pools ~session_affinity_attributes () :
    cloudflare_load_balancer =
  {
    default_pool_ids;
    description;
    enabled;
    fallback_pool_id;
    id;
    name;
    proxied;
    session_affinity;
    session_affinity_ttl;
    steering_policy;
    ttl;
    zone_id;
    adaptive_routing;
    country_pools;
    location_strategy;
    pop_pools;
    random_steering;
    region_pools;
    rules;
    session_affinity_attributes;
  }

type t = {
  created_on : string prop;
  default_pool_ids : string list prop;
  description : string prop;
  enabled : bool prop;
  fallback_pool_id : string prop;
  id : string prop;
  modified_on : string prop;
  name : string prop;
  proxied : bool prop;
  session_affinity : string prop;
  session_affinity_ttl : float prop;
  steering_policy : string prop;
  ttl : float prop;
  zone_id : string prop;
}

let make ?description ?enabled ?id ?proxied ?session_affinity
    ?session_affinity_ttl ?steering_policy ?ttl ?(rules = [])
    ~default_pool_ids ~fallback_pool_id ~name ~zone_id
    ~adaptive_routing ~country_pools ~location_strategy ~pop_pools
    ~random_steering ~region_pools ~session_affinity_attributes __id
    =
  let __type = "cloudflare_load_balancer" in
  let __attrs =
    ({
       created_on = Prop.computed __type __id "created_on";
       default_pool_ids =
         Prop.computed __type __id "default_pool_ids";
       description = Prop.computed __type __id "description";
       enabled = Prop.computed __type __id "enabled";
       fallback_pool_id =
         Prop.computed __type __id "fallback_pool_id";
       id = Prop.computed __type __id "id";
       modified_on = Prop.computed __type __id "modified_on";
       name = Prop.computed __type __id "name";
       proxied = Prop.computed __type __id "proxied";
       session_affinity =
         Prop.computed __type __id "session_affinity";
       session_affinity_ttl =
         Prop.computed __type __id "session_affinity_ttl";
       steering_policy = Prop.computed __type __id "steering_policy";
       ttl = Prop.computed __type __id "ttl";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_load_balancer
        (cloudflare_load_balancer ?description ?enabled ?id ?proxied
           ?session_affinity ?session_affinity_ttl ?steering_policy
           ?ttl ~rules ~default_pool_ids ~fallback_pool_id ~name
           ~zone_id ~adaptive_routing ~country_pools
           ~location_strategy ~pop_pools ~random_steering
           ~region_pools ~session_affinity_attributes ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?enabled ?id ?proxied
    ?session_affinity ?session_affinity_ttl ?steering_policy ?ttl
    ?(rules = []) ~default_pool_ids ~fallback_pool_id ~name ~zone_id
    ~adaptive_routing ~country_pools ~location_strategy ~pop_pools
    ~random_steering ~region_pools ~session_affinity_attributes __id
    =
  let (r : _ Tf_core.resource) =
    make ?description ?enabled ?id ?proxied ?session_affinity
      ?session_affinity_ttl ?steering_policy ?ttl ~rules
      ~default_pool_ids ~fallback_pool_id ~name ~zone_id
      ~adaptive_routing ~country_pools ~location_strategy ~pop_pools
      ~random_steering ~region_pools ~session_affinity_attributes
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
