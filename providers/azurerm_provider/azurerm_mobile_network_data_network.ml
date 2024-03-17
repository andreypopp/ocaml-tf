(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mobile_network_data_network__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_data_network__timeouts *)

type azurerm_mobile_network_data_network = {
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  mobile_network_id : string;  (** mobile_network_id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_mobile_network_data_network__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mobile_network_data_network *)

let azurerm_mobile_network_data_network ?description ?id ?tags
    ?timeouts ~location ~mobile_network_id ~name __resource_id =
  let __resource_type = "azurerm_mobile_network_data_network" in
  let __resource =
    {
      description;
      id;
      location;
      mobile_network_id;
      name;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mobile_network_data_network __resource);
  ()
