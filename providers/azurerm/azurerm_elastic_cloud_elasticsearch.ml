(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type logs__filtering_tag = {
  action : string prop;  (** action *)
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** logs__filtering_tag *)

type logs = {
  send_activity_logs : bool prop option; [@option]
      (** send_activity_logs *)
  send_azuread_logs : bool prop option; [@option]
      (** send_azuread_logs *)
  send_subscription_logs : bool prop option; [@option]
      (** send_subscription_logs *)
  filtering_tag : logs__filtering_tag list;
}
[@@deriving yojson_of]
(** logs *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_elastic_cloud_elasticsearch = {
  elastic_cloud_email_address : string prop;
      (** elastic_cloud_email_address *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  monitoring_enabled : bool prop option; [@option]
      (** monitoring_enabled *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  logs : logs list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_elastic_cloud_elasticsearch *)

let logs__filtering_tag ~action ~name ~value () : logs__filtering_tag
    =
  { action; name; value }

let logs ?send_activity_logs ?send_azuread_logs
    ?send_subscription_logs ~filtering_tag () : logs =
  {
    send_activity_logs;
    send_azuread_logs;
    send_subscription_logs;
    filtering_tag;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_elastic_cloud_elasticsearch ?id ?monitoring_enabled ?tags
    ?timeouts ~elastic_cloud_email_address ~location ~name
    ~resource_group_name ~sku_name ~logs () :
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

let make ?id ?monitoring_enabled ?tags ?timeouts
    ~elastic_cloud_email_address ~location ~name ~resource_group_name
    ~sku_name ~logs __id =
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
           ?tags ?timeouts ~elastic_cloud_email_address ~location
           ~name ~resource_group_name ~sku_name ~logs ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?monitoring_enabled ?tags ?timeouts
    ~elastic_cloud_email_address ~location ~name ~resource_group_name
    ~sku_name ~logs __id =
  let (r : _ Tf_core.resource) =
    make ?id ?monitoring_enabled ?tags ?timeouts
      ~elastic_cloud_email_address ~location ~name
      ~resource_group_name ~sku_name ~logs __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
