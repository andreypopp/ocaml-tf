(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_eventhub_namespace__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_eventhub_namespace__identity *)

type azurerm_eventhub_namespace__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_eventhub_namespace__timeouts *)

type azurerm_eventhub_namespace__network_rulesets__virtual_network_rule = {
  ignore_missing_virtual_network_service_endpoint : bool;
      (** ignore_missing_virtual_network_service_endpoint *)
  subnet_id : string;  (** subnet_id *)
}
[@@deriving yojson_of]

type azurerm_eventhub_namespace__network_rulesets__ip_rule = {
  action : string;  (** action *)
  ip_mask : string;  (** ip_mask *)
}
[@@deriving yojson_of]

type azurerm_eventhub_namespace__network_rulesets = {
  default_action : string;  (** default_action *)
  ip_rule :
    azurerm_eventhub_namespace__network_rulesets__ip_rule list;
      (** ip_rule *)
  public_network_access_enabled : bool;
      (** public_network_access_enabled *)
  trusted_service_access_enabled : bool;
      (** trusted_service_access_enabled *)
  virtual_network_rule :
    azurerm_eventhub_namespace__network_rulesets__virtual_network_rule
    list;
      (** virtual_network_rule *)
}
[@@deriving yojson_of]

type azurerm_eventhub_namespace = {
  auto_inflate_enabled : bool option; [@option]
      (** auto_inflate_enabled *)
  capacity : float option; [@option]  (** capacity *)
  dedicated_cluster_id : string option; [@option]
      (** dedicated_cluster_id *)
  id : string option; [@option]  (** id *)
  local_authentication_enabled : bool option; [@option]
      (** local_authentication_enabled *)
  location : string;  (** location *)
  maximum_throughput_units : float option; [@option]
      (** maximum_throughput_units *)
  minimum_tls_version : string option; [@option]
      (** minimum_tls_version *)
  name : string;  (** name *)
  network_rulesets :
    azurerm_eventhub_namespace__network_rulesets list option;
      [@option]
      (** network_rulesets *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  sku : string;  (** sku *)
  tags : (string * string) list option; [@option]  (** tags *)
  zone_redundant : bool option; [@option]  (** zone_redundant *)
  identity : azurerm_eventhub_namespace__identity list;
  timeouts : azurerm_eventhub_namespace__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_eventhub_namespace *)

let azurerm_eventhub_namespace ?auto_inflate_enabled ?capacity
    ?dedicated_cluster_id ?id ?local_authentication_enabled
    ?maximum_throughput_units ?minimum_tls_version ?network_rulesets
    ?public_network_access_enabled ?tags ?zone_redundant ?timeouts
    ~location ~name ~resource_group_name ~sku ~identity __resource_id
    =
  let __resource_type = "azurerm_eventhub_namespace" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_eventhub_namespace __resource);
  ()
