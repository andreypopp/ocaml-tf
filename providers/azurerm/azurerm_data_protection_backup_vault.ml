(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?retention_duration_in_days ?soft_delete ?tags ?timeouts
    ~datastore_type ~location ~name ~redundancy ~resource_group_name
    ~identity __id =
  let __type = "azurerm_data_protection_backup_vault" in
  let __attrs =
    ({
       datastore_type = Prop.computed __type __id "datastore_type";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       redundancy = Prop.computed __type __id "redundancy";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       retention_duration_in_days =
         Prop.computed __type __id "retention_duration_in_days";
       soft_delete = Prop.computed __type __id "soft_delete";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_protection_backup_vault
        (azurerm_data_protection_backup_vault ?id
           ?retention_duration_in_days ?soft_delete ?tags ?timeouts
           ~datastore_type ~location ~name ~redundancy
           ~resource_group_name ~identity ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?retention_duration_in_days ?soft_delete
    ?tags ?timeouts ~datastore_type ~location ~name ~redundancy
    ~resource_group_name ~identity __id =
  let (r : _ Tf_core.resource) =
    make ?id ?retention_duration_in_days ?soft_delete ?tags ?timeouts
      ~datastore_type ~location ~name ~redundancy
      ~resource_group_name ~identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
