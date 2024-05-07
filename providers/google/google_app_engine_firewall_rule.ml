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

type google_app_engine_firewall_rule = {
  action : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  priority : float prop option; [@option]
  project : string prop option; [@option]
  source_range : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_app_engine_firewall_rule) -> ()

let yojson_of_google_app_engine_firewall_rule =
  (function
   | {
       action = v_action;
       description = v_description;
       id = v_id;
       priority = v_priority;
       project = v_project;
       source_range = v_source_range;
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
         let arg = yojson_of_prop yojson_of_string v_source_range in
         ("source_range", arg) :: bnds
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
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : google_app_engine_firewall_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_app_engine_firewall_rule

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_app_engine_firewall_rule ?description ?id ?priority
    ?project ?timeouts ~action ~source_range () :
    google_app_engine_firewall_rule =
  {
    action;
    description;
    id;
    priority;
    project;
    source_range;
    timeouts;
  }

type t = {
  tf_name : string;
  action : string prop;
  description : string prop;
  id : string prop;
  priority : float prop;
  project : string prop;
  source_range : string prop;
}

let make ?description ?id ?priority ?project ?timeouts ~action
    ~source_range __id =
  let __type = "google_app_engine_firewall_rule" in
  let __attrs =
    ({
       tf_name = __id;
       action = Prop.computed __type __id "action";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       priority = Prop.computed __type __id "priority";
       project = Prop.computed __type __id "project";
       source_range = Prop.computed __type __id "source_range";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_app_engine_firewall_rule
        (google_app_engine_firewall_rule ?description ?id ?priority
           ?project ?timeouts ~action ~source_range ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?priority ?project ?timeouts
    ~action ~source_range __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?priority ?project ?timeouts ~action
      ~source_range __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
