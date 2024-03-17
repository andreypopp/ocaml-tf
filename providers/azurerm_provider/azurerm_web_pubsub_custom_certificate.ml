(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_web_pubsub_custom_certificate__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_web_pubsub_custom_certificate__timeouts *)

type azurerm_web_pubsub_custom_certificate = {
  custom_certificate_id : string;  (** custom_certificate_id *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  web_pubsub_id : string;  (** web_pubsub_id *)
  timeouts : azurerm_web_pubsub_custom_certificate__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_web_pubsub_custom_certificate *)

let azurerm_web_pubsub_custom_certificate ?id ?timeouts
    ~custom_certificate_id ~name ~web_pubsub_id __resource_id =
  let __resource_type = "azurerm_web_pubsub_custom_certificate" in
  let __resource =
    { custom_certificate_id; id; name; web_pubsub_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_web_pubsub_custom_certificate __resource);
  ()
