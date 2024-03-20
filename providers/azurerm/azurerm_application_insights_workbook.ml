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

type azurerm_application_insights_workbook = {
  category : string prop option; [@option]  (** category *)
  data_json : string prop;  (** data_json *)
  description : string prop option; [@option]  (** description *)
  display_name : string prop;  (** display_name *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  source_id : string prop option; [@option]  (** source_id *)
  storage_container_id : string prop option; [@option]
      (** storage_container_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_application_insights_workbook *)

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_application_insights_workbook ?category ?description ?id
    ?source_id ?storage_container_id ?tags ?timeouts ~data_json
    ~display_name ~location ~name ~resource_group_name ~identity () :
    azurerm_application_insights_workbook =
  {
    category;
    data_json;
    description;
    display_name;
    id;
    location;
    name;
    resource_group_name;
    source_id;
    storage_container_id;
    tags;
    identity;
    timeouts;
  }

type t = {
  category : string prop;
  data_json : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  source_id : string prop;
  storage_container_id : string prop;
  tags : (string * string) list prop;
}

let make ?category ?description ?id ?source_id ?storage_container_id
    ?tags ?timeouts ~data_json ~display_name ~location ~name
    ~resource_group_name ~identity __id =
  let __type = "azurerm_application_insights_workbook" in
  let __attrs =
    ({
       category = Prop.computed __type __id "category";
       data_json = Prop.computed __type __id "data_json";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       source_id = Prop.computed __type __id "source_id";
       storage_container_id =
         Prop.computed __type __id "storage_container_id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_application_insights_workbook
        (azurerm_application_insights_workbook ?category ?description
           ?id ?source_id ?storage_container_id ?tags ?timeouts
           ~data_json ~display_name ~location ~name
           ~resource_group_name ~identity ());
    attrs = __attrs;
  }

let register ?tf_module ?category ?description ?id ?source_id
    ?storage_container_id ?tags ?timeouts ~data_json ~display_name
    ~location ~name ~resource_group_name ~identity __id =
  let (r : _ Tf_core.resource) =
    make ?category ?description ?id ?source_id ?storage_container_id
      ?tags ?timeouts ~data_json ~display_name ~location ~name
      ~resource_group_name ~identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
