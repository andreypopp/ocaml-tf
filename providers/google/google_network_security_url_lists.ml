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

type google_network_security_url_lists = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  values : string prop list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_network_security_url_lists) -> ()

let yojson_of_google_network_security_url_lists =
  (function
   | {
       description = v_description;
       id = v_id;
       location = v_location;
       name = v_name;
       project = v_project;
       values = v_values;
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
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
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
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_network_security_url_lists ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_network_security_url_lists

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_network_security_url_lists ?description ?id ?project
    ?timeouts ~location ~name ~values () :
    google_network_security_url_lists =
  { description; id; location; name; project; values; timeouts }

type t = {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  update_time : string prop;
  values : string list prop;
}

let make ?description ?id ?project ?timeouts ~location ~name ~values
    __id =
  let __type = "google_network_security_url_lists" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       update_time = Prop.computed __type __id "update_time";
       values = Prop.computed __type __id "values";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_network_security_url_lists
        (google_network_security_url_lists ?description ?id ?project
           ?timeouts ~location ~name ~values ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?project ?timeouts ~location
    ~name ~values __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?project ?timeouts ~location ~name ~values
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
