(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_logging_organization_settings = {
  id : string prop option; [@option]
  organization : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_logging_organization_settings) -> ()

let yojson_of_google_logging_organization_settings =
  (function
   | { id = v_id; organization = v_organization } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_organization in
         ("organization", arg) :: bnds
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
    : google_logging_organization_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_logging_organization_settings

[@@@deriving.end]

let google_logging_organization_settings ?id ~organization () :
    google_logging_organization_settings =
  { id; organization }

type t = {
  tf_name : string;
  disable_default_sink : bool prop;
  id : string prop;
  kms_key_name : string prop;
  kms_service_account_id : string prop;
  logging_service_account_id : string prop;
  name : string prop;
  organization : string prop;
  storage_location : string prop;
}

let make ?id ~organization __id =
  let __type = "google_logging_organization_settings" in
  let __attrs =
    ({
       tf_name = __id;
       disable_default_sink =
         Prop.computed __type __id "disable_default_sink";
       id = Prop.computed __type __id "id";
       kms_key_name = Prop.computed __type __id "kms_key_name";
       kms_service_account_id =
         Prop.computed __type __id "kms_service_account_id";
       logging_service_account_id =
         Prop.computed __type __id "logging_service_account_id";
       name = Prop.computed __type __id "name";
       organization = Prop.computed __type __id "organization";
       storage_location =
         Prop.computed __type __id "storage_location";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_logging_organization_settings
        (google_logging_organization_settings ?id ~organization ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~organization __id =
  let (r : _ Tf_core.resource) = make ?id ~organization __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
