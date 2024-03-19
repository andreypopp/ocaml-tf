(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_api_management_gateway_host_name_configuration = {
  api_management_id : string prop;  (** api_management_id *)
  certificate_id : string prop;  (** certificate_id *)
  gateway_name : string prop;  (** gateway_name *)
  host_name : string prop;  (** host_name *)
  http2_enabled : bool prop option; [@option]  (** http2_enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  request_client_certificate_enabled : bool prop option; [@option]
      (** request_client_certificate_enabled *)
  tls10_enabled : bool prop option; [@option]  (** tls10_enabled *)
  tls11_enabled : bool prop option; [@option]  (** tls11_enabled *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_gateway_host_name_configuration *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_gateway_host_name_configuration
    ?http2_enabled ?id ?request_client_certificate_enabled
    ?tls10_enabled ?tls11_enabled ?timeouts ~api_management_id
    ~certificate_id ~gateway_name ~host_name ~name () :
    azurerm_api_management_gateway_host_name_configuration =
  {
    api_management_id;
    certificate_id;
    gateway_name;
    host_name;
    http2_enabled;
    id;
    name;
    request_client_certificate_enabled;
    tls10_enabled;
    tls11_enabled;
    timeouts;
  }

type t = {
  api_management_id : string prop;
  certificate_id : string prop;
  gateway_name : string prop;
  host_name : string prop;
  http2_enabled : bool prop;
  id : string prop;
  name : string prop;
  request_client_certificate_enabled : bool prop;
  tls10_enabled : bool prop;
  tls11_enabled : bool prop;
}

let register ?tf_module ?http2_enabled ?id
    ?request_client_certificate_enabled ?tls10_enabled ?tls11_enabled
    ?timeouts ~api_management_id ~certificate_id ~gateway_name
    ~host_name ~name __resource_id =
  let __resource_type =
    "azurerm_api_management_gateway_host_name_configuration"
  in
  let __resource =
    azurerm_api_management_gateway_host_name_configuration
      ?http2_enabled ?id ?request_client_certificate_enabled
      ?tls10_enabled ?tls11_enabled ?timeouts ~api_management_id
      ~certificate_id ~gateway_name ~host_name ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_gateway_host_name_configuration
       __resource);
  let __resource_attributes =
    ({
       api_management_id =
         Prop.computed __resource_type __resource_id
           "api_management_id";
       certificate_id =
         Prop.computed __resource_type __resource_id "certificate_id";
       gateway_name =
         Prop.computed __resource_type __resource_id "gateway_name";
       host_name =
         Prop.computed __resource_type __resource_id "host_name";
       http2_enabled =
         Prop.computed __resource_type __resource_id "http2_enabled";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       request_client_certificate_enabled =
         Prop.computed __resource_type __resource_id
           "request_client_certificate_enabled";
       tls10_enabled =
         Prop.computed __resource_type __resource_id "tls10_enabled";
       tls11_enabled =
         Prop.computed __resource_type __resource_id "tls11_enabled";
     }
      : t)
  in
  __resource_attributes
