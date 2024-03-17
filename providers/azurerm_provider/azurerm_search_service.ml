(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_search_service__identity = {
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_search_service__identity *)

type azurerm_search_service__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_search_service__timeouts *)

type azurerm_search_service__query_keys = {
  key : string;  (** key *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type azurerm_search_service = {
  allowed_ips : string list option; [@option]  (** allowed_ips *)
  authentication_failure_mode : string option; [@option]
      (** authentication_failure_mode *)
  customer_managed_key_enforcement_enabled : bool option; [@option]
      (** customer_managed_key_enforcement_enabled *)
  hosting_mode : string option; [@option]  (** hosting_mode *)
  local_authentication_enabled : bool option; [@option]
      (** local_authentication_enabled *)
  location : string;  (** location *)
  name : string;  (** name *)
  partition_count : float option; [@option]  (** partition_count *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  replica_count : float option; [@option]  (** replica_count *)
  resource_group_name : string;  (** resource_group_name *)
  semantic_search_sku : string option; [@option]
      (** semantic_search_sku *)
  sku : string;  (** sku *)
  tags : (string * string) list option; [@option]  (** tags *)
  identity : azurerm_search_service__identity list;
  timeouts : azurerm_search_service__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_search_service *)

let azurerm_search_service ?allowed_ips ?authentication_failure_mode
    ?customer_managed_key_enforcement_enabled ?hosting_mode
    ?local_authentication_enabled ?partition_count
    ?public_network_access_enabled ?replica_count
    ?semantic_search_sku ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku ~identity __resource_id =
  let __resource_type = "azurerm_search_service" in
  let __resource =
    {
      allowed_ips;
      authentication_failure_mode;
      customer_managed_key_enforcement_enabled;
      hosting_mode;
      local_authentication_enabled;
      location;
      name;
      partition_count;
      public_network_access_enabled;
      replica_count;
      resource_group_name;
      semantic_search_sku;
      sku;
      tags;
      identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_search_service __resource);
  ()
