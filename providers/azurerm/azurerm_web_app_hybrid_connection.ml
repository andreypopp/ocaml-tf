(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_web_app_hybrid_connection__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_web_app_hybrid_connection__timeouts *)

type azurerm_web_app_hybrid_connection = {
  hostname : string prop;  (** The hostname of the endpoint. *)
  id : string prop option; [@option]  (** id *)
  port : float prop;  (** The port to use for the endpoint *)
  relay_id : string prop;
      (** The ID of the Relay Hybrid Connection to use. *)
  send_key_name : string prop option; [@option]
      (** The name of the Relay key with `Send` permission to use. Defaults to `RootManageSharedAccessKey` *)
  web_app_id : string prop;
      (** The ID of the Web App for this Hybrid Connection. *)
  timeouts : azurerm_web_app_hybrid_connection__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_web_app_hybrid_connection *)

type t = {
  hostname : string prop;
  id : string prop;
  namespace_name : string prop;
  port : float prop;
  relay_id : string prop;
  relay_name : string prop;
  send_key_name : string prop;
  send_key_value : string prop;
  service_bus_namespace : string prop;
  service_bus_suffix : string prop;
  web_app_id : string prop;
}

let azurerm_web_app_hybrid_connection ?id ?send_key_name ?timeouts
    ~hostname ~port ~relay_id ~web_app_id __resource_id =
  let __resource_type = "azurerm_web_app_hybrid_connection" in
  let __resource =
    ({
       hostname;
       id;
       port;
       relay_id;
       send_key_name;
       web_app_id;
       timeouts;
     }
      : azurerm_web_app_hybrid_connection)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_web_app_hybrid_connection __resource);
  let __resource_attributes =
    ({
       hostname =
         Prop.computed __resource_type __resource_id "hostname";
       id = Prop.computed __resource_type __resource_id "id";
       namespace_name =
         Prop.computed __resource_type __resource_id "namespace_name";
       port = Prop.computed __resource_type __resource_id "port";
       relay_id =
         Prop.computed __resource_type __resource_id "relay_id";
       relay_name =
         Prop.computed __resource_type __resource_id "relay_name";
       send_key_name =
         Prop.computed __resource_type __resource_id "send_key_name";
       send_key_value =
         Prop.computed __resource_type __resource_id "send_key_value";
       service_bus_namespace =
         Prop.computed __resource_type __resource_id
           "service_bus_namespace";
       service_bus_suffix =
         Prop.computed __resource_type __resource_id
           "service_bus_suffix";
       web_app_id =
         Prop.computed __resource_type __resource_id "web_app_id";
     }
      : t)
  in
  __resource_attributes
