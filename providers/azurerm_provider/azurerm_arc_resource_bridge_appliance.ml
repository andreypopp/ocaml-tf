(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_arc_resource_bridge_appliance__identity = {
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_arc_resource_bridge_appliance__identity *)

type azurerm_arc_resource_bridge_appliance__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_arc_resource_bridge_appliance__timeouts *)

type azurerm_arc_resource_bridge_appliance = {
  distro : string prop;  (** distro *)
  id : string prop option; [@option]  (** id *)
  infrastructure_provider : string prop;
      (** infrastructure_provider *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  public_key_base64 : string prop option; [@option]
      (** public_key_base64 *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity : azurerm_arc_resource_bridge_appliance__identity list;
  timeouts : azurerm_arc_resource_bridge_appliance__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_arc_resource_bridge_appliance *)

let azurerm_arc_resource_bridge_appliance ?id ?public_key_base64
    ?tags ?timeouts ~distro ~infrastructure_provider ~location ~name
    ~resource_group_name ~identity __resource_id =
  let __resource_type = "azurerm_arc_resource_bridge_appliance" in
  let __resource =
    {
      distro;
      id;
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
