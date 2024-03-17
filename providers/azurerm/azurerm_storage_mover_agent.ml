(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_storage_mover_agent__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_mover_agent__timeouts *)

type azurerm_storage_mover_agent = {
  arc_virtual_machine_id : string prop;
      (** arc_virtual_machine_id *)
  arc_virtual_machine_uuid : string prop;
      (** arc_virtual_machine_uuid *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  storage_mover_id : string prop;  (** storage_mover_id *)
  timeouts : azurerm_storage_mover_agent__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_mover_agent *)

type t = {
  arc_virtual_machine_id : string prop;
  arc_virtual_machine_uuid : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  storage_mover_id : string prop;
}

let azurerm_storage_mover_agent ?description ?id ?timeouts
    ~arc_virtual_machine_id ~arc_virtual_machine_uuid ~name
    ~storage_mover_id __resource_id =
  let __resource_type = "azurerm_storage_mover_agent" in
  let __resource =
    ({
       arc_virtual_machine_id;
       arc_virtual_machine_uuid;
       description;
       id;
       name;
       storage_mover_id;
       timeouts;
     }
      : azurerm_storage_mover_agent)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_mover_agent __resource);
  let __resource_attributes =
    ({
       arc_virtual_machine_id =
         Prop.computed __resource_type __resource_id
           "arc_virtual_machine_id";
       arc_virtual_machine_uuid =
         Prop.computed __resource_type __resource_id
           "arc_virtual_machine_uuid";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       storage_mover_id =
         Prop.computed __resource_type __resource_id
           "storage_mover_id";
     }
      : t)
  in
  __resource_attributes
