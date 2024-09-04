(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dns_config__dns_records = {
  ttl : float prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dns_config__dns_records) -> ()

let yojson_of_dns_config__dns_records =
  (function
   | { ttl = v_ttl; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_ttl in
         ("ttl", arg) :: bnds
       in
       `Assoc bnds
    : dns_config__dns_records -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dns_config__dns_records

[@@@deriving.end]

type dns_config = {
  namespace_id : string prop;
  routing_policy : string prop option; [@option]
  dns_records : dns_config__dns_records list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dns_config) -> ()

let yojson_of_dns_config =
  (function
   | {
       namespace_id = v_namespace_id;
       routing_policy = v_routing_policy;
       dns_records = v_dns_records;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_dns_records then bnds
         else
           let arg =
             (yojson_of_list yojson_of_dns_config__dns_records)
               v_dns_records
           in
           let bnd = "dns_records", arg in
           bnd :: bnds
       in
       let bnds =
         match v_routing_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "routing_policy", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace_id in
         ("namespace_id", arg) :: bnds
       in
       `Assoc bnds
    : dns_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dns_config

[@@@deriving.end]

type health_check_config = {
  failure_threshold : float prop option; [@option]
  resource_path : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : health_check_config) -> ()

let yojson_of_health_check_config =
  (function
   | {
       failure_threshold = v_failure_threshold;
       resource_path = v_resource_path;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_resource_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_failure_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "failure_threshold", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : health_check_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_health_check_config

[@@@deriving.end]

type health_check_custom_config = {
  failure_threshold : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : health_check_custom_config) -> ()

let yojson_of_health_check_custom_config =
  (function
   | { failure_threshold = v_failure_threshold } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_failure_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "failure_threshold", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : health_check_custom_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_health_check_custom_config

[@@@deriving.end]

type aws_service_discovery_service = {
  description : string prop option; [@option]
  force_destroy : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  namespace_id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  dns_config : dns_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  health_check_config : health_check_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  health_check_custom_config : health_check_custom_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_service_discovery_service) -> ()

let yojson_of_aws_service_discovery_service =
  (function
   | {
       description = v_description;
       force_destroy = v_force_destroy;
       id = v_id;
       name = v_name;
       namespace_id = v_namespace_id;
       tags = v_tags;
       tags_all = v_tags_all;
       type_ = v_type_;
       dns_config = v_dns_config;
       health_check_config = v_health_check_config;
       health_check_custom_config = v_health_check_custom_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_health_check_custom_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_health_check_custom_config)
               v_health_check_custom_config
           in
           let bnd = "health_check_custom_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_health_check_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_health_check_config)
               v_health_check_config
           in
           let bnd = "health_check_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dns_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_dns_config) v_dns_config
           in
           let bnd = "dns_config", arg in
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
         match v_namespace_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "namespace_id", arg in
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
         match v_force_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_destroy", arg in
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
       `Assoc bnds
    : aws_service_discovery_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_service_discovery_service

[@@@deriving.end]

let dns_config__dns_records ~ttl ~type_ () : dns_config__dns_records
    =
  { ttl; type_ }

let dns_config ?routing_policy ~namespace_id ~dns_records () :
    dns_config =
  { namespace_id; routing_policy; dns_records }

let health_check_config ?failure_threshold ?resource_path ?type_ () :
    health_check_config =
  { failure_threshold; resource_path; type_ }

let health_check_custom_config ?failure_threshold () :
    health_check_custom_config =
  { failure_threshold }

let aws_service_discovery_service ?description ?force_destroy ?id
    ?namespace_id ?tags ?tags_all ?type_ ?(dns_config = [])
    ?(health_check_config = []) ?(health_check_custom_config = [])
    ~name () : aws_service_discovery_service =
  {
    description;
    force_destroy;
    id;
    name;
    namespace_id;
    tags;
    tags_all;
    type_;
    dns_config;
    health_check_config;
    health_check_custom_config;
  }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  force_destroy : bool prop;
  id : string prop;
  name : string prop;
  namespace_id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  type_ : string prop;
}

let make ?description ?force_destroy ?id ?namespace_id ?tags
    ?tags_all ?type_ ?(dns_config = []) ?(health_check_config = [])
    ?(health_check_custom_config = []) ~name __id =
  let __type = "aws_service_discovery_service" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       force_destroy = Prop.computed __type __id "force_destroy";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       namespace_id = Prop.computed __type __id "namespace_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_service_discovery_service
        (aws_service_discovery_service ?description ?force_destroy
           ?id ?namespace_id ?tags ?tags_all ?type_ ~dns_config
           ~health_check_config ~health_check_custom_config ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?force_destroy ?id ?namespace_id
    ?tags ?tags_all ?type_ ?(dns_config = [])
    ?(health_check_config = []) ?(health_check_custom_config = [])
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?force_destroy ?id ?namespace_id ?tags
      ?tags_all ?type_ ~dns_config ~health_check_config
      ~health_check_custom_config ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
