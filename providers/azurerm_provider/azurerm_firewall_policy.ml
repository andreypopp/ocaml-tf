(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_firewall_policy__dns = {
  proxy_enabled : bool prop option; [@option]  (** proxy_enabled *)
  servers : string prop list option; [@option]  (** servers *)
}
[@@deriving yojson_of]
(** azurerm_firewall_policy__dns *)

type azurerm_firewall_policy__explicit_proxy = {
  enable_pac_file : bool prop option; [@option]
      (** enable_pac_file *)
  enabled : bool prop option; [@option]  (** enabled *)
  http_port : float prop option; [@option]  (** http_port *)
  https_port : float prop option; [@option]  (** https_port *)
  pac_file : string prop option; [@option]  (** pac_file *)
  pac_file_port : float prop option; [@option]  (** pac_file_port *)
}
[@@deriving yojson_of]
(** azurerm_firewall_policy__explicit_proxy *)

type azurerm_firewall_policy__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_firewall_policy__identity *)

type azurerm_firewall_policy__insights__log_analytics_workspace = {
  firewall_location : string prop;  (** firewall_location *)
  id : string prop;  (** id *)
}
[@@deriving yojson_of]
(** azurerm_firewall_policy__insights__log_analytics_workspace *)

type azurerm_firewall_policy__insights = {
  default_log_analytics_workspace_id : string prop;
      (** default_log_analytics_workspace_id *)
  enabled : bool prop;  (** enabled *)
  retention_in_days : float prop option; [@option]
      (** retention_in_days *)
  log_analytics_workspace :
    azurerm_firewall_policy__insights__log_analytics_workspace list;
}
[@@deriving yojson_of]
(** azurerm_firewall_policy__insights *)

type azurerm_firewall_policy__intrusion_detection__signature_overrides = {
  id : string prop option; [@option]  (** id *)
  state : string prop option; [@option]  (** state *)
}
[@@deriving yojson_of]
(** azurerm_firewall_policy__intrusion_detection__signature_overrides *)

type azurerm_firewall_policy__intrusion_detection__traffic_bypass = {
  description : string prop option; [@option]  (** description *)
  destination_addresses : string prop list option; [@option]
      (** destination_addresses *)
  destination_ip_groups : string prop list option; [@option]
      (** destination_ip_groups *)
  destination_ports : string prop list option; [@option]
      (** destination_ports *)
  name : string prop;  (** name *)
  protocol : string prop;  (** protocol *)
  source_addresses : string prop list option; [@option]
      (** source_addresses *)
  source_ip_groups : string prop list option; [@option]
      (** source_ip_groups *)
}
[@@deriving yojson_of]
(** azurerm_firewall_policy__intrusion_detection__traffic_bypass *)

type azurerm_firewall_policy__intrusion_detection = {
  mode : string prop option; [@option]  (** mode *)
  private_ranges : string prop list option; [@option]
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
  fqdns : string prop list option; [@option]  (** fqdns *)
  ip_addresses : string prop list option; [@option]
      (** ip_addresses *)
}
[@@deriving yojson_of]
(** azurerm_firewall_policy__threat_intelligence_allowlist *)

type azurerm_firewall_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_firewall_policy__timeouts *)

type azurerm_firewall_policy__tls_certificate = {
  key_vault_secret_id : string prop;  (** key_vault_secret_id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_firewall_policy__tls_certificate *)

type azurerm_firewall_policy = {
  auto_learn_private_ranges_enabled : bool prop option; [@option]
      (** auto_learn_private_ranges_enabled *)
  base_policy_id : string prop option; [@option]
      (** base_policy_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  private_ip_ranges : string prop list option; [@option]
      (** private_ip_ranges *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku : string prop option; [@option]  (** sku *)
  sql_redirect_allowed : bool prop option; [@option]
      (** sql_redirect_allowed *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  threat_intelligence_mode : string prop option; [@option]
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

type t = {
  auto_learn_private_ranges_enabled : bool prop;
  base_policy_id : string prop;
  child_policies : string list prop;
  firewalls : string list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  private_ip_ranges : string list prop;
  resource_group_name : string prop;
  rule_collection_groups : string list prop;
  sku : string prop;
  sql_redirect_allowed : bool prop;
  tags : (string * string) list prop;
  threat_intelligence_mode : string prop;
}

let azurerm_firewall_policy ?auto_learn_private_ranges_enabled
    ?base_policy_id ?id ?private_ip_ranges ?sku ?sql_redirect_allowed
    ?tags ?threat_intelligence_mode ?timeouts ~location ~name
    ~resource_group_name ~dns ~explicit_proxy ~identity ~insights
    ~intrusion_detection ~threat_intelligence_allowlist
    ~tls_certificate __resource_id =
  let __resource_type = "azurerm_firewall_policy" in
  let __resource =
    ({
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
      : azurerm_firewall_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_firewall_policy __resource);
  let __resource_attributes =
    ({
       auto_learn_private_ranges_enabled =
         Prop.computed __resource_type __resource_id
           "auto_learn_private_ranges_enabled";
       base_policy_id =
         Prop.computed __resource_type __resource_id "base_policy_id";
       child_policies =
         Prop.computed __resource_type __resource_id "child_policies";
       firewalls =
         Prop.computed __resource_type __resource_id "firewalls";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       private_ip_ranges =
         Prop.computed __resource_type __resource_id
           "private_ip_ranges";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       rule_collection_groups =
         Prop.computed __resource_type __resource_id
           "rule_collection_groups";
       sku = Prop.computed __resource_type __resource_id "sku";
       sql_redirect_allowed =
         Prop.computed __resource_type __resource_id
           "sql_redirect_allowed";
       tags = Prop.computed __resource_type __resource_id "tags";
       threat_intelligence_mode =
         Prop.computed __resource_type __resource_id
           "threat_intelligence_mode";
     }
      : t)
  in
  __resource_attributes
