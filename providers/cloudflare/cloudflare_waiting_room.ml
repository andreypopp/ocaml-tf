(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type additional_routes = {
  host : string prop;
  path : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : additional_routes) -> ()

let yojson_of_additional_routes =
  (function
   | { host = v_host; path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       `Assoc bnds
    : additional_routes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_additional_routes

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type cloudflare_waiting_room = {
  cookie_suffix : string prop option; [@option]
  custom_page_html : string prop option; [@option]
  default_template_language : string prop option; [@option]
  description : string prop option; [@option]
  disable_session_renewal : bool prop option; [@option]
  host : string prop;
  id : string prop option; [@option]
  json_response_enabled : bool prop option; [@option]
  name : string prop;
  new_users_per_minute : float prop;
  path : string prop option; [@option]
  queue_all : bool prop option; [@option]
  queueing_method : string prop option; [@option]
  queueing_status_code : float prop option; [@option]
  session_duration : float prop option; [@option]
  suspended : bool prop option; [@option]
  total_active_users : float prop;
  zone_id : string prop;
  additional_routes : additional_routes list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_waiting_room) -> ()

let yojson_of_cloudflare_waiting_room =
  (function
   | {
       cookie_suffix = v_cookie_suffix;
       custom_page_html = v_custom_page_html;
       default_template_language = v_default_template_language;
       description = v_description;
       disable_session_renewal = v_disable_session_renewal;
       host = v_host;
       id = v_id;
       json_response_enabled = v_json_response_enabled;
       name = v_name;
       new_users_per_minute = v_new_users_per_minute;
       path = v_path;
       queue_all = v_queue_all;
       queueing_method = v_queueing_method;
       queueing_status_code = v_queueing_status_code;
       session_duration = v_session_duration;
       suspended = v_suspended;
       total_active_users = v_total_active_users;
       zone_id = v_zone_id;
       additional_routes = v_additional_routes;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_additional_routes
             v_additional_routes
         in
         ("additional_routes", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone_id in
         ("zone_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_total_active_users
         in
         ("total_active_users", arg) :: bnds
       in
       let bnds =
         match v_suspended with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "suspended", arg in
             bnd :: bnds
       in
       let bnds =
         match v_session_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "session_duration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_queueing_status_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "queueing_status_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_queueing_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "queueing_method", arg in
             bnd :: bnds
       in
       let bnds =
         match v_queue_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "queue_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_new_users_per_minute
         in
         ("new_users_per_minute", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_json_response_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "json_response_enabled", arg in
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
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       let bnds =
         match v_disable_session_renewal with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_session_renewal", arg in
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
         match v_default_template_language with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_template_language", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_page_html with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_page_html", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cookie_suffix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cookie_suffix", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudflare_waiting_room -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_waiting_room

[@@@deriving.end]

let additional_routes ?path ~host () : additional_routes =
  { host; path }

let timeouts ?create ?update () : timeouts = { create; update }

let cloudflare_waiting_room ?cookie_suffix ?custom_page_html
    ?default_template_language ?description ?disable_session_renewal
    ?id ?json_response_enabled ?path ?queue_all ?queueing_method
    ?queueing_status_code ?session_duration ?suspended
    ?(additional_routes = []) ?timeouts ~host ~name
    ~new_users_per_minute ~total_active_users ~zone_id () :
    cloudflare_waiting_room =
  {
    cookie_suffix;
    custom_page_html;
    default_template_language;
    description;
    disable_session_renewal;
    host;
    id;
    json_response_enabled;
    name;
    new_users_per_minute;
    path;
    queue_all;
    queueing_method;
    queueing_status_code;
    session_duration;
    suspended;
    total_active_users;
    zone_id;
    additional_routes;
    timeouts;
  }

type t = {
  tf_name : string;
  cookie_suffix : string prop;
  custom_page_html : string prop;
  default_template_language : string prop;
  description : string prop;
  disable_session_renewal : bool prop;
  host : string prop;
  id : string prop;
  json_response_enabled : bool prop;
  name : string prop;
  new_users_per_minute : float prop;
  path : string prop;
  queue_all : bool prop;
  queueing_method : string prop;
  queueing_status_code : float prop;
  session_duration : float prop;
  suspended : bool prop;
  total_active_users : float prop;
  zone_id : string prop;
}

let make ?cookie_suffix ?custom_page_html ?default_template_language
    ?description ?disable_session_renewal ?id ?json_response_enabled
    ?path ?queue_all ?queueing_method ?queueing_status_code
    ?session_duration ?suspended ?(additional_routes = []) ?timeouts
    ~host ~name ~new_users_per_minute ~total_active_users ~zone_id
    __id =
  let __type = "cloudflare_waiting_room" in
  let __attrs =
    ({
       tf_name = __id;
       cookie_suffix = Prop.computed __type __id "cookie_suffix";
       custom_page_html =
         Prop.computed __type __id "custom_page_html";
       default_template_language =
         Prop.computed __type __id "default_template_language";
       description = Prop.computed __type __id "description";
       disable_session_renewal =
         Prop.computed __type __id "disable_session_renewal";
       host = Prop.computed __type __id "host";
       id = Prop.computed __type __id "id";
       json_response_enabled =
         Prop.computed __type __id "json_response_enabled";
       name = Prop.computed __type __id "name";
       new_users_per_minute =
         Prop.computed __type __id "new_users_per_minute";
       path = Prop.computed __type __id "path";
       queue_all = Prop.computed __type __id "queue_all";
       queueing_method = Prop.computed __type __id "queueing_method";
       queueing_status_code =
         Prop.computed __type __id "queueing_status_code";
       session_duration =
         Prop.computed __type __id "session_duration";
       suspended = Prop.computed __type __id "suspended";
       total_active_users =
         Prop.computed __type __id "total_active_users";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_waiting_room
        (cloudflare_waiting_room ?cookie_suffix ?custom_page_html
           ?default_template_language ?description
           ?disable_session_renewal ?id ?json_response_enabled ?path
           ?queue_all ?queueing_method ?queueing_status_code
           ?session_duration ?suspended ~additional_routes ?timeouts
           ~host ~name ~new_users_per_minute ~total_active_users
           ~zone_id ());
    attrs = __attrs;
  }

let register ?tf_module ?cookie_suffix ?custom_page_html
    ?default_template_language ?description ?disable_session_renewal
    ?id ?json_response_enabled ?path ?queue_all ?queueing_method
    ?queueing_status_code ?session_duration ?suspended
    ?(additional_routes = []) ?timeouts ~host ~name
    ~new_users_per_minute ~total_active_users ~zone_id __id =
  let (r : _ Tf_core.resource) =
    make ?cookie_suffix ?custom_page_html ?default_template_language
      ?description ?disable_session_renewal ?id
      ?json_response_enabled ?path ?queue_all ?queueing_method
      ?queueing_status_code ?session_duration ?suspended
      ~additional_routes ?timeouts ~host ~name ~new_users_per_minute
      ~total_active_users ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
