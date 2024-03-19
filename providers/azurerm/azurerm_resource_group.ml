(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_resource_group = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  managed_by : string prop option; [@option]  (** managed_by *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_resource_group *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_resource_group ?id ?managed_by ?tags ?timeouts ~location
    ~name () : azurerm_resource_group =
  { id; location; managed_by; name; tags; timeouts }

type t = {
  id : string prop;
  location : string prop;
  managed_by : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?id ?managed_by ?tags ?timeouts ~location
    ~name __resource_id =
  let __resource_type = "azurerm_resource_group" in
  let __resource =
    azurerm_resource_group ?id ?managed_by ?tags ?timeouts ~location
      ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
