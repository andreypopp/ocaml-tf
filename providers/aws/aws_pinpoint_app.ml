(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type campaign_hook = {
  lambda_function_name : string prop option; [@option]
  mode : string prop option; [@option]
  web_url : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : campaign_hook) -> ()

let yojson_of_campaign_hook =
  (function
   | {
       lambda_function_name = v_lambda_function_name;
       mode = v_mode;
       web_url = v_web_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_web_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "web_url", arg in
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
       let bnds =
         match v_lambda_function_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lambda_function_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : campaign_hook -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_campaign_hook

[@@@deriving.end]

type limits = {
  daily : float prop option; [@option]
  maximum_duration : float prop option; [@option]
  messages_per_second : float prop option; [@option]
  total : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : limits) -> ()

let yojson_of_limits =
  (function
   | {
       daily = v_daily;
       maximum_duration = v_maximum_duration;
       messages_per_second = v_messages_per_second;
       total = v_total;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_total with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "total", arg in
             bnd :: bnds
       in
       let bnds =
         match v_messages_per_second with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "messages_per_second", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maximum_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_daily with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "daily", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : limits -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_limits

[@@@deriving.end]

type quiet_time = {
  end_ : string prop option; [@option] [@key "end"]
  start : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : quiet_time) -> ()

let yojson_of_quiet_time =
  (function
   | { end_ = v_end_; start = v_start } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_start with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start", arg in
             bnd :: bnds
       in
       let bnds =
         match v_end_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : quiet_time -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_quiet_time

[@@@deriving.end]

type aws_pinpoint_app = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  campaign_hook : campaign_hook list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  limits : limits list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  quiet_time : quiet_time list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_pinpoint_app) -> ()

let yojson_of_aws_pinpoint_app =
  (function
   | {
       id = v_id;
       name = v_name;
       name_prefix = v_name_prefix;
       tags = v_tags;
       tags_all = v_tags_all;
       campaign_hook = v_campaign_hook;
       limits = v_limits;
       quiet_time = v_quiet_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_quiet_time then bnds
         else
           let arg =
             (yojson_of_list yojson_of_quiet_time) v_quiet_time
           in
           let bnd = "quiet_time", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_limits then bnds
         else
           let arg = (yojson_of_list yojson_of_limits) v_limits in
           let bnd = "limits", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_campaign_hook then bnds
         else
           let arg =
             (yojson_of_list yojson_of_campaign_hook) v_campaign_hook
           in
           let bnd = "campaign_hook", arg in
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
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
    : aws_pinpoint_app -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_pinpoint_app

[@@@deriving.end]

let campaign_hook ?lambda_function_name ?mode ?web_url () :
    campaign_hook =
  { lambda_function_name; mode; web_url }

let limits ?daily ?maximum_duration ?messages_per_second ?total () :
    limits =
  { daily; maximum_duration; messages_per_second; total }

let quiet_time ?end_ ?start () : quiet_time = { end_; start }

let aws_pinpoint_app ?id ?name ?name_prefix ?tags ?tags_all
    ?(campaign_hook = []) ?(limits = []) ?(quiet_time = []) () :
    aws_pinpoint_app =
  {
    id;
    name;
    name_prefix;
    tags;
    tags_all;
    campaign_hook;
    limits;
    quiet_time;
  }

type t = {
  tf_name : string;
  application_id : string prop;
  arn : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?id ?name ?name_prefix ?tags ?tags_all ?(campaign_hook = [])
    ?(limits = []) ?(quiet_time = []) __id =
  let __type = "aws_pinpoint_app" in
  let __attrs =
    ({
       tf_name = __id;
       application_id = Prop.computed __type __id "application_id";
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_pinpoint_app
        (aws_pinpoint_app ?id ?name ?name_prefix ?tags ?tags_all
           ~campaign_hook ~limits ~quiet_time ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?name_prefix ?tags ?tags_all
    ?(campaign_hook = []) ?(limits = []) ?(quiet_time = []) __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?name_prefix ?tags ?tags_all ~campaign_hook
      ~limits ~quiet_time __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
