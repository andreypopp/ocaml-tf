(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type locations = {
  display_name : string prop;
  labels : string prop Tf_core.assoc;
  location_id : string prop;
  metadata : string prop Tf_core.assoc;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : locations) -> ()

let yojson_of_locations =
  (function
   | {
       display_name = v_display_name;
       labels = v_labels;
       location_id = v_location_id;
       metadata = v_metadata;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_metadata
         in
         ("metadata", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location_id in
         ("location_id", arg) :: bnds
       in
       let bnds =
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_labels
         in
         ("labels", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       `Assoc bnds
    : locations -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_locations

[@@@deriving.end]

type google_alloydb_locations = {
  id : string prop option; [@option]
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_alloydb_locations) -> ()

let yojson_of_google_alloydb_locations =
  (function
   | { id = v_id; project = v_project } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : google_alloydb_locations -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_alloydb_locations

[@@@deriving.end]

let google_alloydb_locations ?id ?project () :
    google_alloydb_locations =
  { id; project }

type t = {
  tf_name : string;
  id : string prop;
  locations : locations list prop;
  project : string prop;
}

let make ?id ?project __id =
  let __type = "google_alloydb_locations" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       locations = Prop.computed __type __id "locations";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_alloydb_locations
        (google_alloydb_locations ?id ?project ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project __id =
  let (r : _ Tf_core.resource) = make ?id ?project __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
