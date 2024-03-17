(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_network_ddos_protection_plan__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_network_ddos_protection_plan__timeouts *)

type azurerm_network_ddos_protection_plan = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_network_ddos_protection_plan__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_network_ddos_protection_plan *)

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  virtual_network_ids : string list prop;
}

let azurerm_network_ddos_protection_plan ?id ?tags ?timeouts
    ~location ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_network_ddos_protection_plan" in
  let __resource =
    ({ id; location; name; resource_group_name; tags; timeouts }
      : azurerm_network_ddos_protection_plan)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_network_ddos_protection_plan __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       virtual_network_ids =
         Prop.computed __resource_type __resource_id
           "virtual_network_ids";
     }
      : t)
  in
  __resource_attributes
