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

type azurerm_advanced_threat_protection = {
  enabled : bool prop;  (** enabled *)
  id : string prop option; [@option]  (** id *)
  target_resource_id : string prop;  (** target_resource_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_advanced_threat_protection *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_advanced_threat_protection ?id ?timeouts ~enabled
    ~target_resource_id () : azurerm_advanced_threat_protection =
  { enabled; id; target_resource_id; timeouts }

type t = {
  enabled : bool prop;
  id : string prop;
  target_resource_id : string prop;
}

let register ?tf_module ?id ?timeouts ~enabled ~target_resource_id
    __resource_id =
  let __resource_type = "azurerm_advanced_threat_protection" in
  let __resource =
    azurerm_advanced_threat_protection ?id ?timeouts ~enabled
      ~target_resource_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_advanced_threat_protection __resource);
  let __resource_attributes =
    ({
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       target_resource_id =
         Prop.computed __resource_type __resource_id
           "target_resource_id";
     }
      : t)
  in
  __resource_attributes
