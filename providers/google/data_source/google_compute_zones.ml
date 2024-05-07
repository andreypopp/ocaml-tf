(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_compute_zones = {
  id : string prop option; [@option]
  project : string prop option; [@option]
  region : string prop option; [@option]
  status : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_zones) -> ()

let yojson_of_google_compute_zones =
  (function
   | {
       id = v_id;
       project = v_project;
       region = v_region;
       status = v_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
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
    : google_compute_zones -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_zones

[@@@deriving.end]

let google_compute_zones ?id ?project ?region ?status () :
    google_compute_zones =
  { id; project; region; status }

type t = {
  tf_name : string;
  id : string prop;
  names : string list prop;
  project : string prop;
  region : string prop;
  status : string prop;
}

let make ?id ?project ?region ?status __id =
  let __type = "google_compute_zones" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       names = Prop.computed __type __id "names";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_zones
        (google_compute_zones ?id ?project ?region ?status ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ?status __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ?status __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
