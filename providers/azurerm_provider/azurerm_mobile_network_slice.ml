(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mobile_network_slice__single_network_slice_selection_assistance_information = {
  slice_differentiator : string option; [@option]
      (** slice_differentiator *)
  slice_service_type : float;  (** slice_service_type *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_slice__single_network_slice_selection_assistance_information *)

type azurerm_mobile_network_slice__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_slice__timeouts *)

type azurerm_mobile_network_slice = {
  description : string option; [@option]  (** description *)
  location : string;  (** location *)
  mobile_network_id : string;  (** mobile_network_id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  single_network_slice_selection_assistance_information :
    azurerm_mobile_network_slice__single_network_slice_selection_assistance_information
    list;
  timeouts : azurerm_mobile_network_slice__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mobile_network_slice *)

let azurerm_mobile_network_slice ?description ?tags ?timeouts
    ~location ~mobile_network_id ~name
    ~single_network_slice_selection_assistance_information
    __resource_id =
  let __resource_type = "azurerm_mobile_network_slice" in
  let __resource =
    {
      description;
      location;
      mobile_network_id;
      name;
      tags;
      single_network_slice_selection_assistance_information;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mobile_network_slice __resource);
  ()
