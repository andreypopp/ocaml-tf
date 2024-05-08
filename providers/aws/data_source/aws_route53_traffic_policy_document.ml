(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type endpoint = {
  id : string prop;
  region : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoint) -> ()

let yojson_of_endpoint =
  (function
   | {
       id = v_id;
       region = v_region;
       type_ = v_type_;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
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
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoint

[@@@deriving.end]

type rule__geo_proximity_location = {
  bias : string prop option; [@option]
  endpoint_reference : string prop option; [@option]
  evaluate_target_health : bool prop option; [@option]
  health_check : string prop option; [@option]
  latitude : string prop option; [@option]
  longitude : string prop option; [@option]
  region : string prop option; [@option]
  rule_reference : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__geo_proximity_location) -> ()

let yojson_of_rule__geo_proximity_location =
  (function
   | {
       bias = v_bias;
       endpoint_reference = v_endpoint_reference;
       evaluate_target_health = v_evaluate_target_health;
       health_check = v_health_check;
       latitude = v_latitude;
       longitude = v_longitude;
       region = v_region;
       rule_reference = v_rule_reference;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_rule_reference with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rule_reference", arg in
             bnd :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_longitude with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "longitude", arg in
             bnd :: bnds
       in
       let bnds =
         match v_latitude with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "latitude", arg in
             bnd :: bnds
       in
       let bnds =
         match v_health_check with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "health_check", arg in
             bnd :: bnds
       in
       let bnds =
         match v_evaluate_target_health with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "evaluate_target_health", arg in
             bnd :: bnds
       in
       let bnds =
         match v_endpoint_reference with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint_reference", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bias with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bias", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__geo_proximity_location ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__geo_proximity_location

[@@@deriving.end]

type rule__items = {
  endpoint_reference : string prop option; [@option]
  health_check : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__items) -> ()

let yojson_of_rule__items =
  (function
   | {
       endpoint_reference = v_endpoint_reference;
       health_check = v_health_check;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_health_check with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "health_check", arg in
             bnd :: bnds
       in
       let bnds =
         match v_endpoint_reference with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint_reference", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__items -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__items

[@@@deriving.end]

type rule__location = {
  continent : string prop option; [@option]
  country : string prop option; [@option]
  endpoint_reference : string prop option; [@option]
  evaluate_target_health : bool prop option; [@option]
  health_check : string prop option; [@option]
  is_default : bool prop option; [@option]
  rule_reference : string prop option; [@option]
  subdivision : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__location) -> ()

let yojson_of_rule__location =
  (function
   | {
       continent = v_continent;
       country = v_country;
       endpoint_reference = v_endpoint_reference;
       evaluate_target_health = v_evaluate_target_health;
       health_check = v_health_check;
       is_default = v_is_default;
       rule_reference = v_rule_reference;
       subdivision = v_subdivision;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_subdivision with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subdivision", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rule_reference with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rule_reference", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_default with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_default", arg in
             bnd :: bnds
       in
       let bnds =
         match v_health_check with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "health_check", arg in
             bnd :: bnds
       in
       let bnds =
         match v_evaluate_target_health with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "evaluate_target_health", arg in
             bnd :: bnds
       in
       let bnds =
         match v_endpoint_reference with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint_reference", arg in
             bnd :: bnds
       in
       let bnds =
         match v_country with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "country", arg in
             bnd :: bnds
       in
       let bnds =
         match v_continent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "continent", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__location -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__location

[@@@deriving.end]

type rule__primary = {
  endpoint_reference : string prop option; [@option]
  evaluate_target_health : bool prop option; [@option]
  health_check : string prop option; [@option]
  rule_reference : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__primary) -> ()

let yojson_of_rule__primary =
  (function
   | {
       endpoint_reference = v_endpoint_reference;
       evaluate_target_health = v_evaluate_target_health;
       health_check = v_health_check;
       rule_reference = v_rule_reference;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_rule_reference with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rule_reference", arg in
             bnd :: bnds
       in
       let bnds =
         match v_health_check with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "health_check", arg in
             bnd :: bnds
       in
       let bnds =
         match v_evaluate_target_health with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "evaluate_target_health", arg in
             bnd :: bnds
       in
       let bnds =
         match v_endpoint_reference with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint_reference", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__primary -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__primary

[@@@deriving.end]

type rule__region = {
  endpoint_reference : string prop option; [@option]
  evaluate_target_health : bool prop option; [@option]
  health_check : string prop option; [@option]
  region : string prop option; [@option]
  rule_reference : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__region) -> ()

let yojson_of_rule__region =
  (function
   | {
       endpoint_reference = v_endpoint_reference;
       evaluate_target_health = v_evaluate_target_health;
       health_check = v_health_check;
       region = v_region;
       rule_reference = v_rule_reference;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_rule_reference with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rule_reference", arg in
             bnd :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_health_check with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "health_check", arg in
             bnd :: bnds
       in
       let bnds =
         match v_evaluate_target_health with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "evaluate_target_health", arg in
             bnd :: bnds
       in
       let bnds =
         match v_endpoint_reference with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint_reference", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__region -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__region

[@@@deriving.end]

type rule__secondary = {
  endpoint_reference : string prop option; [@option]
  evaluate_target_health : bool prop option; [@option]
  health_check : string prop option; [@option]
  rule_reference : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__secondary) -> ()

let yojson_of_rule__secondary =
  (function
   | {
       endpoint_reference = v_endpoint_reference;
       evaluate_target_health = v_evaluate_target_health;
       health_check = v_health_check;
       rule_reference = v_rule_reference;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_rule_reference with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rule_reference", arg in
             bnd :: bnds
       in
       let bnds =
         match v_health_check with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "health_check", arg in
             bnd :: bnds
       in
       let bnds =
         match v_evaluate_target_health with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "evaluate_target_health", arg in
             bnd :: bnds
       in
       let bnds =
         match v_endpoint_reference with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint_reference", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__secondary -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__secondary

[@@@deriving.end]

type rule = {
  id : string prop;
  type_ : string prop option; [@option] [@key "type"]
  geo_proximity_location : rule__geo_proximity_location list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  items : rule__items list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  location : rule__location list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  primary : rule__primary list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  region : rule__region list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  secondary : rule__secondary list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule) -> ()

let yojson_of_rule =
  (function
   | {
       id = v_id;
       type_ = v_type_;
       geo_proximity_location = v_geo_proximity_location;
       items = v_items;
       location = v_location;
       primary = v_primary;
       region = v_region;
       secondary = v_secondary;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_secondary then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__secondary) v_secondary
           in
           let bnd = "secondary", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_region then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__region) v_region
           in
           let bnd = "region", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_primary then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__primary) v_primary
           in
           let bnd = "primary", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_location then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__location) v_location
           in
           let bnd = "location", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_items then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__items) v_items
           in
           let bnd = "items", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_geo_proximity_location then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule__geo_proximity_location)
               v_geo_proximity_location
           in
           let bnd = "geo_proximity_location", arg in
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule

[@@@deriving.end]

type aws_route53_traffic_policy_document = {
  id : string prop option; [@option]
  record_type : string prop option; [@option]
  start_endpoint : string prop option; [@option]
  start_rule : string prop option; [@option]
  version : string prop option; [@option]
  endpoint : endpoint list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  rule : rule list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route53_traffic_policy_document) -> ()

let yojson_of_aws_route53_traffic_policy_document =
  (function
   | {
       id = v_id;
       record_type = v_record_type;
       start_endpoint = v_start_endpoint;
       start_rule = v_start_rule;
       version = v_version;
       endpoint = v_endpoint;
       rule = v_rule;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rule then bnds
         else
           let arg = (yojson_of_list yojson_of_rule) v_rule in
           let bnd = "rule", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_endpoint then bnds
         else
           let arg =
             (yojson_of_list yojson_of_endpoint) v_endpoint
           in
           let bnd = "endpoint", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_start_rule with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start_rule", arg in
             bnd :: bnds
       in
       let bnds =
         match v_start_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start_endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_record_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "record_type", arg in
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
       `Assoc bnds
    : aws_route53_traffic_policy_document ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53_traffic_policy_document

[@@@deriving.end]

let endpoint ?region ?type_ ?value ~id () : endpoint =
  { id; region; type_; value }

let rule__geo_proximity_location ?bias ?endpoint_reference
    ?evaluate_target_health ?health_check ?latitude ?longitude
    ?region ?rule_reference () : rule__geo_proximity_location =
  {
    bias;
    endpoint_reference;
    evaluate_target_health;
    health_check;
    latitude;
    longitude;
    region;
    rule_reference;
  }

let rule__items ?endpoint_reference ?health_check () : rule__items =
  { endpoint_reference; health_check }

let rule__location ?continent ?country ?endpoint_reference
    ?evaluate_target_health ?health_check ?is_default ?rule_reference
    ?subdivision () : rule__location =
  {
    continent;
    country;
    endpoint_reference;
    evaluate_target_health;
    health_check;
    is_default;
    rule_reference;
    subdivision;
  }

let rule__primary ?endpoint_reference ?evaluate_target_health
    ?health_check ?rule_reference () : rule__primary =
  {
    endpoint_reference;
    evaluate_target_health;
    health_check;
    rule_reference;
  }

let rule__region ?endpoint_reference ?evaluate_target_health
    ?health_check ?region ?rule_reference () : rule__region =
  {
    endpoint_reference;
    evaluate_target_health;
    health_check;
    region;
    rule_reference;
  }

let rule__secondary ?endpoint_reference ?evaluate_target_health
    ?health_check ?rule_reference () : rule__secondary =
  {
    endpoint_reference;
    evaluate_target_health;
    health_check;
    rule_reference;
  }

let rule ?type_ ?(primary = []) ?(secondary = []) ~id
    ~geo_proximity_location ~items ~location ~region () : rule =
  {
    id;
    type_;
    geo_proximity_location;
    items;
    location;
    primary;
    region;
    secondary;
  }

let aws_route53_traffic_policy_document ?id ?record_type
    ?start_endpoint ?start_rule ?version ~endpoint ~rule () :
    aws_route53_traffic_policy_document =
  {
    id;
    record_type;
    start_endpoint;
    start_rule;
    version;
    endpoint;
    rule;
  }

type t = {
  tf_name : string;
  id : string prop;
  json : string prop;
  record_type : string prop;
  start_endpoint : string prop;
  start_rule : string prop;
  version : string prop;
}

let make ?id ?record_type ?start_endpoint ?start_rule ?version
    ~endpoint ~rule __id =
  let __type = "aws_route53_traffic_policy_document" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       json = Prop.computed __type __id "json";
       record_type = Prop.computed __type __id "record_type";
       start_endpoint = Prop.computed __type __id "start_endpoint";
       start_rule = Prop.computed __type __id "start_rule";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_traffic_policy_document
        (aws_route53_traffic_policy_document ?id ?record_type
           ?start_endpoint ?start_rule ?version ~endpoint ~rule ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?record_type ?start_endpoint ?start_rule
    ?version ~endpoint ~rule __id =
  let (r : _ Tf_core.resource) =
    make ?id ?record_type ?start_endpoint ?start_rule ?version
      ~endpoint ~rule __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
