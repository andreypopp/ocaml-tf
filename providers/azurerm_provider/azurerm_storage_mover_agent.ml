(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_storage_mover_agent__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_mover_agent__timeouts *)

type azurerm_storage_mover_agent = {
  arc_virtual_machine_id : string;  (** arc_virtual_machine_id *)
  arc_virtual_machine_uuid : string;  (** arc_virtual_machine_uuid *)
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  storage_mover_id : string;  (** storage_mover_id *)
  timeouts : azurerm_storage_mover_agent__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_mover_agent *)

let azurerm_storage_mover_agent ?description ?timeouts
    ~arc_virtual_machine_id ~arc_virtual_machine_uuid ~name
    ~storage_mover_id __resource_id =
  let __resource_type = "azurerm_storage_mover_agent" in
  let __resource =
    {
      arc_virtual_machine_id;
      arc_virtual_machine_uuid;
      description;
      name;
      storage_mover_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_mover_agent __resource);
  ()
