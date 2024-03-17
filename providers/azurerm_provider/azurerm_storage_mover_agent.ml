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

let azurerm_storage_mover_agent ?description ?id ?timeouts
    ~arc_virtual_machine_id ~arc_virtual_machine_uuid ~name
    ~storage_mover_id __resource_id =
  let __resource_type = "azurerm_storage_mover_agent" in
  let __resource =
    {
      arc_virtual_machine_id;
      arc_virtual_machine_uuid;
      description;
      id;
      name;
      storage_mover_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_mover_agent __resource);
  ()
