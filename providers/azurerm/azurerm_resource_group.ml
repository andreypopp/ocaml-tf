(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_resource_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_resource_group__timeouts *)

type azurerm_resource_group = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  managed_by : string prop option; [@option]  (** managed_by *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_resource_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_resource_group *)

type t = {
  id : string prop;
  location : string prop;
  managed_by : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

let azurerm_resource_group ?id ?managed_by ?tags ?timeouts ~location
    ~name __resource_id =
  let __resource_type = "azurerm_resource_group" in
  let __resource =
    ({ id; location; managed_by; name; tags; timeouts }
      : azurerm_resource_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_resource_group __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       managed_by =
         Prop.computed __resource_type __resource_id "managed_by";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
