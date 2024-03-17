(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_managed_application_definition__authorization = {
  role_definition_id : string;  (** role_definition_id *)
  service_principal_id : string;  (** service_principal_id *)
}
[@@deriving yojson_of]
(** azurerm_managed_application_definition__authorization *)

type azurerm_managed_application_definition__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_managed_application_definition__timeouts *)

type azurerm_managed_application_definition = {
  create_ui_definition : string option; [@option]
      (** create_ui_definition *)
  description : string option; [@option]  (** description *)
  display_name : string;  (** display_name *)
  location : string;  (** location *)
  lock_level : string;  (** lock_level *)
  main_template : string option; [@option]  (** main_template *)
  name : string;  (** name *)
  package_enabled : bool option; [@option]  (** package_enabled *)
  package_file_uri : string option; [@option]
      (** package_file_uri *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  authorization :
    azurerm_managed_application_definition__authorization list;
  timeouts : azurerm_managed_application_definition__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_managed_application_definition *)

let azurerm_managed_application_definition ?create_ui_definition
    ?description ?main_template ?package_enabled ?package_file_uri
    ?tags ?timeouts ~display_name ~location ~lock_level ~name
    ~resource_group_name ~authorization __resource_id =
  let __resource_type = "azurerm_managed_application_definition" in
  let __resource =
    {
      create_ui_definition;
      description;
      display_name;
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
