(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_api_management_api_tag_description__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_api_tag_description__timeouts *)

type azurerm_api_management_api_tag_description = {
  api_tag_id : string;  (** api_tag_id *)
  description : string option; [@option]  (** description *)
  external_documentation_description : string option; [@option]
      (** external_documentation_description *)
  external_documentation_url : string option; [@option]
      (** external_documentation_url *)
  timeouts :
    azurerm_api_management_api_tag_description__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_api_tag_description *)

let azurerm_api_management_api_tag_description ?description
    ?external_documentation_description ?external_documentation_url
    ?timeouts ~api_tag_id __resource_id =
  let __resource_type =
    "azurerm_api_management_api_tag_description"
  in
  let __resource =
    {
      api_tag_id;
      description;
      external_documentation_description;
      external_documentation_url;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_api_tag_description __resource);
  ()
