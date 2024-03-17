(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_spring_cloud_accelerator__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_accelerator__timeouts *)

type azurerm_spring_cloud_accelerator = {
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  spring_cloud_service_id : string;  (** spring_cloud_service_id *)
  timeouts : azurerm_spring_cloud_accelerator__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_accelerator *)

let azurerm_spring_cloud_accelerator ?id ?timeouts ~name
    ~spring_cloud_service_id __resource_id =
  let __resource_type = "azurerm_spring_cloud_accelerator" in
  let __resource = { id; name; spring_cloud_service_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_accelerator __resource);
  ()
