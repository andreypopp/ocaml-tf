(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mobile_network_sim_group__identity = {
  identity_ids : string list;  (** identity_ids *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_sim_group__identity *)

type azurerm_mobile_network_sim_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_sim_group__timeouts *)

type azurerm_mobile_network_sim_group = {
  encryption_key_url : string option; [@option]
      (** encryption_key_url *)
  location : string;  (** location *)
  mobile_network_id : string;  (** mobile_network_id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  identity : azurerm_mobile_network_sim_group__identity list;
  timeouts : azurerm_mobile_network_sim_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mobile_network_sim_group *)

let azurerm_mobile_network_sim_group ?encryption_key_url ?tags
    ?timeouts ~location ~mobile_network_id ~name ~identity
    __resource_id =
  let __resource_type = "azurerm_mobile_network_sim_group" in
  let __resource =
    {
      encryption_key_url;
      location;
      mobile_network_id;
      name;
      tags;
      identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mobile_network_sim_group __resource);
  ()
