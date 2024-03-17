(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_api_version_set__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_api_version_set__timeouts *)

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
  timeouts : azurerm_api_management_api_version_set__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_api_version_set *)

let azurerm_api_management_api_version_set ?description ?id
    ?version_header_name ?version_query_name ?timeouts
    ~api_management_name ~display_name ~name ~resource_group_name
    ~versioning_scheme __resource_id =
  let __resource_type = "azurerm_api_management_api_version_set" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_api_version_set __resource);
  ()
