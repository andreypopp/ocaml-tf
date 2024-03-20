(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_logging_folder_settings = {
  folder : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_logging_folder_settings) -> ()

let yojson_of_google_logging_folder_settings =
  (function
   | { folder = v_folder; id = v_id } ->
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
         let arg = yojson_of_prop yojson_of_string v_folder in
         ("folder", arg) :: bnds
       in
       `Assoc bnds
    : google_logging_folder_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_logging_folder_settings

[@@@deriving.end]

let google_logging_folder_settings ?id ~folder () :
    google_logging_folder_settings =
  { folder; id }

type t = {
  disable_default_sink : bool prop;
  folder : string prop;
  id : string prop;
  kms_key_name : string prop;
  kms_service_account_id : string prop;
  logging_service_account_id : string prop;
  name : string prop;
  storage_location : string prop;
}

let make ?id ~folder __id =
  let __type = "google_logging_folder_settings" in
  let __attrs =
    ({
       disable_default_sink =
         Prop.computed __type __id "disable_default_sink";
       folder = Prop.computed __type __id "folder";
       id = Prop.computed __type __id "id";
       kms_key_name = Prop.computed __type __id "kms_key_name";
       kms_service_account_id =
         Prop.computed __type __id "kms_service_account_id";
       logging_service_account_id =
         Prop.computed __type __id "logging_service_account_id";
       name = Prop.computed __type __id "name";
       storage_location =
         Prop.computed __type __id "storage_location";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_logging_folder_settings
        (google_logging_folder_settings ?id ~folder ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~folder __id =
  let (r : _ Tf_core.resource) = make ?id ~folder __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
