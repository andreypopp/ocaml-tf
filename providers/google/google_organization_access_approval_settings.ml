(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type enrolled_services = {
  cloud_product : string prop;
  enrollment_level : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : enrolled_services) -> ()

let yojson_of_enrolled_services =
  (function
   | {
       cloud_product = v_cloud_product;
       enrollment_level = v_enrollment_level;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enrollment_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "enrollment_level", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cloud_product in
         ("cloud_product", arg) :: bnds
       in
       `Assoc bnds
    : enrolled_services -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_enrolled_services

[@@@deriving.end]

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

type google_organization_access_approval_settings = {
  active_key_version : string prop option; [@option]
  id : string prop option; [@option]
  notification_emails : string prop list option; [@option]
  organization_id : string prop;
  enrolled_services : enrolled_services list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_organization_access_approval_settings) -> ()

let yojson_of_google_organization_access_approval_settings =
  (function
   | {
       active_key_version = v_active_key_version;
       id = v_id;
       notification_emails = v_notification_emails;
       organization_id = v_organization_id;
       enrolled_services = v_enrolled_services;
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
         let arg =
           yojson_of_list yojson_of_enrolled_services
             v_enrolled_services
         in
         ("enrolled_services", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_organization_id
         in
         ("organization_id", arg) :: bnds
       in
       let bnds =
         match v_notification_emails with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "notification_emails", arg in
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
         match v_active_key_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "active_key_version", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_organization_access_approval_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_organization_access_approval_settings

[@@@deriving.end]

let enrolled_services ?enrollment_level ~cloud_product () :
    enrolled_services =
  { cloud_product; enrollment_level }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_organization_access_approval_settings ?active_key_version
    ?id ?notification_emails ?timeouts ~organization_id
    ~enrolled_services () :
    google_organization_access_approval_settings =
  {
    active_key_version;
    id;
    notification_emails;
    organization_id;
    enrolled_services;
    timeouts;
  }

type t = {
  active_key_version : string prop;
  ancestor_has_active_key_version : bool prop;
  enrolled_ancestor : bool prop;
  id : string prop;
  invalid_key_version : bool prop;
  name : string prop;
  notification_emails : string list prop;
  organization_id : string prop;
}

let make ?active_key_version ?id ?notification_emails ?timeouts
    ~organization_id ~enrolled_services __id =
  let __type = "google_organization_access_approval_settings" in
  let __attrs =
    ({
       active_key_version =
         Prop.computed __type __id "active_key_version";
       ancestor_has_active_key_version =
         Prop.computed __type __id "ancestor_has_active_key_version";
       enrolled_ancestor =
         Prop.computed __type __id "enrolled_ancestor";
       id = Prop.computed __type __id "id";
       invalid_key_version =
         Prop.computed __type __id "invalid_key_version";
       name = Prop.computed __type __id "name";
       notification_emails =
         Prop.computed __type __id "notification_emails";
       organization_id = Prop.computed __type __id "organization_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_organization_access_approval_settings
        (google_organization_access_approval_settings
           ?active_key_version ?id ?notification_emails ?timeouts
           ~organization_id ~enrolled_services ());
    attrs = __attrs;
  }

let register ?tf_module ?active_key_version ?id ?notification_emails
    ?timeouts ~organization_id ~enrolled_services __id =
  let (r : _ Tf_core.resource) =
    make ?active_key_version ?id ?notification_emails ?timeouts
      ~organization_id ~enrolled_services __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
