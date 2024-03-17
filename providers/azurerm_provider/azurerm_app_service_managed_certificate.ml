(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_app_service_managed_certificate__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_app_service_managed_certificate__timeouts *)

type azurerm_app_service_managed_certificate = {
  custom_hostname_binding_id : string;
      (** custom_hostname_binding_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_app_service_managed_certificate__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_managed_certificate *)

let azurerm_app_service_managed_certificate ?tags ?timeouts
    ~custom_hostname_binding_id __resource_id =
  let __resource_type = "azurerm_app_service_managed_certificate" in
  let __resource = { custom_hostname_binding_id; tags; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_service_managed_certificate __resource);
  ()
