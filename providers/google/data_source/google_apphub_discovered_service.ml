(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type service_properties = {
  gcp_project : string prop;
  location : string prop;
  zone : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_properties) -> ()

let yojson_of_service_properties =
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
    : service_properties -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_properties

[@@@deriving.end]

type service_reference = { path : string prop; uri : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : service_reference) -> ()

let yojson_of_service_reference =
  (function
   | { path = v_path; uri = v_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       `Assoc bnds
    : service_reference -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_reference

[@@@deriving.end]

type google_apphub_discovered_service = {
  id : string prop option; [@option]
  location : string prop;
  project : string prop option; [@option]
  service_uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_apphub_discovered_service) -> ()

let yojson_of_google_apphub_discovered_service =
  (function
   | {
       id = v_id;
       location = v_location;
       project = v_project;
       service_uri = v_service_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_uri in
         ("service_uri", arg) :: bnds
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
    : google_apphub_discovered_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_apphub_discovered_service

[@@@deriving.end]

let google_apphub_discovered_service ?id ?project ~location
    ~service_uri () : google_apphub_discovered_service =
  { id; location; project; service_uri }

type t = {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  service_properties : service_properties list prop;
  service_reference : service_reference list prop;
  service_uri : string prop;
}

let make ?id ?project ~location ~service_uri __id =
  let __type = "google_apphub_discovered_service" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       service_properties =
         Prop.computed __type __id "service_properties";
       service_reference =
         Prop.computed __type __id "service_reference";
       service_uri = Prop.computed __type __id "service_uri";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_apphub_discovered_service
        (google_apphub_discovered_service ?id ?project ~location
           ~service_uri ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~location ~service_uri __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~location ~service_uri __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
