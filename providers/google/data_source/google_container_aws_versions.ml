(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_container_aws_versions = {
  id : string prop option; [@option]
  location : string prop option; [@option]
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_container_aws_versions) -> ()

let yojson_of_google_container_aws_versions =
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
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
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
    : google_container_aws_versions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_container_aws_versions

[@@@deriving.end]

let google_container_aws_versions ?id ?location ?project () :
    google_container_aws_versions =
  { id; location; project }

type t = {
  tf_name : string;
  id : string prop;
  location : string prop;
  project : string prop;
  supported_regions : string list prop;
  valid_versions : string list prop;
}

let make ?id ?location ?project __id =
  let __type = "google_container_aws_versions" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       project = Prop.computed __type __id "project";
       supported_regions =
         Prop.computed __type __id "supported_regions";
       valid_versions = Prop.computed __type __id "valid_versions";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_container_aws_versions
        (google_container_aws_versions ?id ?location ?project ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location ?project __id =
  let (r : _ Tf_core.resource) = make ?id ?location ?project __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
