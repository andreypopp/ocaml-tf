(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_mobile_network__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network__timeouts *)

type azurerm_mobile_network = {
  location : string;  (** location *)
  mobile_country_code : string;  (** mobile_country_code *)
  mobile_network_code : string;  (** mobile_network_code *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_mobile_network__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mobile_network *)

let azurerm_mobile_network ?tags ?timeouts ~location
    ~mobile_country_code ~mobile_network_code ~name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_mobile_network" in
  let __resource =
    {
      location;
      mobile_country_code;
      mobile_network_code;
      name;
      resource_group_name;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mobile_network __resource);
  ()
