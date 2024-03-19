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

type azurerm_lighthouse_assignment = {
  id : string prop option; [@option]  (** id *)
  lighthouse_definition_id : string prop;
      (** lighthouse_definition_id *)
  name : string prop option; [@option]  (** name *)
  scope : string prop;  (** scope *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_lighthouse_assignment *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_lighthouse_assignment ?id ?name ?timeouts
    ~lighthouse_definition_id ~scope () :
    azurerm_lighthouse_assignment =
  { id; lighthouse_definition_id; name; scope; timeouts }

type t = {
  id : string prop;
  lighthouse_definition_id : string prop;
  name : string prop;
  scope : string prop;
}

let register ?tf_module ?id ?name ?timeouts ~lighthouse_definition_id
    ~scope __resource_id =
  let __resource_type = "azurerm_lighthouse_assignment" in
  let __resource =
    azurerm_lighthouse_assignment ?id ?name ?timeouts
      ~lighthouse_definition_id ~scope ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_lighthouse_assignment __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       lighthouse_definition_id =
         Prop.computed __resource_type __resource_id
           "lighthouse_definition_id";
       name = Prop.computed __resource_type __resource_id "name";
       scope = Prop.computed __resource_type __resource_id "scope";
     }
      : t)
  in
  __resource_attributes
