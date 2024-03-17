(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_container_registry__georeplications = {
  location : string prop;  (** location *)
  regional_endpoint_enabled : bool prop option; [@option]
      (** regional_endpoint_enabled *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zone_redundancy_enabled : bool prop option; [@option]
      (** zone_redundancy_enabled *)
}
[@@deriving yojson_of]
(** azurerm_container_registry__georeplications *)

type azurerm_container_registry__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_container_registry__identity *)

type azurerm_container_registry__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_container_registry__timeouts *)

type azurerm_container_registry__encryption = {
  enabled : bool prop;  (** enabled *)
  identity_client_id : string prop;  (** identity_client_id *)
  key_vault_key_id : string prop;  (** key_vault_key_id *)
}
[@@deriving yojson_of]

type azurerm_container_registry__network_rule_set__virtual_network = {
  action : string prop;  (** action *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]

type azurerm_container_registry__network_rule_set__ip_rule = {
  action : string prop;  (** action *)
  ip_range : string prop;  (** ip_range *)
}
[@@deriving yojson_of]

type azurerm_container_registry__network_rule_set = {
  default_action : string prop;  (** default_action *)
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
  days : float prop;  (** days *)
  enabled : bool prop;  (** enabled *)
}
[@@deriving yojson_of]

type azurerm_container_registry__trust_policy = {
  enabled : bool prop;  (** enabled *)
}
[@@deriving yojson_of]

type azurerm_container_registry = {
  admin_enabled : bool prop option; [@option]  (** admin_enabled *)
  anonymous_pull_enabled : bool prop option; [@option]
      (** anonymous_pull_enabled *)
  data_endpoint_enabled : bool prop option; [@option]
      (** data_endpoint_enabled *)
  encryption : azurerm_container_registry__encryption list option;
      [@option]
      (** encryption *)
  export_policy_enabled : bool prop option; [@option]
      (** export_policy_enabled *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  network_rule_bypass_option : string prop option; [@option]
      (** network_rule_bypass_option *)
  network_rule_set :
    azurerm_container_registry__network_rule_set list option;
      [@option]
      (** network_rule_set *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  quarantine_policy_enabled : bool prop option; [@option]
      (** quarantine_policy_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  retention_policy :
    azurerm_container_registry__retention_policy list option;
      [@option]
      (** retention_policy *)
  sku : string prop;  (** sku *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  trust_policy :
    azurerm_container_registry__trust_policy list option;
      [@option]
      (** trust_policy *)
  zone_redundancy_enabled : bool prop option; [@option]
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
