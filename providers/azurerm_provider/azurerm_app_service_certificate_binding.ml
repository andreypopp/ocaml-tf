(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_app_service_certificate_binding__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_app_service_certificate_binding__timeouts *)

type azurerm_app_service_certificate_binding = {
  certificate_id : string prop;  (** certificate_id *)
  hostname_binding_id : string prop;  (** hostname_binding_id *)
  id : string prop option; [@option]  (** id *)
  ssl_state : string prop;  (** ssl_state *)
  timeouts : azurerm_app_service_certificate_binding__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_certificate_binding *)

let azurerm_app_service_certificate_binding ?id ?timeouts
    ~certificate_id ~hostname_binding_id ~ssl_state __resource_id =
  let __resource_type = "azurerm_app_service_certificate_binding" in
  let __resource =
    { certificate_id; hostname_binding_id; id; ssl_state; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_service_certificate_binding __resource);
  ()
