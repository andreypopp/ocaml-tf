(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_arc_resource_bridge_appliance__identity = {
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_arc_resource_bridge_appliance__identity *)

type azurerm_arc_resource_bridge_appliance__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_arc_resource_bridge_appliance__timeouts *)

type azurerm_arc_resource_bridge_appliance = {
  distro : string;  (** distro *)
  infrastructure_provider : string;  (** infrastructure_provider *)
  location : string;  (** location *)
  name : string;  (** name *)
  public_key_base64 : string option; [@option]
      (** public_key_base64 *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  identity : azurerm_arc_resource_bridge_appliance__identity list;
  timeouts : azurerm_arc_resource_bridge_appliance__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_arc_resource_bridge_appliance *)

let azurerm_arc_resource_bridge_appliance ?public_key_base64 ?tags
    ?timeouts ~distro ~infrastructure_provider ~location ~name
    ~resource_group_name ~identity __resource_id =
  let __resource_type = "azurerm_arc_resource_bridge_appliance" in
  let __resource =
    {
      distro;
      infrastructure_provider;
      location;
      name;
      public_key_base64;
      resource_group_name;
      tags;
      identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_arc_resource_bridge_appliance __resource);
  ()
