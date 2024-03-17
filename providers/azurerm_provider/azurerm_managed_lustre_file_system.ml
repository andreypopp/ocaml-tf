(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_managed_lustre_file_system__encryption_key = {
  key_url : string prop;  (** key_url *)
  source_vault_id : string prop;  (** source_vault_id *)
}
[@@deriving yojson_of]
(** azurerm_managed_lustre_file_system__encryption_key *)

type azurerm_managed_lustre_file_system__hsm_setting = {
  container_id : string prop;  (** container_id *)
  import_prefix : string prop option; [@option]  (** import_prefix *)
  logging_container_id : string prop;  (** logging_container_id *)
}
[@@deriving yojson_of]
(** azurerm_managed_lustre_file_system__hsm_setting *)

type azurerm_managed_lustre_file_system__identity = {
  identity_ids : string prop list;  (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_managed_lustre_file_system__identity *)

type azurerm_managed_lustre_file_system__maintenance_window = {
  day_of_week : string prop;  (** day_of_week *)
  time_of_day_in_utc : string prop;  (** time_of_day_in_utc *)
}
[@@deriving yojson_of]
(** azurerm_managed_lustre_file_system__maintenance_window *)

type azurerm_managed_lustre_file_system__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_managed_lustre_file_system__timeouts *)

type azurerm_managed_lustre_file_system = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  storage_capacity_in_tb : float prop;  (** storage_capacity_in_tb *)
  subnet_id : string prop;  (** subnet_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zones : string prop list;  (** zones *)
  encryption_key :
    azurerm_managed_lustre_file_system__encryption_key list;
  hsm_setting : azurerm_managed_lustre_file_system__hsm_setting list;
  identity : azurerm_managed_lustre_file_system__identity list;
  maintenance_window :
    azurerm_managed_lustre_file_system__maintenance_window list;
  timeouts : azurerm_managed_lustre_file_system__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_managed_lustre_file_system *)

type t = {
  id : string prop;
  location : string prop;
  mgs_address : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  storage_capacity_in_tb : float prop;
  subnet_id : string prop;
  tags : (string * string) list prop;
  zones : string list prop;
}

let azurerm_managed_lustre_file_system ?id ?tags ?timeouts ~location
    ~name ~resource_group_name ~sku_name ~storage_capacity_in_tb
    ~subnet_id ~zones ~encryption_key ~hsm_setting ~identity
    ~maintenance_window __resource_id =
  let __resource_type = "azurerm_managed_lustre_file_system" in
  let __resource =
    ({
       id;
       location;
       name;
       resource_group_name;
       sku_name;
       storage_capacity_in_tb;
       subnet_id;
       tags;
       zones;
       encryption_key;
       hsm_setting;
       identity;
       maintenance_window;
       timeouts;
     }
      : azurerm_managed_lustre_file_system)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_managed_lustre_file_system __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       mgs_address =
         Prop.computed __resource_type __resource_id "mgs_address";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       sku_name =
         Prop.computed __resource_type __resource_id "sku_name";
       storage_capacity_in_tb =
         Prop.computed __resource_type __resource_id
           "storage_capacity_in_tb";
       subnet_id =
         Prop.computed __resource_type __resource_id "subnet_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       zones = Prop.computed __resource_type __resource_id "zones";
     }
      : t)
  in
  __resource_attributes
