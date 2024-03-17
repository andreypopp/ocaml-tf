(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_voice_services_communications_gateway_test_line__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_voice_services_communications_gateway_test_line__timeouts *)

type azurerm_voice_services_communications_gateway_test_line = {
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  phone_number : string;  (** phone_number *)
  purpose : string;  (** purpose *)
  tags : (string * string) list option; [@option]  (** tags *)
  voice_services_communications_gateway_id : string;
      (** voice_services_communications_gateway_id *)
  timeouts :
    azurerm_voice_services_communications_gateway_test_line__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_voice_services_communications_gateway_test_line *)

let azurerm_voice_services_communications_gateway_test_line ?id ?tags
    ?timeouts ~location ~name ~phone_number ~purpose
    ~voice_services_communications_gateway_id __resource_id =
  let __resource_type =
    "azurerm_voice_services_communications_gateway_test_line"
  in
  let __resource =
    {
      id;
      location;
      name;
      phone_number;
      purpose;
      tags;
      voice_services_communications_gateway_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_voice_services_communications_gateway_test_line
       __resource);
  ()
