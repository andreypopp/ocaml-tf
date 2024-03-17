(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_elastic_cloud_elasticsearch__logs__filtering_tag = {
  action : string;  (** action *)
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_elastic_cloud_elasticsearch__logs__filtering_tag *)

type azurerm_elastic_cloud_elasticsearch__logs = {
  send_activity_logs : bool option; [@option]
      (** send_activity_logs *)
  send_azuread_logs : bool option; [@option]
      (** send_azuread_logs *)
  send_subscription_logs : bool option; [@option]
      (** send_subscription_logs *)
  filtering_tag :
    azurerm_elastic_cloud_elasticsearch__logs__filtering_tag list;
}
[@@deriving yojson_of]
(** azurerm_elastic_cloud_elasticsearch__logs *)

type azurerm_elastic_cloud_elasticsearch__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_elastic_cloud_elasticsearch__timeouts *)

type azurerm_elastic_cloud_elasticsearch = {
  elastic_cloud_email_address : string;
      (** elastic_cloud_email_address *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  monitoring_enabled : bool option; [@option]
      (** monitoring_enabled *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  sku_name : string;  (** sku_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  logs : azurerm_elastic_cloud_elasticsearch__logs list;
  timeouts : azurerm_elastic_cloud_elasticsearch__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_elastic_cloud_elasticsearch *)

let azurerm_elastic_cloud_elasticsearch ?id ?monitoring_enabled ?tags
    ?timeouts ~elastic_cloud_email_address ~location ~name
    ~resource_group_name ~sku_name ~logs __resource_id =
  let __resource_type = "azurerm_elastic_cloud_elasticsearch" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_elastic_cloud_elasticsearch __resource);
  ()
