(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
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

type azurerm_disk_encryption_set = {
  auto_key_rotation_enabled : bool prop option; [@option]
      (** auto_key_rotation_enabled *)
  encryption_type : string prop option; [@option]
      (** encryption_type *)
  federated_client_id : string prop option; [@option]
      (** federated_client_id *)
  id : string prop option; [@option]  (** id *)
  key_vault_key_id : string prop;  (** key_vault_key_id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_disk_encryption_set *)

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_disk_encryption_set ?auto_key_rotation_enabled
    ?encryption_type ?federated_client_id ?id ?tags ?timeouts
    ~key_vault_key_id ~location ~name ~resource_group_name ~identity
    () : azurerm_disk_encryption_set =
  {
    auto_key_rotation_enabled;
    encryption_type;
    federated_client_id;
    id;
    key_vault_key_id;
    location;
    name;
    resource_group_name;
    tags;
    identity;
    timeouts;
  }

type t = {
  auto_key_rotation_enabled : bool prop;
  encryption_type : string prop;
  federated_client_id : string prop;
  id : string prop;
  key_vault_key_id : string prop;
  key_vault_key_url : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?auto_key_rotation_enabled ?encryption_type
    ?federated_client_id ?id ?tags ?timeouts ~key_vault_key_id
    ~location ~name ~resource_group_name ~identity __id =
  let __type = "azurerm_disk_encryption_set" in
  let __attrs =
    ({
       auto_key_rotation_enabled =
         Prop.computed __type __id "auto_key_rotation_enabled";
       encryption_type = Prop.computed __type __id "encryption_type";
       federated_client_id =
         Prop.computed __type __id "federated_client_id";
       id = Prop.computed __type __id "id";
       key_vault_key_id =
         Prop.computed __type __id "key_vault_key_id";
       key_vault_key_url =
         Prop.computed __type __id "key_vault_key_url";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_disk_encryption_set
        (azurerm_disk_encryption_set ?auto_key_rotation_enabled
           ?encryption_type ?federated_client_id ?id ?tags ?timeouts
           ~key_vault_key_id ~location ~name ~resource_group_name
           ~identity ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_key_rotation_enabled ?encryption_type
    ?federated_client_id ?id ?tags ?timeouts ~key_vault_key_id
    ~location ~name ~resource_group_name ~identity __id =
  let (r : _ Tf_core.resource) =
    make ?auto_key_rotation_enabled ?encryption_type
      ?federated_client_id ?id ?tags ?timeouts ~key_vault_key_id
      ~location ~name ~resource_group_name ~identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
