(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_api_management_gateway__location_data = {
  city : string prop option; [@option]  (** city *)
  district : string prop option; [@option]  (** district *)
  name : string prop;  (** name *)
  region : string prop option; [@option]  (** region *)
}
[@@deriving yojson_of]
(** azurerm_api_management_gateway__location_data *)

type azurerm_api_management_gateway__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_gateway__timeouts *)

type azurerm_api_management_gateway = {
  api_management_id : string prop;  (** api_management_id *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  location_data : azurerm_api_management_gateway__location_data list;
  timeouts : azurerm_api_management_gateway__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_gateway *)

let azurerm_api_management_gateway ?description ?id ?timeouts
    ~api_management_id ~name ~location_data __resource_id =
  let __resource_type = "azurerm_api_management_gateway" in
  let __resource =
    {
      api_management_id;
      description;
      id;
      name;
      location_data;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_gateway __resource);
  ()
