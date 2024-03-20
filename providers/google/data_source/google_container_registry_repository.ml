(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_container_registry_repository = {
  id : string prop option; [@option]
  project : string prop option; [@option]
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_container_registry_repository) -> ()

let yojson_of_google_container_registry_repository =
  (function
   | { id = v_id; project = v_project; region = v_region } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : google_container_registry_repository ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_container_registry_repository

[@@@deriving.end]

let google_container_registry_repository ?id ?project ?region () :
    google_container_registry_repository =
  { id; project; region }

type t = {
  id : string prop;
  project : string prop;
  region : string prop;
  repository_url : string prop;
}

let make ?id ?project ?region __id =
  let __type = "google_container_registry_repository" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       repository_url = Prop.computed __type __id "repository_url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_container_registry_repository
        (google_container_registry_repository ?id ?project ?region ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region __id =
  let (r : _ Tf_core.resource) = make ?id ?project ?region __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
