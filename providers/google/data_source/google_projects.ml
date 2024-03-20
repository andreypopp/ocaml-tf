(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type projects = {
  create_time : string prop;
  labels : (string * string prop) list;
  lifecycle_state : string prop;
  name : string prop;
  number : string prop;
  parent : (string * string prop) list;
  project_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : projects) -> ()

let yojson_of_projects =
  (function
   | {
       create_time = v_create_time;
       labels = v_labels;
       lifecycle_state = v_lifecycle_state;
       name = v_name;
       number = v_number;
       parent = v_parent;
       project_id = v_project_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_id in
         ("project_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_parent
         in
         ("parent", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_number in
         ("number", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_lifecycle_state
         in
         ("lifecycle_state", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_labels
         in
         ("labels", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_create_time in
         ("create_time", arg) :: bnds
       in
       `Assoc bnds
    : projects -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_projects

[@@@deriving.end]

type google_projects = {
  filter : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_projects) -> ()

let yojson_of_google_projects =
  (function
   | { filter = v_filter; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : google_projects -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_projects

[@@@deriving.end]

let google_projects ?id ~filter () : google_projects = { filter; id }

type t = {
  filter : string prop;
  id : string prop;
  projects : projects list prop;
}

let make ?id ~filter __id =
  let __type = "google_projects" in
  let __attrs =
    ({
       filter = Prop.computed __type __id "filter";
       id = Prop.computed __type __id "id";
       projects = Prop.computed __type __id "projects";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_google_projects (google_projects ?id ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~filter __id =
  let (r : _ Tf_core.resource) = make ?id ~filter __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
