(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_security_center_setting__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_security_center_setting__timeouts *)

type azurerm_security_center_setting = {
  enabled : bool prop;  (** enabled *)
  id : string prop option; [@option]  (** id *)
  setting_name : string prop;  (** setting_name *)
  timeouts : azurerm_security_center_setting__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_security_center_setting *)

type t = {
  enabled : bool prop;
  id : string prop;
  setting_name : string prop;
}

let azurerm_security_center_setting ?id ?timeouts ~enabled
    ~setting_name __resource_id =
  let __resource_type = "azurerm_security_center_setting" in
  let __resource =
    ({ enabled; id; setting_name; timeouts }
      : azurerm_security_center_setting)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_security_center_setting __resource);
  let __resource_attributes =
    ({
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       setting_name =
         Prop.computed __resource_type __resource_id "setting_name";
     }
      : t)
  in
  __resource_attributes
