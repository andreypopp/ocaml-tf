(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type datadog_organization = {
  api_key : string prop;
  application_key : string prop;
  enterprise_app_id : string prop option; [@option]
  linking_auth_code : string prop option; [@option]
  linking_client_id : string prop option; [@option]
  redirect_uri : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : datadog_organization) -> ()

let yojson_of_datadog_organization =
  (function
   | {
       api_key = v_api_key;
       application_key = v_application_key;
       enterprise_app_id = v_enterprise_app_id;
       linking_auth_code = v_linking_auth_code;
       linking_client_id = v_linking_client_id;
       redirect_uri = v_redirect_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_redirect_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redirect_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_linking_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "linking_client_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_linking_auth_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "linking_auth_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enterprise_app_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "enterprise_app_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_application_key
         in
         ("application_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_key in
         ("api_key", arg) :: bnds
       in
       `Assoc bnds
    : datadog_organization -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_datadog_organization

[@@@deriving.end]

type identity = { type_ : string prop [@key "type"] }
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
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
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type user = {
  email : string prop;
  name : string prop;
  phone_number : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : user) -> ()

let yojson_of_user =
  (function
   | {
       email = v_email;
       name = v_name;
       phone_number = v_phone_number;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_phone_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "phone_number", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email in
         ("email", arg) :: bnds
       in
       `Assoc bnds
    : user -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_user

[@@@deriving.end]

type azurerm_datadog_monitor = {
  id : string prop option; [@option]
  location : string prop;
  monitoring_enabled : bool prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string prop) list option; [@option]
  datadog_organization : datadog_organization list;
      [@default []] [@yojson_drop_default ( = )]
  identity : identity list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
  user : user list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_datadog_monitor) -> ()

let yojson_of_azurerm_datadog_monitor =
  (function
   | {
       id = v_id;
       location = v_location;
       monitoring_enabled = v_monitoring_enabled;
       name = v_name;
       resource_group_name = v_resource_group_name;
       sku_name = v_sku_name;
       tags = v_tags;
       datadog_organization = v_datadog_organization;
       identity = v_identity;
       timeouts = v_timeouts;
       user = v_user;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_user then bnds
         else
           let arg = (yojson_of_list yojson_of_user) v_user in
           let bnd = "user", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if [] = v_identity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_identity) v_identity
           in
           let bnd = "identity", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_datadog_organization then bnds
         else
           let arg =
             (yojson_of_list yojson_of_datadog_organization)
               v_datadog_organization
           in
           let bnd = "datadog_organization", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sku_name in
         ("sku_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_monitoring_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "monitoring_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
    : azurerm_datadog_monitor -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_datadog_monitor

[@@@deriving.end]

let datadog_organization ?enterprise_app_id ?linking_auth_code
    ?linking_client_id ?redirect_uri ~api_key ~application_key () :
    datadog_organization =
  {
    api_key;
    application_key;
    enterprise_app_id;
    linking_auth_code;
    linking_client_id;
    redirect_uri;
  }

let identity ~type_ () : identity = { type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let user ?phone_number ~email ~name () : user =
  { email; name; phone_number }

let azurerm_datadog_monitor ?id ?monitoring_enabled ?tags
    ?(identity = []) ?timeouts ~location ~name ~resource_group_name
    ~sku_name ~datadog_organization ~user () :
    azurerm_datadog_monitor =
  {
    id;
    location;
    monitoring_enabled;
    name;
    resource_group_name;
    sku_name;
    tags;
    datadog_organization;
    identity;
    timeouts;
    user;
  }

type t = {
  tf_name : string;
  id : string prop;
  location : string prop;
  marketplace_subscription_status : string prop;
  monitoring_enabled : bool prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?monitoring_enabled ?tags ?(identity = []) ?timeouts
    ~location ~name ~resource_group_name ~sku_name
    ~datadog_organization ~user __id =
  let __type = "azurerm_datadog_monitor" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       marketplace_subscription_status =
         Prop.computed __type __id "marketplace_subscription_status";
       monitoring_enabled =
         Prop.computed __type __id "monitoring_enabled";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_name = Prop.computed __type __id "sku_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_datadog_monitor
        (azurerm_datadog_monitor ?id ?monitoring_enabled ?tags
           ~identity ?timeouts ~location ~name ~resource_group_name
           ~sku_name ~datadog_organization ~user ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?monitoring_enabled ?tags
    ?(identity = []) ?timeouts ~location ~name ~resource_group_name
    ~sku_name ~datadog_organization ~user __id =
  let (r : _ Tf_core.resource) =
    make ?id ?monitoring_enabled ?tags ~identity ?timeouts ~location
      ~name ~resource_group_name ~sku_name ~datadog_organization
      ~user __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
