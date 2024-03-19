(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type dns = {
  proxy_enabled : bool prop option; [@option]  (** proxy_enabled *)
  servers : string prop list option; [@option]  (** servers *)
}
[@@deriving yojson_of]
(** dns *)

type explicit_proxy = {
  enable_pac_file : bool prop option; [@option]
      (** enable_pac_file *)
  enabled : bool prop option; [@option]  (** enabled *)
  http_port : float prop option; [@option]  (** http_port *)
  https_port : float prop option; [@option]  (** https_port *)
  pac_file : string prop option; [@option]  (** pac_file *)
  pac_file_port : float prop option; [@option]  (** pac_file_port *)
}
[@@deriving yojson_of]
(** explicit_proxy *)

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type insights__log_analytics_workspace = {
  firewall_location : string prop;  (** firewall_location *)
  id : string prop;  (** id *)
}
[@@deriving yojson_of]
(** insights__log_analytics_workspace *)

type insights = {
  default_log_analytics_workspace_id : string prop;
      (** default_log_analytics_workspace_id *)
  enabled : bool prop;  (** enabled *)
  retention_in_days : float prop option; [@option]
      (** retention_in_days *)
  log_analytics_workspace : insights__log_analytics_workspace list;
}
[@@deriving yojson_of]
(** insights *)

type intrusion_detection__signature_overrides = {
  id : string prop option; [@option]  (** id *)
  state : string prop option; [@option]  (** state *)
}
[@@deriving yojson_of]
(** intrusion_detection__signature_overrides *)

type intrusion_detection__traffic_bypass = {
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
(** intrusion_detection__traffic_bypass *)

type intrusion_detection = {
  mode : string prop option; [@option]  (** mode *)
  private_ranges : string prop list option; [@option]
      (** private_ranges *)
  signature_overrides :
    intrusion_detection__signature_overrides list;
  traffic_bypass : intrusion_detection__traffic_bypass list;
}
[@@deriving yojson_of]
(** intrusion_detection *)

type threat_intelligence_allowlist = {
  fqdns : string prop list option; [@option]  (** fqdns *)
  ip_addresses : string prop list option; [@option]
      (** ip_addresses *)
}
[@@deriving yojson_of]
(** threat_intelligence_allowlist *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type tls_certificate = {
  key_vault_secret_id : string prop;  (** key_vault_secret_id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** tls_certificate *)

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
  dns : dns list;
  explicit_proxy : explicit_proxy list;
  identity : identity list;
  insights : insights list;
  intrusion_detection : intrusion_detection list;
  threat_intelligence_allowlist : threat_intelligence_allowlist list;
  timeouts : timeouts option;
  tls_certificate : tls_certificate list;
}
[@@deriving yojson_of]
(** azurerm_firewall_policy *)

let dns ?proxy_enabled ?servers () : dns = { proxy_enabled; servers }

let explicit_proxy ?enable_pac_file ?enabled ?http_port ?https_port
    ?pac_file ?pac_file_port () : explicit_proxy =
  {
    enable_pac_file;
    enabled;
    http_port;
    https_port;
    pac_file;
    pac_file_port;
  }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let insights__log_analytics_workspace ~firewall_location ~id () :
    insights__log_analytics_workspace =
  { firewall_location; id }

let insights ?retention_in_days ~default_log_analytics_workspace_id
    ~enabled ~log_analytics_workspace () : insights =
  {
    default_log_analytics_workspace_id;
    enabled;
    retention_in_days;
    log_analytics_workspace;
  }

let intrusion_detection__signature_overrides ?id ?state () :
    intrusion_detection__signature_overrides =
  { id; state }

let intrusion_detection__traffic_bypass ?description
    ?destination_addresses ?destination_ip_groups ?destination_ports
    ?source_addresses ?source_ip_groups ~name ~protocol () :
    intrusion_detection__traffic_bypass =
  {
    description;
    destination_addresses;
    destination_ip_groups;
    destination_ports;
    name;
    protocol;
    source_addresses;
    source_ip_groups;
  }

let intrusion_detection ?mode ?private_ranges ~signature_overrides
    ~traffic_bypass () : intrusion_detection =
  { mode; private_ranges; signature_overrides; traffic_bypass }

let threat_intelligence_allowlist ?fqdns ?ip_addresses () :
    threat_intelligence_allowlist =
  { fqdns; ip_addresses }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let tls_certificate ~key_vault_secret_id ~name () : tls_certificate =
  { key_vault_secret_id; name }

let azurerm_firewall_policy ?auto_learn_private_ranges_enabled
    ?base_policy_id ?id ?private_ip_ranges ?sku ?sql_redirect_allowed
    ?tags ?threat_intelligence_mode ?timeouts ~location ~name
    ~resource_group_name ~dns ~explicit_proxy ~identity ~insights
    ~intrusion_detection ~threat_intelligence_allowlist
    ~tls_certificate () : azurerm_firewall_policy =
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

let register ?tf_module ?auto_learn_private_ranges_enabled
    ?base_policy_id ?id ?private_ip_ranges ?sku ?sql_redirect_allowed
    ?tags ?threat_intelligence_mode ?timeouts ~location ~name
    ~resource_group_name ~dns ~explicit_proxy ~identity ~insights
    ~intrusion_detection ~threat_intelligence_allowlist
    ~tls_certificate __resource_id =
  let __resource_type = "azurerm_firewall_policy" in
  let __resource =
    azurerm_firewall_policy ?auto_learn_private_ranges_enabled
      ?base_policy_id ?id ?private_ip_ranges ?sku
      ?sql_redirect_allowed ?tags ?threat_intelligence_mode ?timeouts
      ~location ~name ~resource_group_name ~dns ~explicit_proxy
      ~identity ~insights ~intrusion_detection
      ~threat_intelligence_allowlist ~tls_certificate ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
