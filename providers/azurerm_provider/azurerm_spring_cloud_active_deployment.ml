(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_spring_cloud_active_deployment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_active_deployment__timeouts *)

type azurerm_spring_cloud_active_deployment = {
  deployment_name : string;  (** deployment_name *)
  spring_cloud_app_id : string;  (** spring_cloud_app_id *)
  timeouts : azurerm_spring_cloud_active_deployment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_active_deployment *)

let azurerm_spring_cloud_active_deployment ?timeouts ~deployment_name
    ~spring_cloud_app_id __resource_id =
  let __resource_type = "azurerm_spring_cloud_active_deployment" in
  let __resource =
    { deployment_name; spring_cloud_app_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_active_deployment __resource);
  ()
