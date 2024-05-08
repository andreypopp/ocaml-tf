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
  dns_records : dns_config__dns_records list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  namespace_id : string prop;
  routing_policy : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dns_config) -> ()

let yojson_of_dns_config =
  (function
   | {
       dns_records = v_dns_records;
       namespace_id = v_namespace_id;
       routing_policy = v_routing_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_routing_policy
         in
         ("routing_policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace_id in
         ("namespace_id", arg) :: bnds
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
       `Assoc bnds
    : dns_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dns_config

[@@@deriving.end]

type health_check_config = {
  failure_threshold : float prop;
  resource_path : string prop;
  type_ : string prop; [@key "type"]
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
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_path in
         ("resource_path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_failure_threshold
         in
         ("failure_threshold", arg) :: bnds
       in
       `Assoc bnds
    : health_check_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_health_check_config

[@@@deriving.end]

type health_check_custom_config = { failure_threshold : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : health_check_custom_config) -> ()

let yojson_of_health_check_custom_config =
  (function
   | { failure_threshold = v_failure_threshold } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_failure_threshold
         in
         ("failure_threshold", arg) :: bnds
       in
       `Assoc bnds
    : health_check_custom_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_health_check_custom_config

[@@@deriving.end]

type aws_service_discovery_service = {
  id : string prop option; [@option]
  name : string prop;
  namespace_id : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_service_discovery_service) -> ()

let yojson_of_aws_service_discovery_service =
  (function
   | {
       id = v_id;
       name = v_name;
       namespace_id = v_namespace_id;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
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
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace_id in
         ("namespace_id", arg) :: bnds
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
    : aws_service_discovery_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_service_discovery_service

[@@@deriving.end]

let aws_service_discovery_service ?id ?tags ?tags_all ~name
    ~namespace_id () : aws_service_discovery_service =
  { id; name; namespace_id; tags; tags_all }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  dns_config : dns_config list prop;
  health_check_config : health_check_config list prop;
  health_check_custom_config : health_check_custom_config list prop;
  id : string prop;
  name : string prop;
  namespace_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ~name ~namespace_id __id =
  let __type = "aws_service_discovery_service" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       dns_config = Prop.computed __type __id "dns_config";
       health_check_config =
         Prop.computed __type __id "health_check_config";
       health_check_custom_config =
         Prop.computed __type __id "health_check_custom_config";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       namespace_id = Prop.computed __type __id "namespace_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_service_discovery_service
        (aws_service_discovery_service ?id ?tags ?tags_all ~name
           ~namespace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~name ~namespace_id __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~name ~namespace_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
