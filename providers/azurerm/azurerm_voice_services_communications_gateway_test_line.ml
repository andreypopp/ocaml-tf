(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_voice_services_communications_gateway_test_line__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_voice_services_communications_gateway_test_line__timeouts *)

type azurerm_voice_services_communications_gateway_test_line = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  phone_number : string prop;  (** phone_number *)
  purpose : string prop;  (** purpose *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  voice_services_communications_gateway_id : string prop;
      (** voice_services_communications_gateway_id *)
  timeouts :
    azurerm_voice_services_communications_gateway_test_line__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_voice_services_communications_gateway_test_line *)

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  phone_number : string prop;
  purpose : string prop;
  tags : (string * string) list prop;
  voice_services_communications_gateway_id : string prop;
}

let azurerm_voice_services_communications_gateway_test_line ?id ?tags
    ?timeouts ~location ~name ~phone_number ~purpose
    ~voice_services_communications_gateway_id __resource_id =
  let __resource_type =
    "azurerm_voice_services_communications_gateway_test_line"
  in
  let __resource =
    ({
       id;
       location;
       name;
       phone_number;
       purpose;
       tags;
       voice_services_communications_gateway_id;
       timeouts;
     }
      : azurerm_voice_services_communications_gateway_test_line)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_voice_services_communications_gateway_test_line
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       phone_number =
         Prop.computed __resource_type __resource_id "phone_number";
       purpose =
         Prop.computed __resource_type __resource_id "purpose";
       tags = Prop.computed __resource_type __resource_id "tags";
       voice_services_communications_gateway_id =
         Prop.computed __resource_type __resource_id
           "voice_services_communications_gateway_id";
     }
      : t)
  in
  __resource_attributes
