(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type api_stages__throttle = {
  burst_limit : float prop option; [@option]
  path : string prop;
  rate_limit : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : api_stages__throttle) -> ()

let yojson_of_api_stages__throttle =
  (function
   | {
       burst_limit = v_burst_limit;
       path = v_path;
       rate_limit = v_rate_limit;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_rate_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "rate_limit", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         match v_burst_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "burst_limit", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : api_stages__throttle -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_api_stages__throttle

[@@@deriving.end]

type api_stages = {
  api_id : string prop;
  stage : string prop;
  throttle : api_stages__throttle list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : api_stages) -> ()

let yojson_of_api_stages =
  (function
   | { api_id = v_api_id; stage = v_stage; throttle = v_throttle } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_api_stages__throttle v_throttle
         in
         ("throttle", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stage in
         ("stage", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_id in
         ("api_id", arg) :: bnds
       in
       `Assoc bnds
    : api_stages -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_api_stages

[@@@deriving.end]

type quota_settings = {
  limit : float prop;
  offset : float prop option; [@option]
  period : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : quota_settings) -> ()

let yojson_of_quota_settings =
  (function
   | { limit = v_limit; offset = v_offset; period = v_period } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_period in
         ("period", arg) :: bnds
       in
       let bnds =
         match v_offset with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "offset", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_limit in
         ("limit", arg) :: bnds
       in
       `Assoc bnds
    : quota_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_quota_settings

[@@@deriving.end]

type throttle_settings = {
  burst_limit : float prop option; [@option]
  rate_limit : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : throttle_settings) -> ()

let yojson_of_throttle_settings =
  (function
   | { burst_limit = v_burst_limit; rate_limit = v_rate_limit } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_rate_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "rate_limit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_burst_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "burst_limit", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : throttle_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_throttle_settings

[@@@deriving.end]

type aws_api_gateway_usage_plan = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  product_code : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  api_stages : api_stages list;
  quota_settings : quota_settings list;
  throttle_settings : throttle_settings list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_api_gateway_usage_plan) -> ()

let yojson_of_aws_api_gateway_usage_plan =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       product_code = v_product_code;
       tags = v_tags;
       tags_all = v_tags_all;
       api_stages = v_api_stages;
       quota_settings = v_quota_settings;
       throttle_settings = v_throttle_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_throttle_settings
             v_throttle_settings
         in
         ("throttle_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_quota_settings v_quota_settings
         in
         ("quota_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_api_stages v_api_stages
         in
         ("api_stages", arg) :: bnds
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
         match v_product_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "product_code", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_api_gateway_usage_plan -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_api_gateway_usage_plan

[@@@deriving.end]

let api_stages__throttle ?burst_limit ?rate_limit ~path () :
    api_stages__throttle =
  { burst_limit; path; rate_limit }

let api_stages ~api_id ~stage ~throttle () : api_stages =
  { api_id; stage; throttle }

let quota_settings ?offset ~limit ~period () : quota_settings =
  { limit; offset; period }

let throttle_settings ?burst_limit ?rate_limit () : throttle_settings
    =
  { burst_limit; rate_limit }

let aws_api_gateway_usage_plan ?description ?id ?product_code ?tags
    ?tags_all ?(quota_settings = []) ?(throttle_settings = []) ~name
    ~api_stages () : aws_api_gateway_usage_plan =
  {
    description;
    id;
    name;
    product_code;
    tags;
    tags_all;
    api_stages;
    quota_settings;
    throttle_settings;
  }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  product_code : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?product_code ?tags ?tags_all
    ?(quota_settings = []) ?(throttle_settings = []) ~name
    ~api_stages __id =
  let __type = "aws_api_gateway_usage_plan" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       product_code = Prop.computed __type __id "product_code";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_usage_plan
        (aws_api_gateway_usage_plan ?description ?id ?product_code
           ?tags ?tags_all ~quota_settings ~throttle_settings ~name
           ~api_stages ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?product_code ?tags
    ?tags_all ?(quota_settings = []) ?(throttle_settings = []) ~name
    ~api_stages __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?product_code ?tags ?tags_all
      ~quota_settings ~throttle_settings ~name ~api_stages __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
