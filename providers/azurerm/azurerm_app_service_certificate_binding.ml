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

type azurerm_app_service_certificate_binding = {
  certificate_id : string prop;  (** certificate_id *)
  hostname_binding_id : string prop;  (** hostname_binding_id *)
  id : string prop option; [@option]  (** id *)
  ssl_state : string prop;  (** ssl_state *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_certificate_binding *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_app_service_certificate_binding ?id ?timeouts
    ~certificate_id ~hostname_binding_id ~ssl_state () :
    azurerm_app_service_certificate_binding =
  { certificate_id; hostname_binding_id; id; ssl_state; timeouts }

type t = {
  app_service_name : string prop;
  certificate_id : string prop;
  hostname : string prop;
  hostname_binding_id : string prop;
  id : string prop;
  ssl_state : string prop;
  thumbprint : string prop;
}

let register ?tf_module ?id ?timeouts ~certificate_id
    ~hostname_binding_id ~ssl_state __resource_id =
  let __resource_type = "azurerm_app_service_certificate_binding" in
  let __resource =
    azurerm_app_service_certificate_binding ?id ?timeouts
      ~certificate_id ~hostname_binding_id ~ssl_state ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_service_certificate_binding __resource);
  let __resource_attributes =
    ({
       app_service_name =
         Prop.computed __resource_type __resource_id
           "app_service_name";
       certificate_id =
         Prop.computed __resource_type __resource_id "certificate_id";
       hostname =
         Prop.computed __resource_type __resource_id "hostname";
       hostname_binding_id =
         Prop.computed __resource_type __resource_id
           "hostname_binding_id";
       id = Prop.computed __resource_type __resource_id "id";
       ssl_state =
         Prop.computed __resource_type __resource_id "ssl_state";
       thumbprint =
         Prop.computed __resource_type __resource_id "thumbprint";
     }
      : t)
  in
  __resource_attributes
