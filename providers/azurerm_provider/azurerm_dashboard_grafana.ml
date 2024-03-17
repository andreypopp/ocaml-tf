(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_dashboard_grafana__azure_monitor_workspace_integrations = {
  resource_id : string;  (** resource_id *)
}
[@@deriving yojson_of]
(** azurerm_dashboard_grafana__azure_monitor_workspace_integrations *)

type azurerm_dashboard_grafana__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_dashboard_grafana__identity *)

type azurerm_dashboard_grafana__smtp = {
  enabled : bool option; [@option]  (** enabled *)
  from_address : string;  (** from_address *)
  from_name : string option; [@option]  (** from_name *)
  host : string;  (** host *)
  password : string;  (** password *)
  start_tls_policy : string;  (** start_tls_policy *)
  user : string;  (** user *)
  verification_skip_enabled : bool option; [@option]
      (** verification_skip_enabled *)
}
[@@deriving yojson_of]
(** azurerm_dashboard_grafana__smtp *)

type azurerm_dashboard_grafana__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_dashboard_grafana__timeouts *)

type azurerm_dashboard_grafana = {
  api_key_enabled : bool option; [@option]  (** api_key_enabled *)
  auto_generated_domain_name_label_scope : string option; [@option]
      (** auto_generated_domain_name_label_scope *)
  deterministic_outbound_ip_enabled : bool option; [@option]
      (** deterministic_outbound_ip_enabled *)
  grafana_major_version : string option; [@option]
      (** grafana_major_version *)
  location : string;  (** location *)
  name : string;  (** name *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  sku : string option; [@option]  (** sku *)
  tags : (string * string) list option; [@option]  (** tags *)
  zone_redundancy_enabled : bool option; [@option]
      (** zone_redundancy_enabled *)
  azure_monitor_workspace_integrations :
    azurerm_dashboard_grafana__azure_monitor_workspace_integrations
    list;
  identity : azurerm_dashboard_grafana__identity list;
  smtp : azurerm_dashboard_grafana__smtp list;
  timeouts : azurerm_dashboard_grafana__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dashboard_grafana *)

let azurerm_dashboard_grafana ?api_key_enabled
    ?auto_generated_domain_name_label_scope
    ?deterministic_outbound_ip_enabled ?grafana_major_version
    ?public_network_access_enabled ?sku ?tags
    ?zone_redundancy_enabled ?timeouts ~location ~name
    ~resource_group_name ~azure_monitor_workspace_integrations
    ~identity ~smtp __resource_id =
  let __resource_type = "azurerm_dashboard_grafana" in
  let __resource =
    {
      api_key_enabled;
      auto_generated_domain_name_label_scope;
      deterministic_outbound_ip_enabled;
      grafana_major_version;
      location;
      name;
      public_network_access_enabled;
      resource_group_name;
      sku;
      tags;
      zone_redundancy_enabled;
      azure_monitor_workspace_integrations;
      identity;
      smtp;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_dashboard_grafana __resource);
  ()
