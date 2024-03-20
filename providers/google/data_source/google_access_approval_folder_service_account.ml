(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_access_approval_folder_service_account = {
  folder_id : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_access_approval_folder_service_account) -> ()

let yojson_of_google_access_approval_folder_service_account =
  (function
   | { folder_id = v_folder_id; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_folder_id in
         ("folder_id", arg) :: bnds
       in
       `Assoc bnds
    : google_access_approval_folder_service_account ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_access_approval_folder_service_account

[@@@deriving.end]

let google_access_approval_folder_service_account ?id ~folder_id () :
    google_access_approval_folder_service_account =
  { folder_id; id }

type t = {
  account_email : string prop;
  folder_id : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ~folder_id __id =
  let __type = "google_access_approval_folder_service_account" in
  let __attrs =
    ({
       account_email = Prop.computed __type __id "account_email";
       folder_id = Prop.computed __type __id "folder_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_access_approval_folder_service_account
        (google_access_approval_folder_service_account ?id ~folder_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~folder_id __id =
  let (r : _ Tf_core.resource) = make ?id ~folder_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
