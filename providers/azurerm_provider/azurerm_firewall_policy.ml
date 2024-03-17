(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_firewall_policy__dns = {
  proxy_enabled : bool option; [@option]  (** proxy_enabled *)
  servers : string list option; [@option]  (** servers *)
}
[@@deriving yojson_of]
(** azurerm_firewall_policy__dns *)

type azurerm_firewall_policy__explicit_proxy = {
  enable_pac_file : bool option; [@option]  (** enable_pac_file *)
  enabled : bool option; [@option]  (** enabled *)
  http_port : float option; [@option]  (** http_port *)
  https_port : float option; [@option]  (** https_port *)
  pac_file : string option; [@option]  (** pac_file *)
  pac_file_port : float option; [@option]  (** pac_file_port *)
}
[@@deriving yojson_of]
(** azurerm_firewall_policy__explicit_proxy *)

type azurerm_firewall_policy__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_firewall_policy__identity *)

type azurerm_firewall_policy__insights__log_analytics_workspace = {
  firewall_location : string;  (** firewall_location *)
  id : string;  (** id *)
}
[@@deriving yojson_of]
(** azurerm_firewall_policy__insights__log_analytics_workspace *)

type azurerm_firewall_policy__insights = {
  default_log_analytics_workspace_id : string;
      (** default_log_analytics_workspace_id *)
  enabled : bool;  (** enabled *)
  retention_in_days : float option; [@option]
      (** retention_in_days *)
  log_analytics_workspace :
    azurerm_firewall_policy__insights__log_analytics_workspace list;
}
[@@deriving yojson_of]
(** azurerm_firewall_policy__insights *)

type azurerm_firewall_policy__intrusion_detection__signature_overrides = {
  id : string option; [@option]  (** id *)
  state : string option; [@option]  (** state *)
}
[@@deriving yojson_of]
(** azurerm_firewall_policy__intrusion_detection__signature_overrides *)

type azurerm_firewall_policy__intrusion_detection__traffic_bypass = {
  description : string option; [@option]  (** description *)
  destination_addresses : string list option; [@option]
      (** destination_addresses *)
  destination_ip_groups : string list option; [@option]
      (** destination_ip_groups *)
  destination_ports : string list option; [@option]
      (** destination_ports *)
  name : string;  (** name *)
  protocol : string;  (** protocol *)
  source_addresses : string list option; [@option]
      (** source_addresses *)
  source_ip_groups : string list option; [@option]
      (** source_ip_groups *)
}
[@@deriving yojson_of]
(** azurerm_firewall_policy__intrusion_detection__traffic_bypass *)

type azurerm_firewall_policy__intrusion_detection = {
  mode : string option; [@option]  (** mode *)
  private_ranges : string list option; [@option]
      (** private_ranges *)
  signature_overrides :
    azurerm_firewall_policy__intrusion_detection__signature_overrides
    list;
  traffic_bypass :
    azurerm_firewall_policy__intrusion_detection__traffic_bypass list;
}
[@@deriving yojson_of]
(** azurerm_firewall_policy__intrusion_detection *)

type azurerm_firewall_policy__threat_intelligence_allowlist = {
  fqdns : string list option; [@option]  (** fqdns *)
  ip_addresses : string list option; [@option]  (** ip_addresses *)
}
[@@deriving yojson_of]
(** azurerm_firewall_policy__threat_intelligence_allowlist *)

type azurerm_firewall_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_firewall_policy__timeouts *)

type azurerm_firewall_policy__tls_certificate = {
  key_vault_secret_id : string;  (** key_vault_secret_id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_firewall_policy__tls_certificate *)

type azurerm_firewall_policy = {
  auto_learn_private_ranges_enabled : bool option; [@option]
      (** auto_learn_private_ranges_enabled *)
  base_policy_id : string option; [@option]  (** base_policy_id *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  private_ip_ranges : string list option; [@option]
      (** private_ip_ranges *)
  resource_group_name : string;  (** resource_group_name *)
  sku : string option; [@option]  (** sku *)
  sql_redirect_allowed : bool option; [@option]
      (** sql_redirect_allowed *)
  tags : (string * string) list option; [@option]  (** tags *)
  threat_intelligence_mode : string option; [@option]
      (** threat_intelligence_mode *)
  dns : azurerm_firewall_policy__dns list;
  explicit_proxy : azurerm_firewall_policy__explicit_proxy list;
  identity : azurerm_firewall_policy__identity list;
  insights : azurerm_firewall_policy__insights list;
  intrusion_detection :
    azurerm_firewall_policy__intrusion_detection list;
  threat_intelligence_allowlist :
    azurerm_firewall_policy__threat_intelligence_allowlist list;
  timeouts : azurerm_firewall_policy__timeouts option;
  tls_certificate : azurerm_firewall_policy__tls_certificate list;
}
[@@deriving yojson_of]
(** azurerm_firewall_policy *)

let azurerm_firewall_policy ?auto_learn_private_ranges_enabled
    ?base_policy_id ?id ?private_ip_ranges ?sku ?sql_redirect_allowed
    ?tags ?threat_intelligence_mode ?timeouts ~location ~name
    ~resource_group_name ~dns ~explicit_proxy ~identity ~insights
    ~intrusion_detection ~threat_intelligence_allowlist
    ~tls_certificate __resource_id =
  let __resource_type = "azurerm_firewall_policy" in
  let __resource =
    {
      auto_learn_private_ranges_enabled;
      base_policy_id;
      id;
      location;
      name;
      private_ip_ranges;
      resource_group_name;
      sku;
      sql_redirect_allowed;
      tags;
      threat_intelligence_mode;
      dns;
      explicit_proxy;
      identity;
      insights;
      intrusion_detection;
      threat_intelligence_allowlist;
      timeouts;
      tls_certificate;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_firewall_policy __resource);
  ()
