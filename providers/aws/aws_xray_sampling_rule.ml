(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_xray_sampling_rule = {
  attributes : (string * string prop) list option; [@option]
  fixed_rate : float prop;
  host : string prop;
  http_method : string prop;
  id : string prop option; [@option]
  priority : float prop;
  reservoir_size : float prop;
  resource_arn : string prop;
  rule_name : string prop option; [@option]
  service_name : string prop;
  service_type : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  url_path : string prop;
  version : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_xray_sampling_rule) -> ()

let yojson_of_aws_xray_sampling_rule =
  (function
   | {
       attributes = v_attributes;
       fixed_rate = v_fixed_rate;
       host = v_host;
       http_method = v_http_method;
       id = v_id;
       priority = v_priority;
       reservoir_size = v_reservoir_size;
       resource_arn = v_resource_arn;
       rule_name = v_rule_name;
       service_name = v_service_name;
       service_type = v_service_type;
       tags = v_tags;
       tags_all = v_tags_all;
       url_path = v_url_path;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url_path in
         ("url_path", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_service_type in
         ("service_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_name in
         ("service_name", arg) :: bnds
       in
       let bnds =
         match v_rule_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rule_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_arn in
         ("resource_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_reservoir_size in
         ("reservoir_size", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_http_method in
         ("http_method", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_fixed_rate in
         ("fixed_rate", arg) :: bnds
       in
       let bnds =
         match v_attributes with
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
             let bnd = "attributes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_xray_sampling_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_xray_sampling_rule

[@@@deriving.end]

let aws_xray_sampling_rule ?attributes ?id ?rule_name ?tags ?tags_all
    ~fixed_rate ~host ~http_method ~priority ~reservoir_size
    ~resource_arn ~service_name ~service_type ~url_path ~version () :
    aws_xray_sampling_rule =
  {
    attributes;
    fixed_rate;
    host;
    http_method;
    id;
    priority;
    reservoir_size;
    resource_arn;
    rule_name;
    service_name;
    service_type;
    tags;
    tags_all;
    url_path;
    version;
  }

type t = {
  arn : string prop;
  attributes : (string * string) list prop;
  fixed_rate : float prop;
  host : string prop;
  http_method : string prop;
  id : string prop;
  priority : float prop;
  reservoir_size : float prop;
  resource_arn : string prop;
  rule_name : string prop;
  service_name : string prop;
  service_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  url_path : string prop;
  version : float prop;
}

let make ?attributes ?id ?rule_name ?tags ?tags_all ~fixed_rate ~host
    ~http_method ~priority ~reservoir_size ~resource_arn
    ~service_name ~service_type ~url_path ~version __id =
  let __type = "aws_xray_sampling_rule" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       attributes = Prop.computed __type __id "attributes";
       fixed_rate = Prop.computed __type __id "fixed_rate";
       host = Prop.computed __type __id "host";
       http_method = Prop.computed __type __id "http_method";
       id = Prop.computed __type __id "id";
       priority = Prop.computed __type __id "priority";
       reservoir_size = Prop.computed __type __id "reservoir_size";
       resource_arn = Prop.computed __type __id "resource_arn";
       rule_name = Prop.computed __type __id "rule_name";
       service_name = Prop.computed __type __id "service_name";
       service_type = Prop.computed __type __id "service_type";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       url_path = Prop.computed __type __id "url_path";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_xray_sampling_rule
        (aws_xray_sampling_rule ?attributes ?id ?rule_name ?tags
           ?tags_all ~fixed_rate ~host ~http_method ~priority
           ~reservoir_size ~resource_arn ~service_name ~service_type
           ~url_path ~version ());
    attrs = __attrs;
  }

let register ?tf_module ?attributes ?id ?rule_name ?tags ?tags_all
    ~fixed_rate ~host ~http_method ~priority ~reservoir_size
    ~resource_arn ~service_name ~service_type ~url_path ~version __id
    =
  let (r : _ Tf_core.resource) =
    make ?attributes ?id ?rule_name ?tags ?tags_all ~fixed_rate ~host
      ~http_method ~priority ~reservoir_size ~resource_arn
      ~service_name ~service_type ~url_path ~version __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
