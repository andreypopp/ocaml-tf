(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_v4_authentication = {
  access_key_id : string prop;
  origin_region : string prop;
  secret_access_key_version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_v4_authentication) -> ()

let yojson_of_aws_v4_authentication =
  (function
   | {
       access_key_id = v_access_key_id;
       origin_region = v_origin_region;
       secret_access_key_version = v_secret_access_key_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_secret_access_key_version
         in
         ("secret_access_key_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_origin_region in
         ("origin_region", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_access_key_id in
         ("access_key_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_v4_authentication -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_v4_authentication

[@@@deriving.end]

type origin_override_action__header_action__request_headers_to_add = {
  header_name : string prop;
  header_value : string prop;
  replace : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       origin_override_action__header_action__request_headers_to_add) ->
  ()

let yojson_of_origin_override_action__header_action__request_headers_to_add
    =
  (function
   | {
       header_name = v_header_name;
       header_value = v_header_value;
       replace = v_replace;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_replace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "replace", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header_value in
         ("header_value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_header_name in
         ("header_name", arg) :: bnds
       in
       `Assoc bnds
    : origin_override_action__header_action__request_headers_to_add ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_origin_override_action__header_action__request_headers_to_add

[@@@deriving.end]

type origin_override_action__header_action = {
  request_headers_to_add :
    origin_override_action__header_action__request_headers_to_add
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : origin_override_action__header_action) -> ()

let yojson_of_origin_override_action__header_action =
  (function
   | { request_headers_to_add = v_request_headers_to_add } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_origin_override_action__header_action__request_headers_to_add
             v_request_headers_to_add
         in
         ("request_headers_to_add", arg) :: bnds
       in
       `Assoc bnds
    : origin_override_action__header_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_origin_override_action__header_action

[@@@deriving.end]

type origin_override_action__url_rewrite = {
  host_rewrite : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : origin_override_action__url_rewrite) -> ()

let yojson_of_origin_override_action__url_rewrite =
  (function
   | { host_rewrite = v_host_rewrite } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_host_rewrite with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_rewrite", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : origin_override_action__url_rewrite ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_origin_override_action__url_rewrite

[@@@deriving.end]

type origin_override_action = {
  header_action : origin_override_action__header_action list;
  url_rewrite : origin_override_action__url_rewrite list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : origin_override_action) -> ()

let yojson_of_origin_override_action =
  (function
   | { header_action = v_header_action; url_rewrite = v_url_rewrite }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_origin_override_action__url_rewrite
             v_url_rewrite
         in
         ("url_rewrite", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_origin_override_action__header_action
             v_header_action
         in
         ("header_action", arg) :: bnds
       in
       `Assoc bnds
    : origin_override_action -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_origin_override_action

[@@@deriving.end]

type origin_redirect = {
  redirect_conditions : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : origin_redirect) -> ()

let yojson_of_origin_redirect =
  (function
   | { redirect_conditions = v_redirect_conditions } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_redirect_conditions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "redirect_conditions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : origin_redirect -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_origin_redirect

[@@@deriving.end]

type timeout = {
  connect_timeout : string prop option; [@option]
  max_attempts_timeout : string prop option; [@option]
  read_timeout : string prop option; [@option]
  response_timeout : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeout) -> ()

let yojson_of_timeout =
  (function
   | {
       connect_timeout = v_connect_timeout;
       max_attempts_timeout = v_max_attempts_timeout;
       read_timeout = v_read_timeout;
       response_timeout = v_response_timeout;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_response_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "response_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_attempts_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "max_attempts_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connect_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connect_timeout", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeout -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeout

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
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

type google_network_services_edge_cache_origin = {
  description : string prop option; [@option]
  failover_origin : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  max_attempts : float prop option; [@option]
  name : string prop;
  origin_address : string prop;
  port : float prop option; [@option]
  project : string prop option; [@option]
  protocol : string prop option; [@option]
  retry_conditions : string prop list option; [@option]
  aws_v4_authentication : aws_v4_authentication list;
  origin_override_action : origin_override_action list;
  origin_redirect : origin_redirect list;
  timeout : timeout list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_network_services_edge_cache_origin) -> ()

let yojson_of_google_network_services_edge_cache_origin =
  (function
   | {
       description = v_description;
       failover_origin = v_failover_origin;
       id = v_id;
       labels = v_labels;
       max_attempts = v_max_attempts;
       name = v_name;
       origin_address = v_origin_address;
       port = v_port;
       project = v_project;
       protocol = v_protocol;
       retry_conditions = v_retry_conditions;
       aws_v4_authentication = v_aws_v4_authentication;
       origin_override_action = v_origin_override_action;
       origin_redirect = v_origin_redirect;
       timeout = v_timeout;
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
         let arg = yojson_of_list yojson_of_timeout v_timeout in
         ("timeout", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_origin_redirect v_origin_redirect
         in
         ("origin_redirect", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_origin_override_action
             v_origin_override_action
         in
         ("origin_override_action", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_aws_v4_authentication
             v_aws_v4_authentication
         in
         ("aws_v4_authentication", arg) :: bnds
       in
       let bnds =
         match v_retry_conditions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "retry_conditions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_origin_address
         in
         ("origin_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_max_attempts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_attempts", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
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
             let bnd = "labels", arg in
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
         match v_failover_origin with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "failover_origin", arg in
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
    : google_network_services_edge_cache_origin ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_network_services_edge_cache_origin

[@@@deriving.end]

let aws_v4_authentication ~access_key_id ~origin_region
    ~secret_access_key_version () : aws_v4_authentication =
  { access_key_id; origin_region; secret_access_key_version }

let origin_override_action__header_action__request_headers_to_add
    ?replace ~header_name ~header_value () :
    origin_override_action__header_action__request_headers_to_add =
  { header_name; header_value; replace }

let origin_override_action__header_action
    ?(request_headers_to_add = []) () :
    origin_override_action__header_action =
  { request_headers_to_add }

let origin_override_action__url_rewrite ?host_rewrite () :
    origin_override_action__url_rewrite =
  { host_rewrite }

let origin_override_action ?(header_action = []) ?(url_rewrite = [])
    () : origin_override_action =
  { header_action; url_rewrite }

let origin_redirect ?redirect_conditions () : origin_redirect =
  { redirect_conditions }

let timeout ?connect_timeout ?max_attempts_timeout ?read_timeout
    ?response_timeout () : timeout =
  {
    connect_timeout;
    max_attempts_timeout;
    read_timeout;
    response_timeout;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_network_services_edge_cache_origin ?description
    ?failover_origin ?id ?labels ?max_attempts ?port ?project
    ?protocol ?retry_conditions ?(aws_v4_authentication = [])
    ?(origin_override_action = []) ?(origin_redirect = [])
    ?(timeout = []) ?timeouts ~name ~origin_address () :
    google_network_services_edge_cache_origin =
  {
    description;
    failover_origin;
    id;
    labels;
    max_attempts;
    name;
    origin_address;
    port;
    project;
    protocol;
    retry_conditions;
    aws_v4_authentication;
    origin_override_action;
    origin_redirect;
    timeout;
    timeouts;
  }

type t = {
  description : string prop;
  effective_labels : (string * string) list prop;
  failover_origin : string prop;
  id : string prop;
  labels : (string * string) list prop;
  max_attempts : float prop;
  name : string prop;
  origin_address : string prop;
  port : float prop;
  project : string prop;
  protocol : string prop;
  retry_conditions : string list prop;
  terraform_labels : (string * string) list prop;
}

let make ?description ?failover_origin ?id ?labels ?max_attempts
    ?port ?project ?protocol ?retry_conditions
    ?(aws_v4_authentication = []) ?(origin_override_action = [])
    ?(origin_redirect = []) ?(timeout = []) ?timeouts ~name
    ~origin_address __id =
  let __type = "google_network_services_edge_cache_origin" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       failover_origin = Prop.computed __type __id "failover_origin";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       max_attempts = Prop.computed __type __id "max_attempts";
       name = Prop.computed __type __id "name";
       origin_address = Prop.computed __type __id "origin_address";
       port = Prop.computed __type __id "port";
       project = Prop.computed __type __id "project";
       protocol = Prop.computed __type __id "protocol";
       retry_conditions =
         Prop.computed __type __id "retry_conditions";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_network_services_edge_cache_origin
        (google_network_services_edge_cache_origin ?description
           ?failover_origin ?id ?labels ?max_attempts ?port ?project
           ?protocol ?retry_conditions ~aws_v4_authentication
           ~origin_override_action ~origin_redirect ~timeout
           ?timeouts ~name ~origin_address ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?failover_origin ?id ?labels
    ?max_attempts ?port ?project ?protocol ?retry_conditions
    ?(aws_v4_authentication = []) ?(origin_override_action = [])
    ?(origin_redirect = []) ?(timeout = []) ?timeouts ~name
    ~origin_address __id =
  let (r : _ Tf_core.resource) =
    make ?description ?failover_origin ?id ?labels ?max_attempts
      ?port ?project ?protocol ?retry_conditions
      ~aws_v4_authentication ~origin_override_action ~origin_redirect
      ~timeout ?timeouts ~name ~origin_address __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
