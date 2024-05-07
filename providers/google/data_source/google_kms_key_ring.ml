(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_kms_key_ring = {
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_kms_key_ring) -> ()

let yojson_of_google_kms_key_ring =
  (function
   | {
       id = v_id;
       location = v_location;
       name = v_name;
       project = v_project;
     } ->
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
    : google_kms_key_ring -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_kms_key_ring

[@@@deriving.end]

let google_kms_key_ring ?id ?project ~location ~name () :
    google_kms_key_ring =
  { id; location; name; project }

type t = {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
}

let make ?id ?project ~location ~name __id =
  let __type = "google_kms_key_ring" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_kms_key_ring
        (google_kms_key_ring ?id ?project ~location ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~location ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
