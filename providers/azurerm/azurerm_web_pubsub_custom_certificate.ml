(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_web_pubsub_custom_certificate = {
  custom_certificate_id : string prop;  (** custom_certificate_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  web_pubsub_id : string prop;  (** web_pubsub_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_web_pubsub_custom_certificate *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_web_pubsub_custom_certificate ?id ?timeouts
    ~custom_certificate_id ~name ~web_pubsub_id () :
    azurerm_web_pubsub_custom_certificate =
  { custom_certificate_id; id; name; web_pubsub_id; timeouts }

type t = {
  certificate_version : string prop;
  custom_certificate_id : string prop;
  id : string prop;
  name : string prop;
  web_pubsub_id : string prop;
}

let register ?tf_module ?id ?timeouts ~custom_certificate_id ~name
    ~web_pubsub_id __resource_id =
  let __resource_type = "azurerm_web_pubsub_custom_certificate" in
  let __resource =
    azurerm_web_pubsub_custom_certificate ?id ?timeouts
      ~custom_certificate_id ~name ~web_pubsub_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_web_pubsub_custom_certificate __resource);
  let __resource_attributes =
    ({
       certificate_version =
         Prop.computed __resource_type __resource_id
           "certificate_version";
       custom_certificate_id =
         Prop.computed __resource_type __resource_id
           "custom_certificate_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       web_pubsub_id =
         Prop.computed __resource_type __resource_id "web_pubsub_id";
     }
      : t)
  in
  __resource_attributes
