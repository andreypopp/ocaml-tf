(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_storage_transfer_project_service_account = {
  id : string prop option; [@option]
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : google_storage_transfer_project_service_account) -> ()

let yojson_of_google_storage_transfer_project_service_account =
  (function
   | { id = v_id; project = v_project } ->
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_storage_transfer_project_service_account ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_storage_transfer_project_service_account

[@@@deriving.end]

let google_storage_transfer_project_service_account ?id ?project () :
    google_storage_transfer_project_service_account =
  { id; project }

type t = {
  email : string prop;
  id : string prop;
  member : string prop;
  project : string prop;
  subject_id : string prop;
}

let make ?id ?project __id =
  let __type = "google_storage_transfer_project_service_account" in
  let __attrs =
    ({
       email = Prop.computed __type __id "email";
       id = Prop.computed __type __id "id";
       member = Prop.computed __type __id "member";
       project = Prop.computed __type __id "project";
       subject_id = Prop.computed __type __id "subject_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_storage_transfer_project_service_account
        (google_storage_transfer_project_service_account ?id ?project
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project __id =
  let (r : _ Tf_core.resource) = make ?id ?project __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
