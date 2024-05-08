(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type alias = {
  evaluate_target_health : bool prop;
  name : string prop;
  zone_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : alias) -> ()

let yojson_of_alias =
  (function
   | {
       evaluate_target_health = v_evaluate_target_health;
       name = v_name;
       zone_id = v_zone_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone_id in
         ("zone_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_evaluate_target_health
         in
         ("evaluate_target_health", arg) :: bnds
       in
       `Assoc bnds
    : alias -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_alias

[@@@deriving.end]

type cidr_routing_policy = {
  collection_id : string prop;
  location_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cidr_routing_policy) -> ()

let yojson_of_cidr_routing_policy =
  (function
   | {
       collection_id = v_collection_id;
       location_name = v_location_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location_name in
         ("location_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_collection_id in
         ("collection_id", arg) :: bnds
       in
       `Assoc bnds
    : cidr_routing_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cidr_routing_policy

[@@@deriving.end]

type failover_routing_policy = { type_ : string prop [@key "type"] }
[@@deriving_inline yojson_of]

let _ = fun (_ : failover_routing_policy) -> ()

let yojson_of_failover_routing_policy =
  (function
   | { type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : failover_routing_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_failover_routing_policy

[@@@deriving.end]

type geolocation_routing_policy = {
  continent : string prop option; [@option]
  country : string prop option; [@option]
  subdivision : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : geolocation_routing_policy) -> ()

let yojson_of_geolocation_routing_policy =
  (function
   | {
       continent = v_continent;
       country = v_country;
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
    : geolocation_routing_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_geolocation_routing_policy

[@@@deriving.end]

type geoproximity_routing_policy__coordinates = {
  latitude : string prop;
  longitude : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : geoproximity_routing_policy__coordinates) -> ()

let yojson_of_geoproximity_routing_policy__coordinates =
  (function
   | { latitude = v_latitude; longitude = v_longitude } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_longitude in
         ("longitude", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_latitude in
         ("latitude", arg) :: bnds
       in
       `Assoc bnds
    : geoproximity_routing_policy__coordinates ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_geoproximity_routing_policy__coordinates

[@@@deriving.end]

type geoproximity_routing_policy = {
  aws_region : string prop option; [@option]
  bias : float prop option; [@option]
  local_zone_group : string prop option; [@option]
  coordinates : geoproximity_routing_policy__coordinates list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : geoproximity_routing_policy) -> ()

let yojson_of_geoproximity_routing_policy =
  (function
   | {
       aws_region = v_aws_region;
       bias = v_bias;
       local_zone_group = v_local_zone_group;
       coordinates = v_coordinates;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_coordinates then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_geoproximity_routing_policy__coordinates)
               v_coordinates
           in
           let bnd = "coordinates", arg in
           bnd :: bnds
       in
       let bnds =
         match v_local_zone_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "local_zone_group", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bias with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "bias", arg in
             bnd :: bnds
       in
       let bnds =
         match v_aws_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "aws_region", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : geoproximity_routing_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_geoproximity_routing_policy

[@@@deriving.end]

type latency_routing_policy = { region : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : latency_routing_policy) -> ()

let yojson_of_latency_routing_policy =
  (function
   | { region = v_region } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       `Assoc bnds
    : latency_routing_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_latency_routing_policy

[@@@deriving.end]

type weighted_routing_policy = { weight : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : weighted_routing_policy) -> ()

let yojson_of_weighted_routing_policy =
  (function
   | { weight = v_weight } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_weight in
         ("weight", arg) :: bnds
       in
       `Assoc bnds
    : weighted_routing_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_weighted_routing_policy

[@@@deriving.end]

type aws_route53_record = {
  allow_overwrite : bool prop option; [@option]
  health_check_id : string prop option; [@option]
  id : string prop option; [@option]
  multivalue_answer_routing_policy : bool prop option; [@option]
  name : string prop;
  records : string prop list option; [@option]
  set_identifier : string prop option; [@option]
  ttl : float prop option; [@option]
  type_ : string prop; [@key "type"]
  zone_id : string prop;
  alias : alias list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cidr_routing_policy : cidr_routing_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  failover_routing_policy : failover_routing_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  geolocation_routing_policy : geolocation_routing_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  geoproximity_routing_policy : geoproximity_routing_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  latency_routing_policy : latency_routing_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  weighted_routing_policy : weighted_routing_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route53_record) -> ()

let yojson_of_aws_route53_record =
  (function
   | {
       allow_overwrite = v_allow_overwrite;
       health_check_id = v_health_check_id;
       id = v_id;
       multivalue_answer_routing_policy =
         v_multivalue_answer_routing_policy;
       name = v_name;
       records = v_records;
       set_identifier = v_set_identifier;
       ttl = v_ttl;
       type_ = v_type_;
       zone_id = v_zone_id;
       alias = v_alias;
       cidr_routing_policy = v_cidr_routing_policy;
       failover_routing_policy = v_failover_routing_policy;
       geolocation_routing_policy = v_geolocation_routing_policy;
       geoproximity_routing_policy = v_geoproximity_routing_policy;
       latency_routing_policy = v_latency_routing_policy;
       weighted_routing_policy = v_weighted_routing_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_weighted_routing_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_weighted_routing_policy)
               v_weighted_routing_policy
           in
           let bnd = "weighted_routing_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_latency_routing_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_latency_routing_policy)
               v_latency_routing_policy
           in
           let bnd = "latency_routing_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_geoproximity_routing_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_geoproximity_routing_policy)
               v_geoproximity_routing_policy
           in
           let bnd = "geoproximity_routing_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_geolocation_routing_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_geolocation_routing_policy)
               v_geolocation_routing_policy
           in
           let bnd = "geolocation_routing_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_failover_routing_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_failover_routing_policy)
               v_failover_routing_policy
           in
           let bnd = "failover_routing_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cidr_routing_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cidr_routing_policy)
               v_cidr_routing_policy
           in
           let bnd = "cidr_routing_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_alias then bnds
         else
           let arg = (yojson_of_list yojson_of_alias) v_alias in
           let bnd = "alias", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone_id in
         ("zone_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         match v_set_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "set_identifier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_records with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "records", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_multivalue_answer_routing_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "multivalue_answer_routing_policy", arg in
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
         match v_health_check_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "health_check_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_overwrite with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_overwrite", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_route53_record -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53_record

[@@@deriving.end]

let alias ~evaluate_target_health ~name ~zone_id () : alias =
  { evaluate_target_health; name; zone_id }

let cidr_routing_policy ~collection_id ~location_name () :
    cidr_routing_policy =
  { collection_id; location_name }

let failover_routing_policy ~type_ () : failover_routing_policy =
  { type_ }

let geolocation_routing_policy ?continent ?country ?subdivision () :
    geolocation_routing_policy =
  { continent; country; subdivision }

let geoproximity_routing_policy__coordinates ~latitude ~longitude ()
    : geoproximity_routing_policy__coordinates =
  { latitude; longitude }

let geoproximity_routing_policy ?aws_region ?bias ?local_zone_group
    ~coordinates () : geoproximity_routing_policy =
  { aws_region; bias; local_zone_group; coordinates }

let latency_routing_policy ~region () : latency_routing_policy =
  { region }

let weighted_routing_policy ~weight () : weighted_routing_policy =
  { weight }

let aws_route53_record ?allow_overwrite ?health_check_id ?id
    ?multivalue_answer_routing_policy ?records ?set_identifier ?ttl
    ?(alias = []) ?(cidr_routing_policy = [])
    ?(failover_routing_policy = [])
    ?(geolocation_routing_policy = [])
    ?(geoproximity_routing_policy = [])
    ?(latency_routing_policy = []) ?(weighted_routing_policy = [])
    ~name ~type_ ~zone_id () : aws_route53_record =
  {
    allow_overwrite;
    health_check_id;
    id;
    multivalue_answer_routing_policy;
    name;
    records;
    set_identifier;
    ttl;
    type_;
    zone_id;
    alias;
    cidr_routing_policy;
    failover_routing_policy;
    geolocation_routing_policy;
    geoproximity_routing_policy;
    latency_routing_policy;
    weighted_routing_policy;
  }

type t = {
  tf_name : string;
  allow_overwrite : bool prop;
  fqdn : string prop;
  health_check_id : string prop;
  id : string prop;
  multivalue_answer_routing_policy : bool prop;
  name : string prop;
  records : string list prop;
  set_identifier : string prop;
  ttl : float prop;
  type_ : string prop;
  zone_id : string prop;
}

let make ?allow_overwrite ?health_check_id ?id
    ?multivalue_answer_routing_policy ?records ?set_identifier ?ttl
    ?(alias = []) ?(cidr_routing_policy = [])
    ?(failover_routing_policy = [])
    ?(geolocation_routing_policy = [])
    ?(geoproximity_routing_policy = [])
    ?(latency_routing_policy = []) ?(weighted_routing_policy = [])
    ~name ~type_ ~zone_id __id =
  let __type = "aws_route53_record" in
  let __attrs =
    ({
       tf_name = __id;
       allow_overwrite = Prop.computed __type __id "allow_overwrite";
       fqdn = Prop.computed __type __id "fqdn";
       health_check_id = Prop.computed __type __id "health_check_id";
       id = Prop.computed __type __id "id";
       multivalue_answer_routing_policy =
         Prop.computed __type __id "multivalue_answer_routing_policy";
       name = Prop.computed __type __id "name";
       records = Prop.computed __type __id "records";
       set_identifier = Prop.computed __type __id "set_identifier";
       ttl = Prop.computed __type __id "ttl";
       type_ = Prop.computed __type __id "type";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_record
        (aws_route53_record ?allow_overwrite ?health_check_id ?id
           ?multivalue_answer_routing_policy ?records ?set_identifier
           ?ttl ~alias ~cidr_routing_policy ~failover_routing_policy
           ~geolocation_routing_policy ~geoproximity_routing_policy
           ~latency_routing_policy ~weighted_routing_policy ~name
           ~type_ ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_overwrite ?health_check_id ?id
    ?multivalue_answer_routing_policy ?records ?set_identifier ?ttl
    ?(alias = []) ?(cidr_routing_policy = [])
    ?(failover_routing_policy = [])
    ?(geolocation_routing_policy = [])
    ?(geoproximity_routing_policy = [])
    ?(latency_routing_policy = []) ?(weighted_routing_policy = [])
    ~name ~type_ ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?allow_overwrite ?health_check_id ?id
      ?multivalue_answer_routing_policy ?records ?set_identifier ?ttl
      ~alias ~cidr_routing_policy ~failover_routing_policy
      ~geolocation_routing_policy ~geoproximity_routing_policy
      ~latency_routing_policy ~weighted_routing_policy ~name ~type_
      ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
