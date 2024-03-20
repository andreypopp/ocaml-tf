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

type azurerm_database_migration_project = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  service_name : string prop;  (** service_name *)
  source_platform : string prop;  (** source_platform *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  target_platform : string prop;  (** target_platform *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_database_migration_project *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_database_migration_project ?id ?tags ?timeouts ~location
    ~name ~resource_group_name ~service_name ~source_platform
    ~target_platform () : azurerm_database_migration_project =
  {
    id;
    location;
    name;
    resource_group_name;
    service_name;
    source_platform;
    tags;
    target_platform;
    timeouts;
  }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  service_name : string prop;
  source_platform : string prop;
  tags : (string * string) list prop;
  target_platform : string prop;
}

let make ?id ?tags ?timeouts ~location ~name ~resource_group_name
    ~service_name ~source_platform ~target_platform __id =
  let __type = "azurerm_database_migration_project" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       service_name = Prop.computed __type __id "service_name";
       source_platform = Prop.computed __type __id "source_platform";
       tags = Prop.computed __type __id "tags";
       target_platform = Prop.computed __type __id "target_platform";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_database_migration_project
        (azurerm_database_migration_project ?id ?tags ?timeouts
           ~location ~name ~resource_group_name ~service_name
           ~source_platform ~target_platform ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~service_name ~source_platform
    ~target_platform __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~location ~name ~resource_group_name
      ~service_name ~source_platform ~target_platform __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
