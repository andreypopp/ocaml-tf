(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_fluid_relay_server__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_fluid_relay_server__identity *)

type azurerm_fluid_relay_server__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_fluid_relay_server__timeouts *)

type azurerm_fluid_relay_server = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  storage_sku : string prop option; [@option]  (** storage_sku *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity : azurerm_fluid_relay_server__identity list;
  timeouts : azurerm_fluid_relay_server__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_fluid_relay_server *)

let azurerm_fluid_relay_server ?id ?storage_sku ?tags ?timeouts
    ~location ~name ~resource_group_name ~identity __resource_id =
  let __resource_type = "azurerm_fluid_relay_server" in
  let __resource =
    {
      id;
      location;
      name;
      resource_group_name;
      storage_sku;
      tags;
      identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_fluid_relay_server __resource);
  ()
