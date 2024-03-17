(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_virtual_desktop_application_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_desktop_application_group__timeouts *)

type azurerm_virtual_desktop_application_group = {
  default_desktop_display_name : string prop option; [@option]
      (** default_desktop_display_name *)
  description : string prop option; [@option]  (** description *)
  friendly_name : string prop option; [@option]  (** friendly_name *)
  host_pool_id : string prop;  (** host_pool_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  type_ : string prop; [@key "type"]  (** type *)
  timeouts :
    azurerm_virtual_desktop_application_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_desktop_application_group *)

let azurerm_virtual_desktop_application_group
    ?default_desktop_display_name ?description ?friendly_name ?id
    ?tags ?timeouts ~host_pool_id ~location ~name
    ~resource_group_name ~type_ __resource_id =
  let __resource_type =
    "azurerm_virtual_desktop_application_group"
  in
  let __resource =
    {
      default_desktop_display_name;
      description;
      friendly_name;
      host_pool_id;
      id;
      location;
      name;
      resource_group_name;
      tags;
      type_;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_desktop_application_group __resource);
  ()
