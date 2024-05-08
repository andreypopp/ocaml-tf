(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type staging_distribution_dns_names = {
  items : string prop list option; [@option]
  quantity : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : staging_distribution_dns_names) -> ()

let yojson_of_staging_distribution_dns_names =
  (function
   | { items = v_items; quantity = v_quantity } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_quantity in
         ("quantity", arg) :: bnds
       in
       let bnds =
         match v_items with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "items", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : staging_distribution_dns_names ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_staging_distribution_dns_names

[@@@deriving.end]

type traffic_config__single_header_config = {
  header : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : traffic_config__single_header_config) -> ()

let yojson_of_traffic_config__single_header_config =
  (function
   | { header = v_header; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header in
         ("header", arg) :: bnds
       in
       `Assoc bnds
    : traffic_config__single_header_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_traffic_config__single_header_config

[@@@deriving.end]

type traffic_config__single_weight_config__session_stickiness_config = {
  idle_ttl : float prop;
  maximum_ttl : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       traffic_config__single_weight_config__session_stickiness_config) ->
  ()

let yojson_of_traffic_config__single_weight_config__session_stickiness_config
    =
  (function
   | { idle_ttl = v_idle_ttl; maximum_ttl = v_maximum_ttl } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_maximum_ttl in
         ("maximum_ttl", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_idle_ttl in
         ("idle_ttl", arg) :: bnds
       in
       `Assoc bnds
    : traffic_config__single_weight_config__session_stickiness_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_traffic_config__single_weight_config__session_stickiness_config

[@@@deriving.end]

type traffic_config__single_weight_config = {
  weight : float prop;
  session_stickiness_config :
    traffic_config__single_weight_config__session_stickiness_config
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : traffic_config__single_weight_config) -> ()

let yojson_of_traffic_config__single_weight_config =
  (function
   | {
       weight = v_weight;
       session_stickiness_config = v_session_stickiness_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_session_stickiness_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_traffic_config__single_weight_config__session_stickiness_config)
               v_session_stickiness_config
           in
           let bnd = "session_stickiness_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_weight in
         ("weight", arg) :: bnds
       in
       `Assoc bnds
    : traffic_config__single_weight_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_traffic_config__single_weight_config

[@@@deriving.end]

type traffic_config = {
  type_ : string prop; [@key "type"]
  single_header_config : traffic_config__single_header_config list;
      [@default []] [@yojson_drop_default ( = )]
  single_weight_config : traffic_config__single_weight_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : traffic_config) -> ()

let yojson_of_traffic_config =
  (function
   | {
       type_ = v_type_;
       single_header_config = v_single_header_config;
       single_weight_config = v_single_weight_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_single_weight_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_traffic_config__single_weight_config)
               v_single_weight_config
           in
           let bnd = "single_weight_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_single_header_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_traffic_config__single_header_config)
               v_single_header_config
           in
           let bnd = "single_header_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : traffic_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_traffic_config

[@@@deriving.end]

type aws_cloudfront_continuous_deployment_policy = {
  enabled : bool prop;
  staging_distribution_dns_names :
    staging_distribution_dns_names list;
      [@default []] [@yojson_drop_default ( = )]
  traffic_config : traffic_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudfront_continuous_deployment_policy) -> ()

let yojson_of_aws_cloudfront_continuous_deployment_policy =
  (function
   | {
       enabled = v_enabled;
       staging_distribution_dns_names =
         v_staging_distribution_dns_names;
       traffic_config = v_traffic_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_traffic_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_traffic_config)
               v_traffic_config
           in
           let bnd = "traffic_config", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_staging_distribution_dns_names then bnds
         else
           let arg =
             (yojson_of_list yojson_of_staging_distribution_dns_names)
               v_staging_distribution_dns_names
           in
           let bnd = "staging_distribution_dns_names", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : aws_cloudfront_continuous_deployment_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudfront_continuous_deployment_policy

[@@@deriving.end]

let staging_distribution_dns_names ?items ~quantity () :
    staging_distribution_dns_names =
  { items; quantity }

let traffic_config__single_header_config ~header ~value () :
    traffic_config__single_header_config =
  { header; value }

let traffic_config__single_weight_config__session_stickiness_config
    ~idle_ttl ~maximum_ttl () :
    traffic_config__single_weight_config__session_stickiness_config =
  { idle_ttl; maximum_ttl }

let traffic_config__single_weight_config
    ?(session_stickiness_config = []) ~weight () :
    traffic_config__single_weight_config =
  { weight; session_stickiness_config }

let traffic_config ?(single_header_config = [])
    ?(single_weight_config = []) ~type_ () : traffic_config =
  { type_; single_header_config; single_weight_config }

let aws_cloudfront_continuous_deployment_policy
    ?(staging_distribution_dns_names = []) ?(traffic_config = [])
    ~enabled () : aws_cloudfront_continuous_deployment_policy =
  { enabled; staging_distribution_dns_names; traffic_config }

type t = {
  tf_name : string;
  enabled : bool prop;
  etag : string prop;
  id : string prop;
  last_modified_time : string prop;
}

let make ?(staging_distribution_dns_names = [])
    ?(traffic_config = []) ~enabled __id =
  let __type = "aws_cloudfront_continuous_deployment_policy" in
  let __attrs =
    ({
       tf_name = __id;
       enabled = Prop.computed __type __id "enabled";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       last_modified_time =
         Prop.computed __type __id "last_modified_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudfront_continuous_deployment_policy
        (aws_cloudfront_continuous_deployment_policy
           ~staging_distribution_dns_names ~traffic_config ~enabled
           ());
    attrs = __attrs;
  }

let register ?tf_module ?(staging_distribution_dns_names = [])
    ?(traffic_config = []) ~enabled __id =
  let (r : _ Tf_core.resource) =
    make ~staging_distribution_dns_names ~traffic_config ~enabled
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
