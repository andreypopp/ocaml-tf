(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_project_service = {
  id : string prop option; [@option]
  project : string prop option; [@option]
  service : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_project_service) -> ()

let yojson_of_google_project_service =
  (function
   | { id = v_id; project = v_project; service = v_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
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
    : google_project_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_project_service

[@@@deriving.end]

let google_project_service ?id ?project ~service () :
    google_project_service =
  { id; project; service }

type t = {
  disable_dependent_services : bool prop;
  disable_on_destroy : bool prop;
  id : string prop;
  project : string prop;
  service : string prop;
}

let make ?id ?project ~service __id =
  let __type = "google_project_service" in
  let __attrs =
    ({
       disable_dependent_services =
         Prop.computed __type __id "disable_dependent_services";
       disable_on_destroy =
         Prop.computed __type __id "disable_on_destroy";
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
       service = Prop.computed __type __id "service";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_project_service
        (google_project_service ?id ?project ~service ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~service __id =
  let (r : _ Tf_core.resource) = make ?id ?project ~service __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
