(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_logging_project_cmek_settings = {
  id : string prop option; [@option]
  kms_key_name : string prop option; [@option]
  project : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_logging_project_cmek_settings) -> ()

let yojson_of_google_logging_project_cmek_settings =
  (function
   | {
       id = v_id;
       kms_key_name = v_kms_key_name;
       project = v_project;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project in
         ("project", arg) :: bnds
       in
       let bnds =
         match v_kms_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_name", arg in
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
    : google_logging_project_cmek_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_logging_project_cmek_settings

[@@@deriving.end]

let google_logging_project_cmek_settings ?id ?kms_key_name ~project
    () : google_logging_project_cmek_settings =
  { id; kms_key_name; project }

type t = {
  tf_name : string;
  id : string prop;
  kms_key_name : string prop;
  kms_key_version_name : string prop;
  name : string prop;
  project : string prop;
  service_account_id : string prop;
}

let make ?id ?kms_key_name ~project __id =
  let __type = "google_logging_project_cmek_settings" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       kms_key_name = Prop.computed __type __id "kms_key_name";
       kms_key_version_name =
         Prop.computed __type __id "kms_key_version_name";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       service_account_id =
         Prop.computed __type __id "service_account_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_logging_project_cmek_settings
        (google_logging_project_cmek_settings ?id ?kms_key_name
           ~project ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?kms_key_name ~project __id =
  let (r : _ Tf_core.resource) =
    make ?id ?kms_key_name ~project __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
