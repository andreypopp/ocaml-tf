(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type logs__filtering_tag = {
  action : string prop;
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logs__filtering_tag) -> ()

let yojson_of_logs__filtering_tag =
  (function
   | { action = v_action; name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : logs__filtering_tag -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logs__filtering_tag

[@@@deriving.end]

type logs = {
  send_activity_logs : bool prop option; [@option]
  send_azuread_logs : bool prop option; [@option]
  send_subscription_logs : bool prop option; [@option]
  filtering_tag : logs__filtering_tag list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logs) -> ()

let yojson_of_logs =
  (function
   | {
       send_activity_logs = v_send_activity_logs;
       send_azuread_logs = v_send_azuread_logs;
       send_subscription_logs = v_send_subscription_logs;
       filtering_tag = v_filtering_tag;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_logs__filtering_tag
             v_filtering_tag
         in
         ("filtering_tag", arg) :: bnds
       in
       let bnds =
         match v_send_subscription_logs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "send_subscription_logs", arg in
             bnd :: bnds
       in
       let bnds =
         match v_send_azuread_logs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "send_azuread_logs", arg in
             bnd :: bnds
       in
       let bnds =
         match v_send_activity_logs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "send_activity_logs", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : logs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logs

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

type azurerm_elastic_cloud_elasticsearch = {
  elastic_cloud_email_address : string prop;
  id : string prop option; [@option]
  location : string prop;
  monitoring_enabled : bool prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string prop) list option; [@option]
  logs : logs list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_elastic_cloud_elasticsearch) -> ()

let yojson_of_azurerm_elastic_cloud_elasticsearch =
  (function
   | {
       elastic_cloud_email_address = v_elastic_cloud_email_address;
       id = v_id;
       location = v_location;
       monitoring_enabled = v_monitoring_enabled;
       name = v_name;
       resource_group_name = v_resource_group_name;
       sku_name = v_sku_name;
       tags = v_tags;
       logs = v_logs;
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
         let arg = yojson_of_list yojson_of_logs v_logs in
         ("logs", arg) :: bnds
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_elastic_cloud_email_address
         in
         ("elastic_cloud_email_address", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_elastic_cloud_elasticsearch ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_elastic_cloud_elasticsearch

[@@@deriving.end]

let logs__filtering_tag ~action ~name ~value () : logs__filtering_tag
    =
  { action; name; value }

let logs ?send_activity_logs ?send_azuread_logs
    ?send_subscription_logs ?(filtering_tag = []) () : logs =
  {
    send_activity_logs;
    send_azuread_logs;
    send_subscription_logs;
    filtering_tag;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_elastic_cloud_elasticsearch ?id ?monitoring_enabled ?tags
    ?(logs = []) ?timeouts ~elastic_cloud_email_address ~location
    ~name ~resource_group_name ~sku_name () :
    azurerm_elastic_cloud_elasticsearch =
  {
    elastic_cloud_email_address;
    id;
    location;
    monitoring_enabled;
    name;
    resource_group_name;
    sku_name;
    tags;
    logs;
    timeouts;
  }

type t = {
  elastic_cloud_deployment_id : string prop;
  elastic_cloud_email_address : string prop;
  elastic_cloud_sso_default_url : string prop;
  elastic_cloud_user_id : string prop;
  elasticsearch_service_url : string prop;
  id : string prop;
  kibana_service_url : string prop;
  kibana_sso_uri : string prop;
  location : string prop;
  monitoring_enabled : bool prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?monitoring_enabled ?tags ?(logs = []) ?timeouts
    ~elastic_cloud_email_address ~location ~name ~resource_group_name
    ~sku_name __id =
  let __type = "azurerm_elastic_cloud_elasticsearch" in
  let __attrs =
    ({
       elastic_cloud_deployment_id =
         Prop.computed __type __id "elastic_cloud_deployment_id";
       elastic_cloud_email_address =
         Prop.computed __type __id "elastic_cloud_email_address";
       elastic_cloud_sso_default_url =
         Prop.computed __type __id "elastic_cloud_sso_default_url";
       elastic_cloud_user_id =
         Prop.computed __type __id "elastic_cloud_user_id";
       elasticsearch_service_url =
         Prop.computed __type __id "elasticsearch_service_url";
       id = Prop.computed __type __id "id";
       kibana_service_url =
         Prop.computed __type __id "kibana_service_url";
       kibana_sso_uri = Prop.computed __type __id "kibana_sso_uri";
       location = Prop.computed __type __id "location";
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
      yojson_of_azurerm_elastic_cloud_elasticsearch
        (azurerm_elastic_cloud_elasticsearch ?id ?monitoring_enabled
           ?tags ~logs ?timeouts ~elastic_cloud_email_address
           ~location ~name ~resource_group_name ~sku_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?monitoring_enabled ?tags ?(logs = [])
    ?timeouts ~elastic_cloud_email_address ~location ~name
    ~resource_group_name ~sku_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?monitoring_enabled ?tags ~logs ?timeouts
      ~elastic_cloud_email_address ~location ~name
      ~resource_group_name ~sku_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
