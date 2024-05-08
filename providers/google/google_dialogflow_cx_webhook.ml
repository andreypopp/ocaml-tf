(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type generic_web_service = {
  allowed_ca_certs : string prop list option; [@option]
  request_headers : (string * string prop) list option; [@option]
  uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : generic_web_service) -> ()

let yojson_of_generic_web_service =
  (function
   | {
       allowed_ca_certs = v_allowed_ca_certs;
       request_headers = v_request_headers;
       uri = v_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         match v_request_headers with
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
             let bnd = "request_headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_ca_certs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_ca_certs", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : generic_web_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_generic_web_service

[@@@deriving.end]

type service_directory__generic_web_service = {
  allowed_ca_certs : string prop list option; [@option]
  request_headers : (string * string prop) list option; [@option]
  uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_directory__generic_web_service) -> ()

let yojson_of_service_directory__generic_web_service =
  (function
   | {
       allowed_ca_certs = v_allowed_ca_certs;
       request_headers = v_request_headers;
       uri = v_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         match v_request_headers with
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
             let bnd = "request_headers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_ca_certs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_ca_certs", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : service_directory__generic_web_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_directory__generic_web_service

[@@@deriving.end]

type service_directory = {
  service : string prop;
  generic_web_service : service_directory__generic_web_service list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_directory) -> ()

let yojson_of_service_directory =
  (function
   | {
       service = v_service;
       generic_web_service = v_generic_web_service;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_generic_web_service then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_directory__generic_web_service)
               v_generic_web_service
           in
           let bnd = "generic_web_service", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       `Assoc bnds
    : service_directory -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_directory

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

type google_dialogflow_cx_webhook = {
  disabled : bool prop option; [@option]
  display_name : string prop;
  enable_spell_correction : bool prop option; [@option]
  enable_stackdriver_logging : bool prop option; [@option]
  id : string prop option; [@option]
  parent : string prop option; [@option]
  security_settings : string prop option; [@option]
  timeout : string prop option; [@option]
  generic_web_service : generic_web_service list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  service_directory : service_directory list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dialogflow_cx_webhook) -> ()

let yojson_of_google_dialogflow_cx_webhook =
  (function
   | {
       disabled = v_disabled;
       display_name = v_display_name;
       enable_spell_correction = v_enable_spell_correction;
       enable_stackdriver_logging = v_enable_stackdriver_logging;
       id = v_id;
       parent = v_parent;
       security_settings = v_security_settings;
       timeout = v_timeout;
       generic_web_service = v_generic_web_service;
       service_directory = v_service_directory;
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
         if Stdlib.( = ) [] v_service_directory then bnds
         else
           let arg =
             (yojson_of_list yojson_of_service_directory)
               v_service_directory
           in
           let bnd = "service_directory", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_generic_web_service then bnds
         else
           let arg =
             (yojson_of_list yojson_of_generic_web_service)
               v_generic_web_service
           in
           let bnd = "generic_web_service", arg in
           bnd :: bnds
       in
       let bnds =
         match v_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_settings with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "security_settings", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parent", arg in
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
         match v_enable_stackdriver_logging with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_stackdriver_logging", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_spell_correction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_spell_correction", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         match v_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_dialogflow_cx_webhook ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dialogflow_cx_webhook

[@@@deriving.end]

let generic_web_service ?allowed_ca_certs ?request_headers ~uri () :
    generic_web_service =
  { allowed_ca_certs; request_headers; uri }

let service_directory__generic_web_service ?allowed_ca_certs
    ?request_headers ~uri () : service_directory__generic_web_service
    =
  { allowed_ca_certs; request_headers; uri }

let service_directory ~service ~generic_web_service () :
    service_directory =
  { service; generic_web_service }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_dialogflow_cx_webhook ?disabled ?enable_spell_correction
    ?enable_stackdriver_logging ?id ?parent ?security_settings
    ?timeout ?(generic_web_service = []) ?(service_directory = [])
    ?timeouts ~display_name () : google_dialogflow_cx_webhook =
  {
    disabled;
    display_name;
    enable_spell_correction;
    enable_stackdriver_logging;
    id;
    parent;
    security_settings;
    timeout;
    generic_web_service;
    service_directory;
    timeouts;
  }

type t = {
  tf_name : string;
  disabled : bool prop;
  display_name : string prop;
  enable_spell_correction : bool prop;
  enable_stackdriver_logging : bool prop;
  id : string prop;
  name : string prop;
  parent : string prop;
  security_settings : string prop;
  start_flow : string prop;
  timeout : string prop;
}

let make ?disabled ?enable_spell_correction
    ?enable_stackdriver_logging ?id ?parent ?security_settings
    ?timeout ?(generic_web_service = []) ?(service_directory = [])
    ?timeouts ~display_name __id =
  let __type = "google_dialogflow_cx_webhook" in
  let __attrs =
    ({
       tf_name = __id;
       disabled = Prop.computed __type __id "disabled";
       display_name = Prop.computed __type __id "display_name";
       enable_spell_correction =
         Prop.computed __type __id "enable_spell_correction";
       enable_stackdriver_logging =
         Prop.computed __type __id "enable_stackdriver_logging";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       security_settings =
         Prop.computed __type __id "security_settings";
       start_flow = Prop.computed __type __id "start_flow";
       timeout = Prop.computed __type __id "timeout";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dialogflow_cx_webhook
        (google_dialogflow_cx_webhook ?disabled
           ?enable_spell_correction ?enable_stackdriver_logging ?id
           ?parent ?security_settings ?timeout ~generic_web_service
           ~service_directory ?timeouts ~display_name ());
    attrs = __attrs;
  }

let register ?tf_module ?disabled ?enable_spell_correction
    ?enable_stackdriver_logging ?id ?parent ?security_settings
    ?timeout ?(generic_web_service = []) ?(service_directory = [])
    ?timeouts ~display_name __id =
  let (r : _ Tf_core.resource) =
    make ?disabled ?enable_spell_correction
      ?enable_stackdriver_logging ?id ?parent ?security_settings
      ?timeout ~generic_web_service ~service_directory ?timeouts
      ~display_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
