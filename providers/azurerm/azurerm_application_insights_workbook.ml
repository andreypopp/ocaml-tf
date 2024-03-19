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

let register ?tf_module ?category ?description ?id ?source_id
    ?storage_container_id ?tags ?timeouts ~data_json ~display_name
    ~location ~name ~resource_group_name ~identity __resource_id =
  let __resource_type = "azurerm_application_insights_workbook" in
  let __resource =
    azurerm_application_insights_workbook ?category ?description ?id
      ?source_id ?storage_container_id ?tags ?timeouts ~data_json
      ~display_name ~location ~name ~resource_group_name ~identity ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_application_insights_workbook __resource);
  let __resource_attributes =
    ({
       category =
         Prop.computed __resource_type __resource_id "category";
       data_json =
         Prop.computed __resource_type __resource_id "data_json";
       description =
         Prop.computed __resource_type __resource_id "description";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       source_id =
         Prop.computed __resource_type __resource_id "source_id";
       storage_container_id =
         Prop.computed __resource_type __resource_id
           "storage_container_id";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
