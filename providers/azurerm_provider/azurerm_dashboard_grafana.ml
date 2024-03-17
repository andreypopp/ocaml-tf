(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_dashboard_grafana__azure_monitor_workspace_integrations = {
  resource_id : string prop;  (** resource_id *)
}
[@@deriving yojson_of]
(** azurerm_dashboard_grafana__azure_monitor_workspace_integrations *)

type azurerm_dashboard_grafana__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_dashboard_grafana__identity *)

type azurerm_dashboard_grafana__smtp = {
  enabled : bool prop option; [@option]  (** enabled *)
  from_address : string prop;  (** from_address *)
  from_name : string prop option; [@option]  (** from_name *)
  host : string prop;  (** host *)
  password : string prop;  (** password *)
  start_tls_policy : string prop;  (** start_tls_policy *)
  user : string prop;  (** user *)
  verification_skip_enabled : bool prop option; [@option]
      (** verification_skip_enabled *)
}
[@@deriving yojson_of]
(** azurerm_dashboard_grafana__smtp *)

type azurerm_dashboard_grafana__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_dashboard_grafana__timeouts *)

type azurerm_dashboard_grafana = {
  api_key_enabled : bool prop option; [@option]
      (** api_key_enabled *)
  auto_generated_domain_name_label_scope : string prop option;
      [@option]
      (** auto_generated_domain_name_label_scope *)
  deterministic_outbound_ip_enabled : bool prop option; [@option]
      (** deterministic_outbound_ip_enabled *)
  grafana_major_version : string prop option; [@option]
      (** grafana_major_version *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku : string prop option; [@option]  (** sku *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zone_redundancy_enabled : bool prop option; [@option]
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
    ?deterministic_outbound_ip_enabled ?grafana_major_version ?id
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
      id;
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
