(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type features = { type_ : string prop [@key "type"] }
[@@deriving_inline yojson_of]

let _ = fun (_ : features) -> ()

let yojson_of_features =
  (function
   | { type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : features -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_features

[@@@deriving.end]

type generic_web_service = {
  password : string prop option; [@option]
  request_headers : (string * string prop) list option; [@option]
  uri : string prop;
  username : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : generic_web_service) -> ()

let yojson_of_generic_web_service =
  (function
   | {
       password = v_password;
       request_headers = v_request_headers;
       uri = v_uri;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "username", arg in
             bnd :: bnds
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
         match v_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : generic_web_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_generic_web_service

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

type google_dialogflow_fulfillment = {
  display_name : string prop;
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  project : string prop option; [@option]
  features : features list;
      [@default []] [@yojson_drop_default ( = )]
  generic_web_service : generic_web_service list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dialogflow_fulfillment) -> ()

let yojson_of_google_dialogflow_fulfillment =
  (function
   | {
       display_name = v_display_name;
       enabled = v_enabled;
       id = v_id;
       project = v_project;
       features = v_features;
       generic_web_service = v_generic_web_service;
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
         if [] = v_generic_web_service then bnds
         else
           let arg =
             (yojson_of_list yojson_of_generic_web_service)
               v_generic_web_service
           in
           let bnd = "generic_web_service", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_features then bnds
         else
           let arg =
             (yojson_of_list yojson_of_features) v_features
           in
           let bnd = "features", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       `Assoc bnds
    : google_dialogflow_fulfillment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dialogflow_fulfillment

[@@@deriving.end]

let features ~type_ () : features = { type_ }

let generic_web_service ?password ?request_headers ?username ~uri ()
    : generic_web_service =
  { password; request_headers; uri; username }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_dialogflow_fulfillment ?enabled ?id ?project
    ?(features = []) ?(generic_web_service = []) ?timeouts
    ~display_name () : google_dialogflow_fulfillment =
  {
    display_name;
    enabled;
    id;
    project;
    features;
    generic_web_service;
    timeouts;
  }

type t = {
  tf_name : string;
  display_name : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  project : string prop;
}

let make ?enabled ?id ?project ?(features = [])
    ?(generic_web_service = []) ?timeouts ~display_name __id =
  let __type = "google_dialogflow_fulfillment" in
  let __attrs =
    ({
       tf_name = __id;
       display_name = Prop.computed __type __id "display_name";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dialogflow_fulfillment
        (google_dialogflow_fulfillment ?enabled ?id ?project
           ~features ~generic_web_service ?timeouts ~display_name ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?project ?(features = [])
    ?(generic_web_service = []) ?timeouts ~display_name __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?project ~features ~generic_web_service
      ?timeouts ~display_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
