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

type google_scc_mute_config = {
  description : string prop option; [@option]
  filter : string prop;
  id : string prop option; [@option]
  mute_config_id : string prop;
  parent : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_scc_mute_config) -> ()

let yojson_of_google_scc_mute_config =
  (function
   | {
       description = v_description;
       filter = v_filter;
       id = v_id;
       mute_config_id = v_mute_config_id;
       parent = v_parent;
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
         let arg = yojson_of_prop yojson_of_string v_parent in
         ("parent", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_mute_config_id
         in
         ("mute_config_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_filter in
         ("filter", arg) :: bnds
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
    : google_scc_mute_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_scc_mute_config

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_scc_mute_config ?description ?id ?timeouts ~filter
    ~mute_config_id ~parent () : google_scc_mute_config =
  { description; filter; id; mute_config_id; parent; timeouts }

type t = {
  create_time : string prop;
  description : string prop;
  filter : string prop;
  id : string prop;
  most_recent_editor : string prop;
  mute_config_id : string prop;
  name : string prop;
  parent : string prop;
  update_time : string prop;
}

let make ?description ?id ?timeouts ~filter ~mute_config_id ~parent
    __id =
  let __type = "google_scc_mute_config" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       filter = Prop.computed __type __id "filter";
       id = Prop.computed __type __id "id";
       most_recent_editor =
         Prop.computed __type __id "most_recent_editor";
       mute_config_id = Prop.computed __type __id "mute_config_id";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_scc_mute_config
        (google_scc_mute_config ?description ?id ?timeouts ~filter
           ~mute_config_id ~parent ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts ~filter
    ~mute_config_id ~parent __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~filter ~mute_config_id ~parent
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
