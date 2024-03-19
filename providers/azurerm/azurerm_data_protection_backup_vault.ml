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

type azurerm_data_protection_backup_vault = {
  datastore_type : string prop;  (** datastore_type *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  redundancy : string prop;  (** redundancy *)
  resource_group_name : string prop;  (** resource_group_name *)
  retention_duration_in_days : float prop option; [@option]
      (** retention_duration_in_days *)
  soft_delete : string prop option; [@option]  (** soft_delete *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_vault *)

let identity ~type_ () : identity = { type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_protection_backup_vault ?id
    ?retention_duration_in_days ?soft_delete ?tags ?timeouts
    ~datastore_type ~location ~name ~redundancy ~resource_group_name
    ~identity () : azurerm_data_protection_backup_vault =
  {
    datastore_type;
    id;
    location;
    name;
    redundancy;
    resource_group_name;
    retention_duration_in_days;
    soft_delete;
    tags;
    identity;
    timeouts;
  }

type t = {
  datastore_type : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  redundancy : string prop;
  resource_group_name : string prop;
  retention_duration_in_days : float prop;
  soft_delete : string prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?id ?retention_duration_in_days ?soft_delete
    ?tags ?timeouts ~datastore_type ~location ~name ~redundancy
    ~resource_group_name ~identity __resource_id =
  let __resource_type = "azurerm_data_protection_backup_vault" in
  let __resource =
    azurerm_data_protection_backup_vault ?id
      ?retention_duration_in_days ?soft_delete ?tags ?timeouts
      ~datastore_type ~location ~name ~redundancy
      ~resource_group_name ~identity ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_protection_backup_vault __resource);
  let __resource_attributes =
    ({
       datastore_type =
         Prop.computed __resource_type __resource_id "datastore_type";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       redundancy =
         Prop.computed __resource_type __resource_id "redundancy";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       retention_duration_in_days =
         Prop.computed __resource_type __resource_id
           "retention_duration_in_days";
       soft_delete =
         Prop.computed __resource_type __resource_id "soft_delete";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
