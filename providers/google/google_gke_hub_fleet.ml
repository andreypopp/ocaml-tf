(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type default_cluster_config__binary_authorization_config__policy_bindings = {
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       default_cluster_config__binary_authorization_config__policy_bindings) ->
  ()

let yojson_of_default_cluster_config__binary_authorization_config__policy_bindings
    =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_cluster_config__binary_authorization_config__policy_bindings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_default_cluster_config__binary_authorization_config__policy_bindings

[@@@deriving.end]

type default_cluster_config__binary_authorization_config = {
  evaluation_mode : string prop option; [@option]
  policy_bindings :
    default_cluster_config__binary_authorization_config__policy_bindings
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : default_cluster_config__binary_authorization_config) -> ()

let yojson_of_default_cluster_config__binary_authorization_config =
  (function
   | {
       evaluation_mode = v_evaluation_mode;
       policy_bindings = v_policy_bindings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_cluster_config__binary_authorization_config__policy_bindings
             v_policy_bindings
         in
         ("policy_bindings", arg) :: bnds
       in
       let bnds =
         match v_evaluation_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "evaluation_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : default_cluster_config__binary_authorization_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_cluster_config__binary_authorization_config

[@@@deriving.end]

type default_cluster_config__security_posture_config = {
  mode : string prop option; [@option]
  vulnerability_mode : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : default_cluster_config__security_posture_config) -> ()

let yojson_of_default_cluster_config__security_posture_config =
  (function
   | { mode = v_mode; vulnerability_mode = v_vulnerability_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vulnerability_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vulnerability_mode", arg in
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
       `Assoc bnds
    : default_cluster_config__security_posture_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_cluster_config__security_posture_config

[@@@deriving.end]

type default_cluster_config = {
  binary_authorization_config :
    default_cluster_config__binary_authorization_config list;
  security_posture_config :
    default_cluster_config__security_posture_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : default_cluster_config) -> ()

let yojson_of_default_cluster_config =
  (function
   | {
       binary_authorization_config = v_binary_authorization_config;
       security_posture_config = v_security_posture_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_cluster_config__security_posture_config
             v_security_posture_config
         in
         ("security_posture_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_default_cluster_config__binary_authorization_config
             v_binary_authorization_config
         in
         ("binary_authorization_config", arg) :: bnds
       in
       `Assoc bnds
    : default_cluster_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_default_cluster_config

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

type state = { code : string prop } [@@deriving_inline yojson_of]

let _ = fun (_ : state) -> ()

let yojson_of_state =
  (function
   | { code = v_code } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_code in
         ("code", arg) :: bnds
       in
       `Assoc bnds
    : state -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_state

[@@@deriving.end]

type google_gke_hub_fleet = {
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  project : string prop option; [@option]
  default_cluster_config : default_cluster_config list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_gke_hub_fleet) -> ()

let yojson_of_google_gke_hub_fleet =
  (function
   | {
       display_name = v_display_name;
       id = v_id;
       project = v_project;
       default_cluster_config = v_default_cluster_config;
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
           yojson_of_list yojson_of_default_cluster_config
             v_default_cluster_config
         in
         ("default_cluster_config", arg) :: bnds
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_gke_hub_fleet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_gke_hub_fleet

[@@@deriving.end]

let default_cluster_config__binary_authorization_config__policy_bindings
    ?name () :
    default_cluster_config__binary_authorization_config__policy_bindings
    =
  { name }

let default_cluster_config__binary_authorization_config
    ?evaluation_mode ~policy_bindings () :
    default_cluster_config__binary_authorization_config =
  { evaluation_mode; policy_bindings }

let default_cluster_config__security_posture_config ?mode
    ?vulnerability_mode () :
    default_cluster_config__security_posture_config =
  { mode; vulnerability_mode }

let default_cluster_config ~binary_authorization_config
    ~security_posture_config () : default_cluster_config =
  { binary_authorization_config; security_posture_config }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_gke_hub_fleet ?display_name ?id ?project ?timeouts
    ~default_cluster_config () : google_gke_hub_fleet =
  { display_name; id; project; default_cluster_config; timeouts }

type t = {
  create_time : string prop;
  delete_time : string prop;
  display_name : string prop;
  id : string prop;
  project : string prop;
  state : state list prop;
  uid : string prop;
  update_time : string prop;
}

let make ?display_name ?id ?project ?timeouts ~default_cluster_config
    __id =
  let __type = "google_gke_hub_fleet" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       delete_time = Prop.computed __type __id "delete_time";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
       state = Prop.computed __type __id "state";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_gke_hub_fleet
        (google_gke_hub_fleet ?display_name ?id ?project ?timeouts
           ~default_cluster_config ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?project ?timeouts
    ~default_cluster_config __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?project ?timeouts ~default_cluster_config
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
