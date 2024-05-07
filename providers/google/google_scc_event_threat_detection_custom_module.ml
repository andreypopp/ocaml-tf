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

type google_scc_event_threat_detection_custom_module = {
  config : string prop;
  display_name : string prop option; [@option]
  enablement_state : string prop;
  id : string prop option; [@option]
  organization : string prop;
  type_ : string prop; [@key "type"]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : google_scc_event_threat_detection_custom_module) -> ()

let yojson_of_google_scc_event_threat_detection_custom_module =
  (function
   | {
       config = v_config;
       display_name = v_display_name;
       enablement_state = v_enablement_state;
       id = v_id;
       organization = v_organization;
       type_ = v_type_;
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
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_organization in
         ("organization", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_enablement_state
         in
         ("enablement_state", arg) :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_config in
         ("config", arg) :: bnds
       in
       `Assoc bnds
    : google_scc_event_threat_detection_custom_module ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_scc_event_threat_detection_custom_module

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_scc_event_threat_detection_custom_module ?display_name ?id
    ?timeouts ~config ~enablement_state ~organization ~type_ () :
    google_scc_event_threat_detection_custom_module =
  {
    config;
    display_name;
    enablement_state;
    id;
    organization;
    type_;
    timeouts;
  }

type t = {
  tf_name : string;
  config : string prop;
  display_name : string prop;
  enablement_state : string prop;
  id : string prop;
  last_editor : string prop;
  name : string prop;
  organization : string prop;
  type_ : string prop;
  update_time : string prop;
}

let make ?display_name ?id ?timeouts ~config ~enablement_state
    ~organization ~type_ __id =
  let __type = "google_scc_event_threat_detection_custom_module" in
  let __attrs =
    ({
       tf_name = __id;
       config = Prop.computed __type __id "config";
       display_name = Prop.computed __type __id "display_name";
       enablement_state =
         Prop.computed __type __id "enablement_state";
       id = Prop.computed __type __id "id";
       last_editor = Prop.computed __type __id "last_editor";
       name = Prop.computed __type __id "name";
       organization = Prop.computed __type __id "organization";
       type_ = Prop.computed __type __id "type";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_scc_event_threat_detection_custom_module
        (google_scc_event_threat_detection_custom_module
           ?display_name ?id ?timeouts ~config ~enablement_state
           ~organization ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?timeouts ~config
    ~enablement_state ~organization ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?timeouts ~config ~enablement_state
      ~organization ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
