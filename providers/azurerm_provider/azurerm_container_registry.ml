(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_container_registry__georeplications = {
  location : string;  (** location *)
  regional_endpoint_enabled : bool option; [@option]
      (** regional_endpoint_enabled *)
  tags : (string * string) list option; [@option]  (** tags *)
  zone_redundancy_enabled : bool option; [@option]
      (** zone_redundancy_enabled *)
}
[@@deriving yojson_of]
(** azurerm_container_registry__georeplications *)

type azurerm_container_registry__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_container_registry__identity *)

type azurerm_container_registry__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_container_registry__timeouts *)

type azurerm_container_registry__encryption = {
  enabled : bool;  (** enabled *)
  identity_client_id : string;  (** identity_client_id *)
  key_vault_key_id : string;  (** key_vault_key_id *)
}
[@@deriving yojson_of]

type azurerm_container_registry__network_rule_set__virtual_network = {
  action : string;  (** action *)
  subnet_id : string;  (** subnet_id *)
}
[@@deriving yojson_of]

type azurerm_container_registry__network_rule_set__ip_rule = {
  action : string;  (** action *)
  ip_range : string;  (** ip_range *)
}
[@@deriving yojson_of]

type azurerm_container_registry__network_rule_set = {
  default_action : string;  (** default_action *)
  ip_rule :
    azurerm_container_registry__network_rule_set__ip_rule list;
      (** ip_rule *)
  virtual_network :
    azurerm_container_registry__network_rule_set__virtual_network
    list;
      (** virtual_network *)
}
[@@deriving yojson_of]

type azurerm_container_registry__retention_policy = {
  days : float;  (** days *)
  enabled : bool;  (** enabled *)
}
[@@deriving yojson_of]

type azurerm_container_registry__trust_policy = {
  enabled : bool;  (** enabled *)
}
[@@deriving yojson_of]

type azurerm_container_registry = {
  admin_enabled : bool option; [@option]  (** admin_enabled *)
  anonymous_pull_enabled : bool option; [@option]
      (** anonymous_pull_enabled *)
  data_endpoint_enabled : bool option; [@option]
      (** data_endpoint_enabled *)
  encryption : azurerm_container_registry__encryption list option;
      [@option]
      (** encryption *)
  export_policy_enabled : bool option; [@option]
      (** export_policy_enabled *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  network_rule_bypass_option : string option; [@option]
      (** network_rule_bypass_option *)
  network_rule_set :
    azurerm_container_registry__network_rule_set list option;
      [@option]
      (** network_rule_set *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  quarantine_policy_enabled : bool option; [@option]
      (** quarantine_policy_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  retention_policy :
    azurerm_container_registry__retention_policy list option;
      [@option]
      (** retention_policy *)
  sku : string;  (** sku *)
  tags : (string * string) list option; [@option]  (** tags *)
  trust_policy :
    azurerm_container_registry__trust_policy list option;
      [@option]
      (** trust_policy *)
  zone_redundancy_enabled : bool option; [@option]
      (** zone_redundancy_enabled *)
  georeplications : azurerm_container_registry__georeplications list;
  identity : azurerm_container_registry__identity list;
  timeouts : azurerm_container_registry__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_container_registry *)

let azurerm_container_registry ?admin_enabled ?anonymous_pull_enabled
    ?data_endpoint_enabled ?encryption ?export_policy_enabled ?id
    ?network_rule_bypass_option ?network_rule_set
    ?public_network_access_enabled ?quarantine_policy_enabled
    ?retention_policy ?tags ?trust_policy ?zone_redundancy_enabled
    ?timeouts ~location ~name ~resource_group_name ~sku
    ~georeplications ~identity __resource_id =
  let __resource_type = "azurerm_container_registry" in
  let __resource =
    {
      admin_enabled;
      anonymous_pull_enabled;
      data_endpoint_enabled;
      encryption;
      export_policy_enabled;
      id;
      location;
      name;
      network_rule_bypass_option;
      network_rule_set;
      public_network_access_enabled;
      quarantine_policy_enabled;
      resource_group_name;
      retention_policy;
      sku;
      tags;
      trust_policy;
      zone_redundancy_enabled;
      georeplications;
      identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_container_registry __resource);
  ()
