(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_storage_mover_project__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_mover_project__timeouts *)

type azurerm_storage_mover_project = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  storage_mover_id : string prop;  (** storage_mover_id *)
  timeouts : azurerm_storage_mover_project__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_mover_project *)

let azurerm_storage_mover_project ?description ?id ?timeouts ~name
    ~storage_mover_id __resource_id =
  let __resource_type = "azurerm_storage_mover_project" in
  let __resource =
    { description; id; name; storage_mover_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_mover_project __resource);
  ()
