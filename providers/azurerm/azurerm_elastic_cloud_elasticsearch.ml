(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_elastic_cloud_elasticsearch__logs__filtering_tag = {
  action : string prop;  (** action *)
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_elastic_cloud_elasticsearch__logs__filtering_tag *)

type azurerm_elastic_cloud_elasticsearch__logs = {
  send_activity_logs : bool prop option; [@option]
      (** send_activity_logs *)
  send_azuread_logs : bool prop option; [@option]
      (** send_azuread_logs *)
  send_subscription_logs : bool prop option; [@option]
      (** send_subscription_logs *)
  filtering_tag :
    azurerm_elastic_cloud_elasticsearch__logs__filtering_tag list;
}
[@@deriving yojson_of]
(** azurerm_elastic_cloud_elasticsearch__logs *)

type azurerm_elastic_cloud_elasticsearch__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_elastic_cloud_elasticsearch__timeouts *)

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
  logs : azurerm_elastic_cloud_elasticsearch__logs list;
  timeouts : azurerm_elastic_cloud_elasticsearch__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_elastic_cloud_elasticsearch *)

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

let azurerm_elastic_cloud_elasticsearch ?id ?monitoring_enabled ?tags
    ?timeouts ~elastic_cloud_email_address ~location ~name
    ~resource_group_name ~sku_name ~logs __resource_id =
  let __resource_type = "azurerm_elastic_cloud_elasticsearch" in
  let __resource =
    ({
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
      : azurerm_elastic_cloud_elasticsearch)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_elastic_cloud_elasticsearch __resource);
  let __resource_attributes =
    ({
       elastic_cloud_deployment_id =
         Prop.computed __resource_type __resource_id
           "elastic_cloud_deployment_id";
       elastic_cloud_email_address =
         Prop.computed __resource_type __resource_id
           "elastic_cloud_email_address";
       elastic_cloud_sso_default_url =
         Prop.computed __resource_type __resource_id
           "elastic_cloud_sso_default_url";
       elastic_cloud_user_id =
         Prop.computed __resource_type __resource_id
           "elastic_cloud_user_id";
       elasticsearch_service_url =
         Prop.computed __resource_type __resource_id
           "elasticsearch_service_url";
       id = Prop.computed __resource_type __resource_id "id";
       kibana_service_url =
         Prop.computed __resource_type __resource_id
           "kibana_service_url";
       kibana_sso_uri =
         Prop.computed __resource_type __resource_id "kibana_sso_uri";
       location =
         Prop.computed __resource_type __resource_id "location";
       monitoring_enabled =
         Prop.computed __resource_type __resource_id
           "monitoring_enabled";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       sku_name =
         Prop.computed __resource_type __resource_id "sku_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
