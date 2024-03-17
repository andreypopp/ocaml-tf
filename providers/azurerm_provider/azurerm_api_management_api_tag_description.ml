(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_api_tag_description__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_api_tag_description__timeouts *)

type azurerm_api_management_api_tag_description = {
  api_tag_id : string prop;  (** api_tag_id *)
  description : string prop option; [@option]  (** description *)
  external_documentation_description : string prop option; [@option]
      (** external_documentation_description *)
  external_documentation_url : string prop option; [@option]
      (** external_documentation_url *)
  id : string prop option; [@option]  (** id *)
  timeouts :
    azurerm_api_management_api_tag_description__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_api_tag_description *)

type t = {
  api_tag_id : string prop;
  description : string prop;
  external_documentation_description : string prop;
  external_documentation_url : string prop;
  id : string prop;
}

let azurerm_api_management_api_tag_description ?description
    ?external_documentation_description ?external_documentation_url
    ?id ?timeouts ~api_tag_id __resource_id =
  let __resource_type =
    "azurerm_api_management_api_tag_description"
  in
  let __resource =
    ({
       api_tag_id;
       description;
       external_documentation_description;
       external_documentation_url;
       id;
       timeouts;
     }
      : azurerm_api_management_api_tag_description)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_api_tag_description __resource);
  let __resource_attributes =
    ({
       api_tag_id =
         Prop.computed __resource_type __resource_id "api_tag_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       external_documentation_description =
         Prop.computed __resource_type __resource_id
           "external_documentation_description";
       external_documentation_url =
         Prop.computed __resource_type __resource_id
           "external_documentation_url";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
