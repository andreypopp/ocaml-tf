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

type version_configs = { version : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : version_configs) -> ()

let yojson_of_version_configs =
  (function
   | { version = v_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       `Assoc bnds
    : version_configs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_version_configs

[@@@deriving.end]

type google_dialogflow_cx_environment = {
  description : string prop option; [@option]
  display_name : string prop;
  id : string prop option; [@option]
  parent : string prop option; [@option]
  timeouts : timeouts option;
  version_configs : version_configs list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dialogflow_cx_environment) -> ()

let yojson_of_google_dialogflow_cx_environment =
  (function
   | {
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       parent = v_parent;
       timeouts = v_timeouts;
       version_configs = v_version_configs;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_version_configs then bnds
         else
           let arg =
             (yojson_of_list yojson_of_version_configs)
               v_version_configs
           in
           let bnd = "version_configs", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
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
    : google_dialogflow_cx_environment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dialogflow_cx_environment

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let version_configs ~version () : version_configs = { version }

let google_dialogflow_cx_environment ?description ?id ?parent
    ?timeouts ~display_name ~version_configs () :
    google_dialogflow_cx_environment =
  {
    description;
    display_name;
    id;
    parent;
    timeouts;
    version_configs;
  }

type t = {
  tf_name : string;
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
  update_time : string prop;
}

let make ?description ?id ?parent ?timeouts ~display_name
    ~version_configs __id =
  let __type = "google_dialogflow_cx_environment" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
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
      yojson_of_google_dialogflow_cx_environment
        (google_dialogflow_cx_environment ?description ?id ?parent
           ?timeouts ~display_name ~version_configs ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?parent ?timeouts
    ~display_name ~version_configs __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?parent ?timeouts ~display_name
      ~version_configs __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
