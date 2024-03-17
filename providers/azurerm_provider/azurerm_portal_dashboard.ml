(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_portal_dashboard__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_portal_dashboard__timeouts *)

type azurerm_portal_dashboard = {
  dashboard_properties : string prop;  (** dashboard_properties *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_portal_dashboard__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_portal_dashboard *)

let azurerm_portal_dashboard ?id ?tags ?timeouts
    ~dashboard_properties ~location ~name ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_portal_dashboard" in
  let __resource =
    {
      dashboard_properties;
      id;
      location;
      name;
      resource_group_name;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_portal_dashboard __resource);
  ()
