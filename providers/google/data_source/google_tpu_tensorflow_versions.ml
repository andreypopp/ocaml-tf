(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_tpu_tensorflow_versions = {
  id : string prop option; [@option]
  project : string prop option; [@option]
  zone : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_tpu_tensorflow_versions) -> ()

let yojson_of_google_tpu_tensorflow_versions =
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
    : google_tpu_tensorflow_versions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_tpu_tensorflow_versions

[@@@deriving.end]

let google_tpu_tensorflow_versions ?id ?project ?zone () :
    google_tpu_tensorflow_versions =
  { id; project; zone }

type t = {
  id : string prop;
  project : string prop;
  versions : string list prop;
  zone : string prop;
}

let make ?id ?project ?zone __id =
  let __type = "google_tpu_tensorflow_versions" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
       versions = Prop.computed __type __id "versions";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_tpu_tensorflow_versions
        (google_tpu_tensorflow_versions ?id ?project ?zone ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?zone __id =
  let (r : _ Tf_core.resource) = make ?id ?project ?zone __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
