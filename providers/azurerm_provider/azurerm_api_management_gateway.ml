(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_api_management_gateway__location_data = {
  city : string option; [@option]  (** city *)
  district : string option; [@option]  (** district *)
  name : string;  (** name *)
  region : string option; [@option]  (** region *)
}
[@@deriving yojson_of]
(** azurerm_api_management_gateway__location_data *)

type azurerm_api_management_gateway__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_api_management_gateway__timeouts *)

type azurerm_api_management_gateway = {
  api_management_id : string;  (** api_management_id *)
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  location_data : azurerm_api_management_gateway__location_data list;
  timeouts : azurerm_api_management_gateway__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_gateway *)

let azurerm_api_management_gateway ?description ?timeouts
    ~api_management_id ~name ~location_data __resource_id =
  let __resource_type = "azurerm_api_management_gateway" in
  let __resource =
    { api_management_id; description; name; location_data; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_gateway __resource);
  ()
