(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_vmware_express_route_authorization__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_vmware_express_route_authorization__timeouts *)

type azurerm_vmware_express_route_authorization = {
  name : string;  (** name *)
  private_cloud_id : string;  (** private_cloud_id *)
  timeouts :
    azurerm_vmware_express_route_authorization__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_vmware_express_route_authorization *)

let azurerm_vmware_express_route_authorization ?timeouts ~name
    ~private_cloud_id __resource_id =
  let __resource_type =
    "azurerm_vmware_express_route_authorization"
  in
  let __resource = { name; private_cloud_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_vmware_express_route_authorization __resource);
  ()
