(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mobile_network_data_network__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_data_network__timeouts *)

type azurerm_mobile_network_data_network = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  mobile_network_id : string prop;  (** mobile_network_id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
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
