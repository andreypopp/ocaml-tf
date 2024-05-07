(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_access_approval_project_service_account = {
  id : string prop option; [@option]
  project_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : google_access_approval_project_service_account) -> ()

let yojson_of_google_access_approval_project_service_account =
  (function
   | { id = v_id; project_id = v_project_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_id in
         ("project_id", arg) :: bnds
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
    : google_access_approval_project_service_account ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_access_approval_project_service_account

[@@@deriving.end]

let google_access_approval_project_service_account ?id ~project_id ()
    : google_access_approval_project_service_account =
  { id; project_id }

type t = {
  tf_name : string;
  account_email : string prop;
  id : string prop;
  name : string prop;
  project_id : string prop;
}

let make ?id ~project_id __id =
  let __type = "google_access_approval_project_service_account" in
  let __attrs =
    ({
       tf_name = __id;
       account_email = Prop.computed __type __id "account_email";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project_id = Prop.computed __type __id "project_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_access_approval_project_service_account
        (google_access_approval_project_service_account ?id
           ~project_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~project_id __id =
  let (r : _ Tf_core.resource) = make ?id ~project_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
