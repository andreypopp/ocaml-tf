(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption__managed_identity = {
  use_system_assigned_identity : bool prop option; [@option]
      (** use_system_assigned_identity *)
  user_assigned_identity_id : string prop option; [@option]
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]
(** encryption__managed_identity *)

type encryption = {
  key_vault_key_identifier : string prop option; [@option]
      (** key_vault_key_identifier *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  managed_identity : encryption__managed_identity list;
}
[@@deriving yojson_of]
(** encryption *)

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type key_delivery_access_control = {
  default_action : string prop option; [@option]
      (** default_action *)
  ip_allow_list : string prop list option; [@option]
      (** ip_allow_list *)
}
[@@deriving yojson_of]
(** key_delivery_access_control *)

type storage_account__managed_identity = {
  use_system_assigned_identity : bool prop option; [@option]
      (** use_system_assigned_identity *)
  user_assigned_identity_id : string prop option; [@option]
      (** user_assigned_identity_id *)
}
[@@deriving yojson_of]
(** storage_account__managed_identity *)

type storage_account = {
  id : string prop;  (** id *)
  is_primary : bool prop option; [@option]  (** is_primary *)
  managed_identity : storage_account__managed_identity list;
}
[@@deriving yojson_of]
(** storage_account *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_media_services_account = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  storage_authentication_type : string prop option; [@option]
      (** storage_authentication_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  encryption : encryption list;
  identity : identity list;
  key_delivery_access_control : key_delivery_access_control list;
  storage_account : storage_account list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_media_services_account *)

let encryption__managed_identity ?use_system_assigned_identity
    ?user_assigned_identity_id () : encryption__managed_identity =
  { use_system_assigned_identity; user_assigned_identity_id }

let encryption ?key_vault_key_identifier ?type_ ~managed_identity ()
    : encryption =
  { key_vault_key_identifier; type_; managed_identity }

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let key_delivery_access_control ?default_action ?ip_allow_list () :
    key_delivery_access_control =
  { default_action; ip_allow_list }

let storage_account__managed_identity ?use_system_assigned_identity
    ?user_assigned_identity_id () : storage_account__managed_identity
    =
  { use_system_assigned_identity; user_assigned_identity_id }

let storage_account ?is_primary ~id ~managed_identity () :
    storage_account =
  { id; is_primary; managed_identity }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_media_services_account ?id ?public_network_access_enabled
    ?storage_authentication_type ?tags ?timeouts ~location ~name
    ~resource_group_name ~encryption ~identity
    ~key_delivery_access_control ~storage_account () :
    azurerm_media_services_account =
  {
    id;
    location;
    name;
    public_network_access_enabled;
    resource_group_name;
    storage_authentication_type;
    tags;
    encryption;
    identity;
    key_delivery_access_control;
    storage_account;
    timeouts;
  }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  storage_authentication_type : string prop;
  tags : (string * string) list prop;
}

let make ?id ?public_network_access_enabled
    ?storage_authentication_type ?tags ?timeouts ~location ~name
    ~resource_group_name ~encryption ~identity
    ~key_delivery_access_control ~storage_account __id =
  let __type = "azurerm_media_services_account" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       storage_authentication_type =
         Prop.computed __type __id "storage_authentication_type";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_media_services_account
        (azurerm_media_services_account ?id
           ?public_network_access_enabled
           ?storage_authentication_type ?tags ?timeouts ~location
           ~name ~resource_group_name ~encryption ~identity
           ~key_delivery_access_control ~storage_account ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?public_network_access_enabled
    ?storage_authentication_type ?tags ?timeouts ~location ~name
    ~resource_group_name ~encryption ~identity
    ~key_delivery_access_control ~storage_account __id =
  let (r : _ Tf_core.resource) =
    make ?id ?public_network_access_enabled
      ?storage_authentication_type ?tags ?timeouts ~location ~name
      ~resource_group_name ~encryption ~identity
      ~key_delivery_access_control ~storage_account __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
