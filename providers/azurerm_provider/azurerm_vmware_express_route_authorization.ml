(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_vmware_express_route_authorization__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_vmware_express_route_authorization__timeouts *)

type azurerm_vmware_express_route_authorization = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  private_cloud_id : string prop;  (** private_cloud_id *)
  timeouts :
    azurerm_vmware_express_route_authorization__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_vmware_express_route_authorization *)

type t = {
  express_route_authorization_id : string prop;
  express_route_authorization_key : string prop;
  id : string prop;
  name : string prop;
  private_cloud_id : string prop;
}

let azurerm_vmware_express_route_authorization ?id ?timeouts ~name
    ~private_cloud_id __resource_id =
  let __resource_type =
    "azurerm_vmware_express_route_authorization"
  in
  let __resource =
    ({ id; name; private_cloud_id; timeouts }
      : azurerm_vmware_express_route_authorization)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_vmware_express_route_authorization __resource);
  let __resource_attributes =
    ({
       express_route_authorization_id =
         Prop.computed __resource_type __resource_id
           "express_route_authorization_id";
       express_route_authorization_key =
         Prop.computed __resource_type __resource_id
           "express_route_authorization_key";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       private_cloud_id =
         Prop.computed __resource_type __resource_id
           "private_cloud_id";
     }
      : t)
  in
  __resource_attributes
