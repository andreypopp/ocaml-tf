(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_security_center_auto_provisioning__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_security_center_auto_provisioning__timeouts *)

type azurerm_security_center_auto_provisioning = {
  auto_provision : string;  (** auto_provision *)
  timeouts :
    azurerm_security_center_auto_provisioning__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_security_center_auto_provisioning *)

let azurerm_security_center_auto_provisioning ?timeouts
    ~auto_provision __resource_id =
  let __resource_type =
    "azurerm_security_center_auto_provisioning"
  in
  let __resource = { auto_provision; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_security_center_auto_provisioning __resource);
  ()