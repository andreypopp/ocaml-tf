(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type customer_managed_key = {
  identity_id : string prop;  (** identity_id *)
  infrastructure_encryption_enabled : bool prop option; [@option]
      (** infrastructure_encryption_enabled *)
  key_vault_key_id : string prop;  (** key_vault_key_id *)
}
[@@deriving yojson_of]
(** customer_managed_key *)

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type network_rule_set__network_rules = {
  ignore_missing_vnet_service_endpoint : bool prop option; [@option]
      (** ignore_missing_vnet_service_endpoint *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** network_rule_set__network_rules *)

type network_rule_set = {
  default_action : string prop option; [@option]
      (** default_action *)
  ip_rules : string prop list option; [@option]  (** ip_rules *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  trusted_services_allowed : bool prop option; [@option]
      (** trusted_services_allowed *)
  network_rules : network_rule_set__network_rules list;
}
[@@deriving yojson_of]
(** network_rule_set *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_servicebus_namespace = {
  capacity : float prop option; [@option]  (** capacity *)
  id : string prop option; [@option]  (** id *)
  local_auth_enabled : bool prop option; [@option]
      (** local_auth_enabled *)
  location : string prop;  (** location *)
  minimum_tls_version : string prop option; [@option]
      (** minimum_tls_version *)
  name : string prop;  (** name *)
  premium_messaging_partitions : float prop option; [@option]
      (** premium_messaging_partitions *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku : string prop;  (** sku *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zone_redundant : bool prop option; [@option]  (** zone_redundant *)
  customer_managed_key : customer_managed_key list;
  identity : identity list;
  network_rule_set : network_rule_set list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_servicebus_namespace *)

let customer_managed_key ?infrastructure_encryption_enabled
    ~identity_id ~key_vault_key_id () : customer_managed_key =
  {
    identity_id;
    infrastructure_encryption_enabled;
    key_vault_key_id;
  }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let network_rule_set__network_rules
    ?ignore_missing_vnet_service_endpoint ~subnet_id () :
    network_rule_set__network_rules =
  { ignore_missing_vnet_service_endpoint; subnet_id }

let network_rule_set ?default_action ?ip_rules
    ?public_network_access_enabled ?trusted_services_allowed
    ~network_rules () : network_rule_set =
  {
    default_action;
    ip_rules;
    public_network_access_enabled;
    trusted_services_allowed;
    network_rules;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_servicebus_namespace ?capacity ?id ?local_auth_enabled
    ?minimum_tls_version ?premium_messaging_partitions
    ?public_network_access_enabled ?tags ?zone_redundant ?timeouts
    ~location ~name ~resource_group_name ~sku ~customer_managed_key
    ~identity ~network_rule_set () : azurerm_servicebus_namespace =
  {
    capacity;
    id;
    local_auth_enabled;
    location;
    minimum_tls_version;
    name;
    premium_messaging_partitions;
    public_network_access_enabled;
    resource_group_name;
    sku;
    tags;
    zone_redundant;
    customer_managed_key;
    identity;
    network_rule_set;
    timeouts;
  }

type t = {
  capacity : float prop;
  default_primary_connection_string : string prop;
  default_primary_key : string prop;
  default_secondary_connection_string : string prop;
  default_secondary_key : string prop;
  endpoint : string prop;
  id : string prop;
  local_auth_enabled : bool prop;
  location : string prop;
  minimum_tls_version : string prop;
  name : string prop;
  premium_messaging_partitions : float prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
  zone_redundant : bool prop;
}

let make ?capacity ?id ?local_auth_enabled ?minimum_tls_version
    ?premium_messaging_partitions ?public_network_access_enabled
    ?tags ?zone_redundant ?timeouts ~location ~name
    ~resource_group_name ~sku ~customer_managed_key ~identity
    ~network_rule_set __id =
  let __type = "azurerm_servicebus_namespace" in
  let __attrs =
    ({
       capacity = Prop.computed __type __id "capacity";
       default_primary_connection_string =
         Prop.computed __type __id
           "default_primary_connection_string";
       default_primary_key =
         Prop.computed __type __id "default_primary_key";
       default_secondary_connection_string =
         Prop.computed __type __id
           "default_secondary_connection_string";
       default_secondary_key =
         Prop.computed __type __id "default_secondary_key";
       endpoint = Prop.computed __type __id "endpoint";
       id = Prop.computed __type __id "id";
       local_auth_enabled =
         Prop.computed __type __id "local_auth_enabled";
       location = Prop.computed __type __id "location";
       minimum_tls_version =
         Prop.computed __type __id "minimum_tls_version";
       name = Prop.computed __type __id "name";
       premium_messaging_partitions =
         Prop.computed __type __id "premium_messaging_partitions";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku = Prop.computed __type __id "sku";
       tags = Prop.computed __type __id "tags";
       zone_redundant = Prop.computed __type __id "zone_redundant";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_servicebus_namespace
        (azurerm_servicebus_namespace ?capacity ?id
           ?local_auth_enabled ?minimum_tls_version
           ?premium_messaging_partitions
           ?public_network_access_enabled ?tags ?zone_redundant
           ?timeouts ~location ~name ~resource_group_name ~sku
           ~customer_managed_key ~identity ~network_rule_set ());
    attrs = __attrs;
  }

let register ?tf_module ?capacity ?id ?local_auth_enabled
    ?minimum_tls_version ?premium_messaging_partitions
    ?public_network_access_enabled ?tags ?zone_redundant ?timeouts
    ~location ~name ~resource_group_name ~sku ~customer_managed_key
    ~identity ~network_rule_set __id =
  let (r : _ Tf_core.resource) =
    make ?capacity ?id ?local_auth_enabled ?minimum_tls_version
      ?premium_messaging_partitions ?public_network_access_enabled
      ?tags ?zone_redundant ?timeouts ~location ~name
      ~resource_group_name ~sku ~customer_managed_key ~identity
      ~network_rule_set __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
