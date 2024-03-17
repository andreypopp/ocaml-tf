(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_managed_application_definition__authorization = {
  role_definition_id : string prop;  (** role_definition_id *)
  service_principal_id : string prop;  (** service_principal_id *)
}
[@@deriving yojson_of]
(** azurerm_managed_application_definition__authorization *)

type azurerm_managed_application_definition__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_managed_application_definition__timeouts *)

type azurerm_managed_application_definition = {
  create_ui_definition : string prop option; [@option]
      (** create_ui_definition *)
  description : string prop option; [@option]  (** description *)
  display_name : string prop;  (** display_name *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  lock_level : string prop;  (** lock_level *)
  main_template : string prop option; [@option]  (** main_template *)
  name : string prop;  (** name *)
  package_enabled : bool prop option; [@option]
      (** package_enabled *)
  package_file_uri : string prop option; [@option]
      (** package_file_uri *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  authorization :
    azurerm_managed_application_definition__authorization list;
  timeouts : azurerm_managed_application_definition__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_managed_application_definition *)

let azurerm_managed_application_definition ?create_ui_definition
    ?description ?id ?main_template ?package_enabled
    ?package_file_uri ?tags ?timeouts ~display_name ~location
    ~lock_level ~name ~resource_group_name ~authorization
    __resource_id =
  let __resource_type = "azurerm_managed_application_definition" in
  let __resource =
    {
      create_ui_definition;
      description;
      display_name;
      id;
      location;
      lock_level;
      main_template;
      name;
      package_enabled;
      package_file_uri;
      resource_group_name;
      tags;
      authorization;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_managed_application_definition __resource);
  ()
