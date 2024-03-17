(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_app_service_managed_certificate__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_app_service_managed_certificate__timeouts *)

type azurerm_app_service_managed_certificate = {
  custom_hostname_binding_id : string prop;
      (** custom_hostname_binding_id *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_app_service_managed_certificate__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_managed_certificate *)

let azurerm_app_service_managed_certificate ?id ?tags ?timeouts
    ~custom_hostname_binding_id __resource_id =
  let __resource_type = "azurerm_app_service_managed_certificate" in
  let __resource =
    { custom_hostname_binding_id; id; tags; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_service_managed_certificate __resource);
  ()
