(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_security_center_setting__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_security_center_setting__timeouts *)

type azurerm_security_center_setting = {
  enabled : bool;  (** enabled *)
  id : string option; [@option]  (** id *)
  setting_name : string;  (** setting_name *)
  timeouts : azurerm_security_center_setting__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_security_center_setting *)

let azurerm_security_center_setting ?id ?timeouts ~enabled
    ~setting_name __resource_id =
  let __resource_type = "azurerm_security_center_setting" in
  let __resource = { enabled; id; setting_name; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_security_center_setting __resource);
  ()
