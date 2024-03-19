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

type azurerm_api_management_api_version_set = {
  api_management_name : string prop;  (** api_management_name *)
  description : string prop option; [@option]  (** description *)
  display_name : string prop;  (** display_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  version_header_name : string prop option; [@option]
      (** version_header_name *)
  version_query_name : string prop option; [@option]
      (** version_query_name *)
  versioning_scheme : string prop;  (** versioning_scheme *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_api_version_set *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_api_version_set ?description ?id
    ?version_header_name ?version_query_name ?timeouts
    ~api_management_name ~display_name ~name ~resource_group_name
    ~versioning_scheme () : azurerm_api_management_api_version_set =
  {
    api_management_name;
    description;
    display_name;
    id;
    name;
    resource_group_name;
    version_header_name;
    version_query_name;
    versioning_scheme;
    timeouts;
  }

type t = {
  api_management_name : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  version_header_name : string prop;
  version_query_name : string prop;
  versioning_scheme : string prop;
}

let register ?tf_module ?description ?id ?version_header_name
    ?version_query_name ?timeouts ~api_management_name ~display_name
    ~name ~resource_group_name ~versioning_scheme __resource_id =
  let __resource_type = "azurerm_api_management_api_version_set" in
  let __resource =
    azurerm_api_management_api_version_set ?description ?id
      ?version_header_name ?version_query_name ?timeouts
      ~api_management_name ~display_name ~name ~resource_group_name
      ~versioning_scheme ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_api_version_set __resource);
  let __resource_attributes =
    ({
       api_management_name =
         Prop.computed __resource_type __resource_id
           "api_management_name";
       description =
         Prop.computed __resource_type __resource_id "description";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       version_header_name =
         Prop.computed __resource_type __resource_id
           "version_header_name";
       version_query_name =
         Prop.computed __resource_type __resource_id
           "version_query_name";
       versioning_scheme =
         Prop.computed __resource_type __resource_id
           "versioning_scheme";
     }
      : t)
  in
  __resource_attributes
