(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type principal_info__service_account = { email : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : principal_info__service_account) -> ()

let yojson_of_principal_info__service_account =
  (function
   | { email = v_email } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email in
         ("email", arg) :: bnds
       in
       `Assoc bnds
    : principal_info__service_account ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_principal_info__service_account

[@@@deriving.end]

type principal_info = {
  service_account : principal_info__service_account list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : principal_info) -> ()

let yojson_of_principal_info =
  (function
   | { service_account = v_service_account } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_service_account then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_principal_info__service_account)
               v_service_account
           in
           let bnd = "service_account", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : principal_info -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_principal_info

[@@@deriving.end]

type google_beyondcorp_app_connector = {
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_beyondcorp_app_connector) -> ()

let yojson_of_google_beyondcorp_app_connector =
  (function
   | {
       id = v_id;
       name = v_name;
       project = v_project;
       region = v_region;
     } ->
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : google_beyondcorp_app_connector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_beyondcorp_app_connector

[@@@deriving.end]

let google_beyondcorp_app_connector ?id ?project ?region ~name () :
    google_beyondcorp_app_connector =
  { id; name; project; region }

type t = {
  tf_name : string;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  principal_info : principal_info list prop;
  project : string prop;
  region : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?id ?project ?region ~name __id =
  let __type = "google_beyondcorp_app_connector" in
  let __attrs =
    ({
       tf_name = __id;
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       principal_info = Prop.computed __type __id "principal_info";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       state = Prop.computed __type __id "state";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_beyondcorp_app_connector
        (google_beyondcorp_app_connector ?id ?project ?region ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
