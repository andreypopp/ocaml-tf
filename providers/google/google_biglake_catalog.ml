(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type google_biglake_catalog = {
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_biglake_catalog) -> ()

let yojson_of_google_biglake_catalog =
  (function
   | {
       id = v_id;
       location = v_location;
       name = v_name;
       project = v_project;
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
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
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
       `Assoc bnds
    : google_biglake_catalog -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_biglake_catalog

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_biglake_catalog ?id ?project ?timeouts ~location ~name ()
    : google_biglake_catalog =
  { id; location; name; project; timeouts }

type t = {
  tf_name : string;
  create_time : string prop;
  delete_time : string prop;
  expire_time : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  update_time : string prop;
}

let make ?id ?project ?timeouts ~location ~name __id =
  let __type = "google_biglake_catalog" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       delete_time = Prop.computed __type __id "delete_time";
       expire_time = Prop.computed __type __id "expire_time";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_biglake_catalog
        (google_biglake_catalog ?id ?project ?timeouts ~location
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?timeouts ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?timeouts ~location ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
