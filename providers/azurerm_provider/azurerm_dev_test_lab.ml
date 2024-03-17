(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_dev_test_lab__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_dev_test_lab__timeouts *)

type azurerm_dev_test_lab = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  storage_type : string prop option; [@option]  (** storage_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_dev_test_lab__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dev_test_lab *)

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

let azurerm_dev_test_lab ?id ?storage_type ?tags ?timeouts ~location
    ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_dev_test_lab" in
  let __resource =
    ({
       id;
       location;
       name;
       resource_group_name;
       storage_type;
       tags;
       timeouts;
     }
      : azurerm_dev_test_lab)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_dev_test_lab __resource);
  let __resource_attributes =
    ({
       artifacts_storage_account_id =
         Prop.computed __resource_type __resource_id
           "artifacts_storage_account_id";
       default_premium_storage_account_id =
         Prop.computed __resource_type __resource_id
           "default_premium_storage_account_id";
       default_storage_account_id =
         Prop.computed __resource_type __resource_id
           "default_storage_account_id";
       id = Prop.computed __resource_type __resource_id "id";
       key_vault_id =
         Prop.computed __resource_type __resource_id "key_vault_id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       premium_data_disk_storage_account_id =
         Prop.computed __resource_type __resource_id
           "premium_data_disk_storage_account_id";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       storage_type =
         Prop.computed __resource_type __resource_id "storage_type";
       tags = Prop.computed __resource_type __resource_id "tags";
       unique_identifier =
         Prop.computed __resource_type __resource_id
           "unique_identifier";
     }
      : t)
  in
  __resource_attributes
