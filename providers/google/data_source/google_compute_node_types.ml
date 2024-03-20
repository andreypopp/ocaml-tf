(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_compute_node_types = {
  id : string prop option; [@option]
  project : string prop option; [@option]
  zone : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_node_types) -> ()

let yojson_of_google_compute_node_types =
  (function
   | { id = v_id; project = v_project; zone = v_zone } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone", arg in
             bnd :: bnds
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
    : google_compute_node_types -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_node_types

[@@@deriving.end]

let google_compute_node_types ?id ?project ?zone () :
    google_compute_node_types =
  { id; project; zone }

type t = {
  id : string prop;
  names : string list prop;
  project : string prop;
  zone : string prop;
}

let make ?id ?project ?zone __id =
  let __type = "google_compute_node_types" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       names = Prop.computed __type __id "names";
       project = Prop.computed __type __id "project";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_node_types
        (google_compute_node_types ?id ?project ?zone ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?zone __id =
  let (r : _ Tf_core.resource) = make ?id ?project ?zone __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
