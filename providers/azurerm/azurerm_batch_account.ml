(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type key_vault_reference = {
  id : string prop;  (** id *)
  url : string prop;  (** url *)
}
[@@deriving yojson_of]
(** key_vault_reference *)

type network_profile__account_access__ip_rule = {
  action : string prop option; [@option]  (** action *)
  ip_range : string prop;  (** ip_range *)
}
[@@deriving yojson_of]
(** network_profile__account_access__ip_rule *)

type network_profile__account_access = {
  default_action : string prop option; [@option]
      (** default_action *)
  ip_rule : network_profile__account_access__ip_rule list;
}
[@@deriving yojson_of]
(** network_profile__account_access *)

type network_profile__node_management_access__ip_rule = {
  action : string prop option; [@option]  (** action *)
  ip_range : string prop;  (** ip_range *)
}
[@@deriving yojson_of]
(** network_profile__node_management_access__ip_rule *)

type network_profile__node_management_access = {
  default_action : string prop option; [@option]
      (** default_action *)
  ip_rule : network_profile__node_management_access__ip_rule list;
}
[@@deriving yojson_of]
(** network_profile__node_management_access *)

type network_profile = {
  account_access : network_profile__account_access list;
  node_management_access :
    network_profile__node_management_access list;
}
[@@deriving yojson_of]
(** network_profile *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type encryption = {
  key_vault_key_id : string prop;  (** key_vault_key_id *)
}
[@@deriving yojson_of]

type azurerm_batch_account = {
  allowed_authentication_modes : string prop list option; [@option]
      (** allowed_authentication_modes *)
  encryption : encryption list option; [@option]  (** encryption *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  pool_allocation_mode : string prop option; [@option]
      (** pool_allocation_mode *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  storage_account_authentication_mode : string prop option; [@option]
      (** storage_account_authentication_mode *)
  storage_account_id : string prop option; [@option]
      (** storage_account_id *)
  storage_account_node_identity : string prop option; [@option]
      (** storage_account_node_identity *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity : identity list;
  key_vault_reference : key_vault_reference list;
  network_profile : network_profile list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_batch_account *)

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let key_vault_reference ~id ~url () : key_vault_reference =
  { id; url }

let network_profile__account_access__ip_rule ?action ~ip_range () :
    network_profile__account_access__ip_rule =
  { action; ip_range }

let network_profile__account_access ?default_action ~ip_rule () :
    network_profile__account_access =
  { default_action; ip_rule }

let network_profile__node_management_access__ip_rule ?action
    ~ip_range () : network_profile__node_management_access__ip_rule =
  { action; ip_range }

let network_profile__node_management_access ?default_action ~ip_rule
    () : network_profile__node_management_access =
  { default_action; ip_rule }

let network_profile ~account_access ~node_management_access () :
    network_profile =
  { account_access; node_management_access }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_batch_account ?allowed_authentication_modes ?encryption
    ?id ?pool_allocation_mode ?public_network_access_enabled
    ?storage_account_authentication_mode ?storage_account_id
    ?storage_account_node_identity ?tags ?timeouts ~location ~name
    ~resource_group_name ~identity ~key_vault_reference
    ~network_profile () : azurerm_batch_account =
  {
    allowed_authentication_modes;
    encryption;
    id;
    location;
    name;
    pool_allocation_mode;
    public_network_access_enabled;
    resource_group_name;
    storage_account_authentication_mode;
    storage_account_id;
    storage_account_node_identity;
    tags;
    identity;
    key_vault_reference;
    network_profile;
    timeouts;
  }

type t = {
  account_endpoint : string prop;
  allowed_authentication_modes : string list prop;
  encryption : encryption list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  pool_allocation_mode : string prop;
  primary_access_key : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  secondary_access_key : string prop;
  storage_account_authentication_mode : string prop;
  storage_account_id : string prop;
  storage_account_node_identity : string prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?allowed_authentication_modes ?encryption ?id
    ?pool_allocation_mode ?public_network_access_enabled
    ?storage_account_authentication_mode ?storage_account_id
    ?storage_account_node_identity ?tags ?timeouts ~location ~name
    ~resource_group_name ~identity ~key_vault_reference
    ~network_profile __resource_id =
  let __resource_type = "azurerm_batch_account" in
  let __resource =
    azurerm_batch_account ?allowed_authentication_modes ?encryption
      ?id ?pool_allocation_mode ?public_network_access_enabled
      ?storage_account_authentication_mode ?storage_account_id
      ?storage_account_node_identity ?tags ?timeouts ~location ~name
      ~resource_group_name ~identity ~key_vault_reference
      ~network_profile ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_batch_account __resource);
  let __resource_attributes =
    ({
       account_endpoint =
         Prop.computed __resource_type __resource_id
           "account_endpoint";
       allowed_authentication_modes =
         Prop.computed __resource_type __resource_id
           "allowed_authentication_modes";
       encryption =
         Prop.computed __resource_type __resource_id "encryption";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       pool_allocation_mode =
         Prop.computed __resource_type __resource_id
           "pool_allocation_mode";
       primary_access_key =
         Prop.computed __resource_type __resource_id
           "primary_access_key";
       public_network_access_enabled =
         Prop.computed __resource_type __resource_id
           "public_network_access_enabled";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       secondary_access_key =
         Prop.computed __resource_type __resource_id
           "secondary_access_key";
       storage_account_authentication_mode =
         Prop.computed __resource_type __resource_id
           "storage_account_authentication_mode";
       storage_account_id =
         Prop.computed __resource_type __resource_id
           "storage_account_id";
       storage_account_node_identity =
         Prop.computed __resource_type __resource_id
           "storage_account_node_identity";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
