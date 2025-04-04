(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type app_monitor_configuration = {
  allow_cookies : bool prop option; [@option]
  enable_xray : bool prop option; [@option]
  excluded_pages : string prop list option; [@option]
  favorite_pages : string prop list option; [@option]
  guest_role_arn : string prop option; [@option]
  identity_pool_id : string prop option; [@option]
  included_pages : string prop list option; [@option]
  session_sample_rate : float prop option; [@option]
  telemetries : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : app_monitor_configuration) -> ()

let yojson_of_app_monitor_configuration =
  (function
   | {
       allow_cookies = v_allow_cookies;
       enable_xray = v_enable_xray;
       excluded_pages = v_excluded_pages;
       favorite_pages = v_favorite_pages;
       guest_role_arn = v_guest_role_arn;
       identity_pool_id = v_identity_pool_id;
       included_pages = v_included_pages;
       session_sample_rate = v_session_sample_rate;
       telemetries = v_telemetries;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_telemetries with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "telemetries", arg in
             bnd :: bnds
       in
       let bnds =
         match v_session_sample_rate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "session_sample_rate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_included_pages with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "included_pages", arg in
             bnd :: bnds
       in
       let bnds =
         match v_identity_pool_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_pool_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_guest_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "guest_role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_favorite_pages with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "favorite_pages", arg in
             bnd :: bnds
       in
       let bnds =
         match v_excluded_pages with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "excluded_pages", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_xray with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_xray", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_cookies with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_cookies", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : app_monitor_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_app_monitor_configuration

[@@@deriving.end]

type custom_events = { status : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_events) -> ()

let yojson_of_custom_events =
  (function
   | { status = v_status } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : custom_events -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_events

[@@@deriving.end]

type aws_rum_app_monitor = {
  cw_log_enabled : bool prop option; [@option]
  domain : string prop;
  id : string prop option; [@option]
  name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  app_monitor_configuration : app_monitor_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  custom_events : custom_events list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_rum_app_monitor) -> ()

let yojson_of_aws_rum_app_monitor =
  (function
   | {
       cw_log_enabled = v_cw_log_enabled;
       domain = v_domain;
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       app_monitor_configuration = v_app_monitor_configuration;
       custom_events = v_custom_events;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_events then bnds
         else
           let arg =
             (yojson_of_list yojson_of_custom_events) v_custom_events
           in
           let bnd = "custom_events", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_app_monitor_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_app_monitor_configuration)
               v_app_monitor_configuration
           in
           let bnd = "app_monitor_configuration", arg in
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
         let arg = yojson_of_prop yojson_of_string v_domain in
         ("domain", arg) :: bnds
       in
       let bnds =
         match v_cw_log_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cw_log_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_rum_app_monitor -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_rum_app_monitor

[@@@deriving.end]

let app_monitor_configuration ?allow_cookies ?enable_xray
    ?excluded_pages ?favorite_pages ?guest_role_arn ?identity_pool_id
    ?included_pages ?session_sample_rate ?telemetries () :
    app_monitor_configuration =
  {
    allow_cookies;
    enable_xray;
    excluded_pages;
    favorite_pages;
    guest_role_arn;
    identity_pool_id;
    included_pages;
    session_sample_rate;
    telemetries;
  }

let custom_events ?status () : custom_events = { status }

let aws_rum_app_monitor ?cw_log_enabled ?id ?tags ?tags_all
    ?(app_monitor_configuration = []) ?(custom_events = []) ~domain
    ~name () : aws_rum_app_monitor =
  {
    cw_log_enabled;
    domain;
    id;
    name;
    tags;
    tags_all;
    app_monitor_configuration;
    custom_events;
  }

type t = {
  tf_name : string;
  app_monitor_id : string prop;
  arn : string prop;
  cw_log_enabled : bool prop;
  cw_log_group : string prop;
  domain : string prop;
  id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?cw_log_enabled ?id ?tags ?tags_all
    ?(app_monitor_configuration = []) ?(custom_events = []) ~domain
    ~name __id =
  let __type = "aws_rum_app_monitor" in
  let __attrs =
    ({
       tf_name = __id;
       app_monitor_id = Prop.computed __type __id "app_monitor_id";
       arn = Prop.computed __type __id "arn";
       cw_log_enabled = Prop.computed __type __id "cw_log_enabled";
       cw_log_group = Prop.computed __type __id "cw_log_group";
       domain = Prop.computed __type __id "domain";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_rum_app_monitor
        (aws_rum_app_monitor ?cw_log_enabled ?id ?tags ?tags_all
           ~app_monitor_configuration ~custom_events ~domain ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?cw_log_enabled ?id ?tags ?tags_all
    ?(app_monitor_configuration = []) ?(custom_events = []) ~domain
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?cw_log_enabled ?id ?tags ?tags_all
      ~app_monitor_configuration ~custom_events ~domain ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
