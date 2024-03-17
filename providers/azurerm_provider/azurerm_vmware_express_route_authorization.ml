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

let azurerm_vmware_express_route_authorization ?id ?timeouts ~name
    ~private_cloud_id __resource_id =
  let __resource_type =
    "azurerm_vmware_express_route_authorization"
  in
  let __resource = { id; name; private_cloud_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_vmware_express_route_authorization __resource);
  ()
