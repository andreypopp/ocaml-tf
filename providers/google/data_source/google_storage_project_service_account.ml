(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_storage_project_service_account = {
  id : string prop option; [@option]
  project : string prop option; [@option]
  user_project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_storage_project_service_account) -> ()

let yojson_of_google_storage_project_service_account =
  (function
   | {
       id = v_id;
       project = v_project;
       user_project = v_user_project;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_project", arg in
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
    : google_storage_project_service_account ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_storage_project_service_account

[@@@deriving.end]

let google_storage_project_service_account ?id ?project ?user_project
    () : google_storage_project_service_account =
  { id; project; user_project }

type t = {
  tf_name : string;
  email_address : string prop;
  id : string prop;
  member : string prop;
  project : string prop;
  user_project : string prop;
}

let make ?id ?project ?user_project __id =
  let __type = "google_storage_project_service_account" in
  let __attrs =
    ({
       tf_name = __id;
       email_address = Prop.computed __type __id "email_address";
       id = Prop.computed __type __id "id";
       member = Prop.computed __type __id "member";
       project = Prop.computed __type __id "project";
       user_project = Prop.computed __type __id "user_project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_storage_project_service_account
        (google_storage_project_service_account ?id ?project
           ?user_project ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?user_project __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?user_project __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
