(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_service_account = {
  account_id : string prop;
  id : string prop option; [@option]
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_service_account) -> ()

let yojson_of_google_service_account =
  (function
   | { account_id = v_account_id; id = v_id; project = v_project } ->
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : google_service_account -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_service_account

[@@@deriving.end]

let google_service_account ?id ?project ~account_id () :
    google_service_account =
  { account_id; id; project }

type t = {
  account_id : string prop;
  display_name : string prop;
  email : string prop;
  id : string prop;
  member : string prop;
  name : string prop;
  project : string prop;
  unique_id : string prop;
}

let make ?id ?project ~account_id __id =
  let __type = "google_service_account" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       display_name = Prop.computed __type __id "display_name";
       email = Prop.computed __type __id "email";
       id = Prop.computed __type __id "id";
       member = Prop.computed __type __id "member";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       unique_id = Prop.computed __type __id "unique_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_service_account
        (google_service_account ?id ?project ~account_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~account_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~account_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
