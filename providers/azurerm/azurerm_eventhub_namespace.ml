(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_eventhub_namespace__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_eventhub_namespace__identity *)

type azurerm_eventhub_namespace__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_eventhub_namespace__timeouts *)

type azurerm_eventhub_namespace__network_rulesets__virtual_network_rule = {
  ignore_missing_virtual_network_service_endpoint : bool prop;
      (** ignore_missing_virtual_network_service_endpoint *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]

type azurerm_eventhub_namespace__network_rulesets__ip_rule = {
  action : string prop;  (** action *)
  ip_mask : string prop;  (** ip_mask *)
}
[@@deriving yojson_of]

type azurerm_eventhub_namespace__network_rulesets = {
  default_action : string prop;  (** default_action *)
  ip_rule :
    azurerm_eventhub_namespace__network_rulesets__ip_rule list;
      (** ip_rule *)
  public_network_access_enabled : bool prop;
      (** public_network_access_enabled *)
  trusted_service_access_enabled : bool prop;
      (** trusted_service_access_enabled *)
  virtual_network_rule :
    azurerm_eventhub_namespace__network_rulesets__virtual_network_rule
    list;
      (** virtual_network_rule *)
}
[@@deriving yojson_of]

type azurerm_eventhub_namespace = {
  auto_inflate_enabled : bool prop option; [@option]
      (** auto_inflate_enabled *)
  capacity : float prop option; [@option]  (** capacity *)
  dedicated_cluster_id : string prop option; [@option]
      (** dedicated_cluster_id *)
  id : string prop option; [@option]  (** id *)
  local_authentication_enabled : bool prop option; [@option]
      (** local_authentication_enabled *)
  location : string prop;  (** location *)
  maximum_throughput_units : float prop option; [@option]
      (** maximum_throughput_units *)
  minimum_tls_version : string prop option; [@option]
      (** minimum_tls_version *)
  name : string prop;  (** name *)
  network_rulesets :
    azurerm_eventhub_namespace__network_rulesets list option;
      [@option]
      (** network_rulesets *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku : string prop;  (** sku *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zone_redundant : bool prop option; [@option]  (** zone_redundant *)
  identity : azurerm_eventhub_namespace__identity list;
  timeouts : azurerm_eventhub_namespace__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_eventhub_namespace *)

type t = {
  auto_inflate_enabled : bool prop;
  capacity : float prop;
  dedicated_cluster_id : string prop;
  default_primary_connection_string : string prop;
  default_primary_connection_string_alias : string prop;
  default_primary_key : string prop;
  default_secondary_connection_string : string prop;
  default_secondary_connection_string_alias : string prop;
  default_secondary_key : string prop;
  id : string prop;
  local_authentication_enabled : bool prop;
  location : string prop;
  maximum_throughput_units : float prop;
  minimum_tls_version : string prop;
  name : string prop;
  network_rulesets :
    azurerm_eventhub_namespace__network_rulesets list prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
  zone_redundant : bool prop;
}

let azurerm_eventhub_namespace ?auto_inflate_enabled ?capacity
    ?dedicated_cluster_id ?id ?local_authentication_enabled
    ?maximum_throughput_units ?minimum_tls_version ?network_rulesets
    ?public_network_access_enabled ?tags ?zone_redundant ?timeouts
    ~location ~name ~resource_group_name ~sku ~identity __resource_id
    =
  let __resource_type = "azurerm_eventhub_namespace" in
  let __resource =
    ({
       auto_inflate_enabled;
       capacity;
       dedicated_cluster_id;
       id;
       local_authentication_enabled;
       location;
       maximum_throughput_units;
       minimum_tls_version;
       name;
       network_rulesets;
       public_network_access_enabled;
       resource_group_name;
       sku;
       tags;
       zone_redundant;
       identity;
       timeouts;
     }
      : azurerm_eventhub_namespace)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_eventhub_namespace __resource);
  let __resource_attributes =
    ({
       auto_inflate_enabled =
         Prop.computed __resource_type __resource_id
           "auto_inflate_enabled";
       capacity =
         Prop.computed __resource_type __resource_id "capacity";
       dedicated_cluster_id =
         Prop.computed __resource_type __resource_id
           "dedicated_cluster_id";
       default_primary_connection_string =
         Prop.computed __resource_type __resource_id
           "default_primary_connection_string";
       default_primary_connection_string_alias =
         Prop.computed __resource_type __resource_id
           "default_primary_connection_string_alias";
       default_primary_key =
         Prop.computed __resource_type __resource_id
           "default_primary_key";
       default_secondary_connection_string =
         Prop.computed __resource_type __resource_id
           "default_secondary_connection_string";
       default_secondary_connection_string_alias =
         Prop.computed __resource_type __resource_id
           "default_secondary_connection_string_alias";
       default_secondary_key =
         Prop.computed __resource_type __resource_id
           "default_secondary_key";
       id = Prop.computed __resource_type __resource_id "id";
       local_authentication_enabled =
         Prop.computed __resource_type __resource_id
           "local_authentication_enabled";
       location =
         Prop.computed __resource_type __resource_id "location";
       maximum_throughput_units =
         Prop.computed __resource_type __resource_id
           "maximum_throughput_units";
       minimum_tls_version =
         Prop.computed __resource_type __resource_id
           "minimum_tls_version";
       name = Prop.computed __resource_type __resource_id "name";
       network_rulesets =
         Prop.computed __resource_type __resource_id
           "network_rulesets";
       public_network_access_enabled =
         Prop.computed __resource_type __resource_id
           "public_network_access_enabled";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       sku = Prop.computed __resource_type __resource_id "sku";
       tags = Prop.computed __resource_type __resource_id "tags";
       zone_redundant =
         Prop.computed __resource_type __resource_id "zone_redundant";
     }
      : t)
  in
  __resource_attributes
