(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_search_service__identity = {
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_search_service__identity *)

type azurerm_search_service__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_search_service__timeouts *)

type azurerm_search_service__query_keys = {
  key : string prop;  (** key *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]

type azurerm_search_service = {
  allowed_ips : string prop list option; [@option]
      (** allowed_ips *)
  authentication_failure_mode : string prop option; [@option]
      (** authentication_failure_mode *)
  customer_managed_key_enforcement_enabled : bool prop option;
      [@option]
      (** customer_managed_key_enforcement_enabled *)
  hosting_mode : string prop option; [@option]  (** hosting_mode *)
  id : string prop option; [@option]  (** id *)
  local_authentication_enabled : bool prop option; [@option]
      (** local_authentication_enabled *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  partition_count : float prop option; [@option]
      (** partition_count *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  replica_count : float prop option; [@option]  (** replica_count *)
  resource_group_name : string prop;  (** resource_group_name *)
  semantic_search_sku : string prop option; [@option]
      (** semantic_search_sku *)
  sku : string prop;  (** sku *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity : azurerm_search_service__identity list;
  timeouts : azurerm_search_service__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_search_service *)

let azurerm_search_service ?allowed_ips ?authentication_failure_mode
    ?customer_managed_key_enforcement_enabled ?hosting_mode ?id
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
      id;
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
