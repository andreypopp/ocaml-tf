(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_storage_mover_target_endpoint__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_mover_target_endpoint__timeouts *)

type azurerm_storage_mover_target_endpoint = {
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  storage_account_id : string;  (** storage_account_id *)
  storage_container_name : string;  (** storage_container_name *)
  storage_mover_id : string;  (** storage_mover_id *)
  timeouts : azurerm_storage_mover_target_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_mover_target_endpoint *)

let azurerm_storage_mover_target_endpoint ?description ?id ?timeouts
    ~name ~storage_account_id ~storage_container_name
    ~storage_mover_id __resource_id =
  let __resource_type = "azurerm_storage_mover_target_endpoint" in
  let __resource =
    {
      description;
      id;
      name;
      storage_account_id;
      storage_container_name;
      storage_mover_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_mover_target_endpoint __resource);
  ()
