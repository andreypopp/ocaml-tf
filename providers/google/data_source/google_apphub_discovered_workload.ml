(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type workload_properties = {
  gcp_project : string prop;
  location : string prop;
  zone : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : workload_properties) -> ()

let yojson_of_workload_properties =
  (function
   | {
       gcp_project = v_gcp_project;
       location = v_location;
       zone = v_zone;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone in
         ("zone", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_gcp_project in
         ("gcp_project", arg) :: bnds
       in
       `Assoc bnds
    : workload_properties -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_workload_properties

[@@@deriving.end]

type workload_reference = { uri : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : workload_reference) -> ()

let yojson_of_workload_reference =
  (function
   | { uri = v_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       `Assoc bnds
    : workload_reference -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_workload_reference

[@@@deriving.end]

type google_apphub_discovered_workload = {
  id : string prop option; [@option]
  location : string prop;
  project : string prop option; [@option]
  workload_uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_apphub_discovered_workload) -> ()

let yojson_of_google_apphub_discovered_workload =
  (function
   | {
       id = v_id;
       location = v_location;
       project = v_project;
       workload_uri = v_workload_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_workload_uri in
         ("workload_uri", arg) :: bnds
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
    : google_apphub_discovered_workload ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_apphub_discovered_workload

[@@@deriving.end]

let google_apphub_discovered_workload ?id ?project ~location
    ~workload_uri () : google_apphub_discovered_workload =
  { id; location; project; workload_uri }

type t = {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  workload_properties : workload_properties list prop;
  workload_reference : workload_reference list prop;
  workload_uri : string prop;
}

let make ?id ?project ~location ~workload_uri __id =
  let __type = "google_apphub_discovered_workload" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       workload_properties =
         Prop.computed __type __id "workload_properties";
       workload_reference =
         Prop.computed __type __id "workload_reference";
       workload_uri = Prop.computed __type __id "workload_uri";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_apphub_discovered_workload
        (google_apphub_discovered_workload ?id ?project ~location
           ~workload_uri ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~location ~workload_uri __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~location ~workload_uri __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
