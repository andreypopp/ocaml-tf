(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_dev_test_lab = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  storage_type : string prop option; [@option]  (** storage_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dev_test_lab *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_dev_test_lab ?id ?storage_type ?tags ?timeouts ~location
    ~name ~resource_group_name () : azurerm_dev_test_lab =
  {
    id;
    location;
    name;
    resource_group_name;
    storage_type;
    tags;
    timeouts;
  }

type t = {
  artifacts_storage_account_id : string prop;
  default_premium_storage_account_id : string prop;
  default_storage_account_id : string prop;
  id : string prop;
  key_vault_id : string prop;
  location : string prop;
  name : string prop;
  premium_data_disk_storage_account_id : string prop;
  resource_group_name : string prop;
  storage_type : string prop;
  tags : (string * string) list prop;
  unique_identifier : string prop;
}

let make ?id ?storage_type ?tags ?timeouts ~location ~name
    ~resource_group_name __id =
  let __type = "azurerm_dev_test_lab" in
  let __attrs =
    ({
       artifacts_storage_account_id =
         Prop.computed __type __id "artifacts_storage_account_id";
       default_premium_storage_account_id =
         Prop.computed __type __id
           "default_premium_storage_account_id";
       default_storage_account_id =
         Prop.computed __type __id "default_storage_account_id";
       id = Prop.computed __type __id "id";
       key_vault_id = Prop.computed __type __id "key_vault_id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       premium_data_disk_storage_account_id =
         Prop.computed __type __id
           "premium_data_disk_storage_account_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       storage_type = Prop.computed __type __id "storage_type";
       tags = Prop.computed __type __id "tags";
       unique_identifier =
         Prop.computed __type __id "unique_identifier";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_dev_test_lab
        (azurerm_dev_test_lab ?id ?storage_type ?tags ?timeouts
           ~location ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?storage_type ?tags ?timeouts ~location
    ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?storage_type ?tags ?timeouts ~location ~name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
