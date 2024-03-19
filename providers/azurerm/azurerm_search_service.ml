(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type identity = { type_ : string prop [@key "type"]  (** type *) }
[@@deriving yojson_of]
(** identity *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type query_keys = {
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
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_search_service *)

let identity ~type_ () : identity = { type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_search_service ?allowed_ips ?authentication_failure_mode
    ?customer_managed_key_enforcement_enabled ?hosting_mode ?id
    ?local_authentication_enabled ?partition_count
    ?public_network_access_enabled ?replica_count
    ?semantic_search_sku ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku ~identity () : azurerm_search_service =
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

type t = {
  allowed_ips : string list prop;
  authentication_failure_mode : string prop;
  customer_managed_key_enforcement_enabled : bool prop;
  hosting_mode : string prop;
  id : string prop;
  local_authentication_enabled : bool prop;
  location : string prop;
  name : string prop;
  partition_count : float prop;
  primary_key : string prop;
  public_network_access_enabled : bool prop;
  query_keys : query_keys list prop;
  replica_count : float prop;
  resource_group_name : string prop;
  secondary_key : string prop;
  semantic_search_sku : string prop;
  sku : string prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?allowed_ips ?authentication_failure_mode
    ?customer_managed_key_enforcement_enabled ?hosting_mode ?id
    ?local_authentication_enabled ?partition_count
    ?public_network_access_enabled ?replica_count
    ?semantic_search_sku ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku ~identity __resource_id =
  let __resource_type = "azurerm_search_service" in
  let __resource =
    azurerm_search_service ?allowed_ips ?authentication_failure_mode
      ?customer_managed_key_enforcement_enabled ?hosting_mode ?id
      ?local_authentication_enabled ?partition_count
      ?public_network_access_enabled ?replica_count
      ?semantic_search_sku ?tags ?timeouts ~location ~name
      ~resource_group_name ~sku ~identity ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_search_service __resource);
  let __resource_attributes =
    ({
       allowed_ips =
         Prop.computed __resource_type __resource_id "allowed_ips";
       authentication_failure_mode =
         Prop.computed __resource_type __resource_id
           "authentication_failure_mode";
       customer_managed_key_enforcement_enabled =
         Prop.computed __resource_type __resource_id
           "customer_managed_key_enforcement_enabled";
       hosting_mode =
         Prop.computed __resource_type __resource_id "hosting_mode";
       id = Prop.computed __resource_type __resource_id "id";
       local_authentication_enabled =
         Prop.computed __resource_type __resource_id
           "local_authentication_enabled";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       partition_count =
         Prop.computed __resource_type __resource_id
           "partition_count";
       primary_key =
         Prop.computed __resource_type __resource_id "primary_key";
       public_network_access_enabled =
         Prop.computed __resource_type __resource_id
           "public_network_access_enabled";
       query_keys =
         Prop.computed __resource_type __resource_id "query_keys";
       replica_count =
         Prop.computed __resource_type __resource_id "replica_count";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       secondary_key =
         Prop.computed __resource_type __resource_id "secondary_key";
       semantic_search_sku =
         Prop.computed __resource_type __resource_id
           "semantic_search_sku";
       sku = Prop.computed __resource_type __resource_id "sku";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
