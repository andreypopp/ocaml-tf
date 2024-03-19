(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_api_management_api_schema = {
  api_management_name : string prop;  (** api_management_name *)
  api_name : string prop;  (** api_name *)
  components : string prop option; [@option]  (** components *)
  content_type : string prop;  (** content_type *)
  definitions : string prop option; [@option]  (** definitions *)
  id : string prop option; [@option]  (** id *)
  resource_group_name : string prop;  (** resource_group_name *)
  schema_id : string prop;  (** schema_id *)
  value : string prop option; [@option]  (** value *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_api_schema *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_api_schema ?components ?definitions ?id
    ?value ?timeouts ~api_management_name ~api_name ~content_type
    ~resource_group_name ~schema_id () :
    azurerm_api_management_api_schema =
  {
    api_management_name;
    api_name;
    components;
    content_type;
    definitions;
    id;
    resource_group_name;
    schema_id;
    value;
    timeouts;
  }

type t = {
  api_management_name : string prop;
  api_name : string prop;
  components : string prop;
  content_type : string prop;
  definitions : string prop;
  id : string prop;
  resource_group_name : string prop;
  schema_id : string prop;
  value : string prop;
}

let register ?tf_module ?components ?definitions ?id ?value ?timeouts
    ~api_management_name ~api_name ~content_type ~resource_group_name
    ~schema_id __resource_id =
  let __resource_type = "azurerm_api_management_api_schema" in
  let __resource =
    azurerm_api_management_api_schema ?components ?definitions ?id
      ?value ?timeouts ~api_management_name ~api_name ~content_type
      ~resource_group_name ~schema_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_api_schema __resource);
  let __resource_attributes =
    ({
       api_management_name =
         Prop.computed __resource_type __resource_id
           "api_management_name";
       api_name =
         Prop.computed __resource_type __resource_id "api_name";
       components =
         Prop.computed __resource_type __resource_id "components";
       content_type =
         Prop.computed __resource_type __resource_id "content_type";
       definitions =
         Prop.computed __resource_type __resource_id "definitions";
       id = Prop.computed __resource_type __resource_id "id";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       schema_id =
         Prop.computed __resource_type __resource_id "schema_id";
       value = Prop.computed __resource_type __resource_id "value";
     }
      : t)
  in
  __resource_attributes
