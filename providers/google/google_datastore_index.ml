(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type properties = { direction : string prop; name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : properties) -> ()

let yojson_of_properties =
  (function
   | { direction = v_direction; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_direction in
         ("direction", arg) :: bnds
       in
       `Assoc bnds
    : properties -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_properties

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type google_datastore_index = {
  ancestor : string prop option; [@option]
  id : string prop option; [@option]
  kind : string prop;
  project : string prop option; [@option]
  properties : properties list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_datastore_index) -> ()

let yojson_of_google_datastore_index =
  (function
   | {
       ancestor = v_ancestor;
       id = v_id;
       kind = v_kind;
       project = v_project;
       properties = v_properties;
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
           yojson_of_list yojson_of_properties v_properties
         in
         ("properties", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_kind in
         ("kind", arg) :: bnds
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
         match v_ancestor with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ancestor", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_datastore_index -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_datastore_index

[@@@deriving.end]

let properties ~direction ~name () : properties = { direction; name }
let timeouts ?create ?delete () : timeouts = { create; delete }

let google_datastore_index ?ancestor ?id ?project ?(properties = [])
    ?timeouts ~kind () : google_datastore_index =
  { ancestor; id; kind; project; properties; timeouts }

type t = {
  tf_name : string;
  ancestor : string prop;
  id : string prop;
  index_id : string prop;
  kind : string prop;
  project : string prop;
}

let make ?ancestor ?id ?project ?(properties = []) ?timeouts ~kind
    __id =
  let __type = "google_datastore_index" in
  let __attrs =
    ({
       tf_name = __id;
       ancestor = Prop.computed __type __id "ancestor";
       id = Prop.computed __type __id "id";
       index_id = Prop.computed __type __id "index_id";
       kind = Prop.computed __type __id "kind";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_datastore_index
        (google_datastore_index ?ancestor ?id ?project ~properties
           ?timeouts ~kind ());
    attrs = __attrs;
  }

let register ?tf_module ?ancestor ?id ?project ?(properties = [])
    ?timeouts ~kind __id =
  let (r : _ Tf_core.resource) =
    make ?ancestor ?id ?project ~properties ?timeouts ~kind __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
