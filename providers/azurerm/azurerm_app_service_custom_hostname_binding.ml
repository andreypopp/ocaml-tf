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

type azurerm_app_service_custom_hostname_binding = {
  app_service_name : string prop;  (** app_service_name *)
  hostname : string prop;  (** hostname *)
  id : string prop option; [@option]  (** id *)
  resource_group_name : string prop;  (** resource_group_name *)
  ssl_state : string prop option; [@option]  (** ssl_state *)
  thumbprint : string prop option; [@option]  (** thumbprint *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_custom_hostname_binding *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_app_service_custom_hostname_binding ?id ?ssl_state
    ?thumbprint ?timeouts ~app_service_name ~hostname
    ~resource_group_name () :
    azurerm_app_service_custom_hostname_binding =
  {
    app_service_name;
    hostname;
    id;
    resource_group_name;
    ssl_state;
    thumbprint;
    timeouts;
  }

type t = {
  app_service_name : string prop;
  hostname : string prop;
  id : string prop;
  resource_group_name : string prop;
  ssl_state : string prop;
  thumbprint : string prop;
  virtual_ip : string prop;
}

let register ?tf_module ?id ?ssl_state ?thumbprint ?timeouts
    ~app_service_name ~hostname ~resource_group_name __resource_id =
  let __resource_type =
    "azurerm_app_service_custom_hostname_binding"
  in
  let __resource =
    azurerm_app_service_custom_hostname_binding ?id ?ssl_state
      ?thumbprint ?timeouts ~app_service_name ~hostname
      ~resource_group_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_service_custom_hostname_binding __resource);
  let __resource_attributes =
    ({
       app_service_name =
         Prop.computed __resource_type __resource_id
           "app_service_name";
       hostname =
         Prop.computed __resource_type __resource_id "hostname";
       id = Prop.computed __resource_type __resource_id "id";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       ssl_state =
         Prop.computed __resource_type __resource_id "ssl_state";
       thumbprint =
         Prop.computed __resource_type __resource_id "thumbprint";
       virtual_ip =
         Prop.computed __resource_type __resource_id "virtual_ip";
     }
      : t)
  in
  __resource_attributes
