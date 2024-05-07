(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type google_network_security_gateway_security_policy_rule = {
  application_matcher : string prop option; [@option]
  basic_profile : string prop;
  description : string prop option; [@option]
  enabled : bool prop;
  gateway_security_policy : string prop;
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  priority : float prop;
  project : string prop option; [@option]
  session_matcher : string prop;
  tls_inspection_enabled : bool prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : google_network_security_gateway_security_policy_rule) -> ()

let yojson_of_google_network_security_gateway_security_policy_rule =
  (function
   | {
       application_matcher = v_application_matcher;
       basic_profile = v_basic_profile;
       description = v_description;
       enabled = v_enabled;
       gateway_security_policy = v_gateway_security_policy;
       id = v_id;
       location = v_location;
       name = v_name;
       priority = v_priority;
       project = v_project;
       session_matcher = v_session_matcher;
       tls_inspection_enabled = v_tls_inspection_enabled;
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
         match v_tls_inspection_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "tls_inspection_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_session_matcher
         in
         ("session_matcher", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_gateway_security_policy
         in
         ("gateway_security_policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_basic_profile in
         ("basic_profile", arg) :: bnds
       in
       let bnds =
         match v_application_matcher with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "application_matcher", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_network_security_gateway_security_policy_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_google_network_security_gateway_security_policy_rule

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_network_security_gateway_security_policy_rule
    ?application_matcher ?description ?id ?project
    ?tls_inspection_enabled ?timeouts ~basic_profile ~enabled
    ~gateway_security_policy ~location ~name ~priority
    ~session_matcher () :
    google_network_security_gateway_security_policy_rule =
  {
    application_matcher;
    basic_profile;
    description;
    enabled;
    gateway_security_policy;
    id;
    location;
    name;
    priority;
    project;
    session_matcher;
    tls_inspection_enabled;
    timeouts;
  }

type t = {
  tf_name : string;
  application_matcher : string prop;
  basic_profile : string prop;
  create_time : string prop;
  description : string prop;
  enabled : bool prop;
  gateway_security_policy : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  priority : float prop;
  project : string prop;
  self_link : string prop;
  session_matcher : string prop;
  tls_inspection_enabled : bool prop;
  update_time : string prop;
}

let make ?application_matcher ?description ?id ?project
    ?tls_inspection_enabled ?timeouts ~basic_profile ~enabled
    ~gateway_security_policy ~location ~name ~priority
    ~session_matcher __id =
  let __type =
    "google_network_security_gateway_security_policy_rule"
  in
  let __attrs =
    ({
       tf_name = __id;
       application_matcher =
         Prop.computed __type __id "application_matcher";
       basic_profile = Prop.computed __type __id "basic_profile";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       enabled = Prop.computed __type __id "enabled";
       gateway_security_policy =
         Prop.computed __type __id "gateway_security_policy";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       priority = Prop.computed __type __id "priority";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
       session_matcher = Prop.computed __type __id "session_matcher";
       tls_inspection_enabled =
         Prop.computed __type __id "tls_inspection_enabled";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_network_security_gateway_security_policy_rule
        (google_network_security_gateway_security_policy_rule
           ?application_matcher ?description ?id ?project
           ?tls_inspection_enabled ?timeouts ~basic_profile ~enabled
           ~gateway_security_policy ~location ~name ~priority
           ~session_matcher ());
    attrs = __attrs;
  }

let register ?tf_module ?application_matcher ?description ?id
    ?project ?tls_inspection_enabled ?timeouts ~basic_profile
    ~enabled ~gateway_security_policy ~location ~name ~priority
    ~session_matcher __id =
  let (r : _ Tf_core.resource) =
    make ?application_matcher ?description ?id ?project
      ?tls_inspection_enabled ?timeouts ~basic_profile ~enabled
      ~gateway_security_policy ~location ~name ~priority
      ~session_matcher __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
