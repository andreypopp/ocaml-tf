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

type azurerm_security_center_auto_provisioning = {
  auto_provision : string prop;  (** auto_provision *)
  id : string prop option; [@option]  (** id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_security_center_auto_provisioning *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_security_center_auto_provisioning ?id ?timeouts
    ~auto_provision () : azurerm_security_center_auto_provisioning =
  { auto_provision; id; timeouts }

type t = { auto_provision : string prop; id : string prop }

let register ?tf_module ?id ?timeouts ~auto_provision __resource_id =
  let __resource_type =
    "azurerm_security_center_auto_provisioning"
  in
  let __resource =
    azurerm_security_center_auto_provisioning ?id ?timeouts
      ~auto_provision ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_security_center_auto_provisioning __resource);
  let __resource_attributes =
    ({
       auto_provision =
         Prop.computed __resource_type __resource_id "auto_provision";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
