(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_datastream_static_ips = {
  id : string prop option; [@option]
  location : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_datastream_static_ips) -> ()

let yojson_of_google_datastream_static_ips =
  (function
   | { id = v_id; location = v_location; project = v_project } ->
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
    : google_datastream_static_ips ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_datastream_static_ips

[@@@deriving.end]

let google_datastream_static_ips ?id ?project ~location () :
    google_datastream_static_ips =
  { id; location; project }

type t = {
  id : string prop;
  location : string prop;
  project : string prop;
  static_ips : string list prop;
}

let make ?id ?project ~location __id =
  let __type = "google_datastream_static_ips" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       project = Prop.computed __type __id "project";
       static_ips = Prop.computed __type __id "static_ips";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_datastream_static_ips
        (google_datastream_static_ips ?id ?project ~location ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~location __id =
  let (r : _ Tf_core.resource) = make ?id ?project ~location __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
