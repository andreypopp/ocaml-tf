(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_signalr_service_custom_certificate__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_signalr_service_custom_certificate__timeouts *)

type azurerm_signalr_service_custom_certificate = {
  custom_certificate_id : string;  (** custom_certificate_id *)
  name : string;  (** name *)
  signalr_service_id : string;  (** signalr_service_id *)
  timeouts :
    azurerm_signalr_service_custom_certificate__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_signalr_service_custom_certificate *)

let azurerm_signalr_service_custom_certificate ?timeouts
    ~custom_certificate_id ~name ~signalr_service_id __resource_id =
  let __resource_type =
    "azurerm_signalr_service_custom_certificate"
  in
  let __resource =
    { custom_certificate_id; name; signalr_service_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_signalr_service_custom_certificate __resource);
  ()
