(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_orbital_spacecraft__links = {
  bandwidth_mhz : float;  (** bandwidth_mhz *)
  center_frequency_mhz : float;  (** center_frequency_mhz *)
  direction : string;  (** direction *)
  name : string;  (** name *)
  polarization : string;  (** polarization *)
}
[@@deriving yojson_of]
(** azurerm_orbital_spacecraft__links *)

type azurerm_orbital_spacecraft__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_orbital_spacecraft__timeouts *)

type azurerm_orbital_spacecraft = {
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  norad_id : string;  (** norad_id *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  title_line : string;  (** title_line *)
  two_line_elements : string list;  (** two_line_elements *)
  links : azurerm_orbital_spacecraft__links list;
  timeouts : azurerm_orbital_spacecraft__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_orbital_spacecraft *)

let azurerm_orbital_spacecraft ?id ?tags ?timeouts ~location ~name
    ~norad_id ~resource_group_name ~title_line ~two_line_elements
    ~links __resource_id =
  let __resource_type = "azurerm_orbital_spacecraft" in
  let __resource =
    {
      id;
      location;
      name;
      norad_id;
      resource_group_name;
      tags;
      title_line;
      two_line_elements;
      links;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_orbital_spacecraft __resource);
  ()
