(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type key_rings = { id : string prop; name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : key_rings) -> ()

let yojson_of_key_rings =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : key_rings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_key_rings

[@@@deriving.end]

type google_kms_key_rings = {
  filter : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_kms_key_rings) -> ()

let yojson_of_google_kms_key_rings =
  (function
   | {
       filter = v_filter;
       id = v_id;
       location = v_location;
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
         match v_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filter", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_kms_key_rings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_kms_key_rings

[@@@deriving.end]

let google_kms_key_rings ?filter ?id ?project ~location () :
    google_kms_key_rings =
  { filter; id; location; project }

type t = {
  tf_name : string;
  filter : string prop;
  id : string prop;
  key_rings : key_rings list prop;
  location : string prop;
  project : string prop;
}

let make ?filter ?id ?project ~location __id =
  let __type = "google_kms_key_rings" in
  let __attrs =
    ({
       tf_name = __id;
       filter = Prop.computed __type __id "filter";
       id = Prop.computed __type __id "id";
       key_rings = Prop.computed __type __id "key_rings";
       location = Prop.computed __type __id "location";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_kms_key_rings
        (google_kms_key_rings ?filter ?id ?project ~location ());
    attrs = __attrs;
  }

let register ?tf_module ?filter ?id ?project ~location __id =
  let (r : _ Tf_core.resource) =
    make ?filter ?id ?project ~location __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
