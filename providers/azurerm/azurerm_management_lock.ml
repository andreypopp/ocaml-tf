(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_management_lock = {
  id : string prop option; [@option]  (** id *)
  lock_level : string prop;  (** lock_level *)
  name : string prop;  (** name *)
  notes : string prop option; [@option]  (** notes *)
  scope : string prop;  (** scope *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_management_lock *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_management_lock ?id ?notes ?timeouts ~lock_level ~name
    ~scope () : azurerm_management_lock =
  { id; lock_level; name; notes; scope; timeouts }

type t = {
  id : string prop;
  lock_level : string prop;
  name : string prop;
  notes : string prop;
  scope : string prop;
}

let register ?tf_module ?id ?notes ?timeouts ~lock_level ~name ~scope
    __resource_id =
  let __resource_type = "azurerm_management_lock" in
  let __resource =
    azurerm_management_lock ?id ?notes ?timeouts ~lock_level ~name
      ~scope ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_management_lock __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       lock_level =
         Prop.computed __resource_type __resource_id "lock_level";
       name = Prop.computed __resource_type __resource_id "name";
       notes = Prop.computed __resource_type __resource_id "notes";
       scope = Prop.computed __resource_type __resource_id "scope";
     }
      : t)
  in
  __resource_attributes
