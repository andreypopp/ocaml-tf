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

type google_folder_access_approval_settings = {
  active_key_version : string prop option; [@option]
  folder_id : string prop;
  id : string prop option; [@option]
  notification_emails : string prop list option; [@option]
  enrolled_services : enrolled_services list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_folder_access_approval_settings) -> ()

let yojson_of_google_folder_access_approval_settings =
  (function
   | {
       active_key_version = v_active_key_version;
       folder_id = v_folder_id;
       id = v_id;
       notification_emails = v_notification_emails;
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
         if Stdlib.( = ) [] v_enrolled_services then bnds
         else
           let arg =
             (yojson_of_list yojson_of_enrolled_services)
               v_enrolled_services
           in
           let bnd = "enrolled_services", arg in
           bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_folder_id in
         ("folder_id", arg) :: bnds
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
    : google_folder_access_approval_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_folder_access_approval_settings

[@@@deriving.end]

let enrolled_services ?enrollment_level ~cloud_product () :
    enrolled_services =
  { cloud_product; enrollment_level }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_folder_access_approval_settings ?active_key_version ?id
    ?notification_emails ?timeouts ~folder_id ~enrolled_services () :
    google_folder_access_approval_settings =
  {
    active_key_version;
    folder_id;
    id;
    notification_emails;
    enrolled_services;
    timeouts;
  }

type t = {
  tf_name : string;
  active_key_version : string prop;
  ancestor_has_active_key_version : bool prop;
  enrolled_ancestor : bool prop;
  folder_id : string prop;
  id : string prop;
  invalid_key_version : bool prop;
  name : string prop;
  notification_emails : string list prop;
}

let make ?active_key_version ?id ?notification_emails ?timeouts
    ~folder_id ~enrolled_services __id =
  let __type = "google_folder_access_approval_settings" in
  let __attrs =
    ({
       tf_name = __id;
       active_key_version =
         Prop.computed __type __id "active_key_version";
       ancestor_has_active_key_version =
         Prop.computed __type __id "ancestor_has_active_key_version";
       enrolled_ancestor =
         Prop.computed __type __id "enrolled_ancestor";
       folder_id = Prop.computed __type __id "folder_id";
       id = Prop.computed __type __id "id";
       invalid_key_version =
         Prop.computed __type __id "invalid_key_version";
       name = Prop.computed __type __id "name";
       notification_emails =
         Prop.computed __type __id "notification_emails";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_folder_access_approval_settings
        (google_folder_access_approval_settings ?active_key_version
           ?id ?notification_emails ?timeouts ~folder_id
           ~enrolled_services ());
    attrs = __attrs;
  }

let register ?tf_module ?active_key_version ?id ?notification_emails
    ?timeouts ~folder_id ~enrolled_services __id =
  let (r : _ Tf_core.resource) =
    make ?active_key_version ?id ?notification_emails ?timeouts
      ~folder_id ~enrolled_services __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
