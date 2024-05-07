(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_logging_organization_settings = {
  disable_default_sink : bool prop option; [@option]
  id : string prop option; [@option]
  kms_key_name : string prop option; [@option]
  organization : string prop;
  storage_location : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_logging_organization_settings) -> ()

let yojson_of_google_logging_organization_settings =
  (function
   | {
       disable_default_sink = v_disable_default_sink;
       id = v_id;
       kms_key_name = v_kms_key_name;
       organization = v_organization;
       storage_location = v_storage_location;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_storage_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_location", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_organization in
         ("organization", arg) :: bnds
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
       let bnds =
         match v_disable_default_sink with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_default_sink", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_logging_organization_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_logging_organization_settings

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_logging_organization_settings ?disable_default_sink ?id
    ?kms_key_name ?storage_location ?timeouts ~organization () :
    google_logging_organization_settings =
  {
    disable_default_sink;
    id;
    kms_key_name;
    organization;
    storage_location;
    timeouts;
  }

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

let make ?disable_default_sink ?id ?kms_key_name ?storage_location
    ?timeouts ~organization __id =
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
        (google_logging_organization_settings ?disable_default_sink
           ?id ?kms_key_name ?storage_location ?timeouts
           ~organization ());
    attrs = __attrs;
  }

let register ?tf_module ?disable_default_sink ?id ?kms_key_name
    ?storage_location ?timeouts ~organization __id =
  let (r : _ Tf_core.resource) =
    make ?disable_default_sink ?id ?kms_key_name ?storage_location
      ?timeouts ~organization __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
