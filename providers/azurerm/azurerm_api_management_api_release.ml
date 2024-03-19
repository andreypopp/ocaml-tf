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

type azurerm_api_management_api_release = {
  api_id : string prop;  (** api_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  notes : string prop option; [@option]  (** notes *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_api_release *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_api_release ?id ?notes ?timeouts ~api_id
    ~name () : azurerm_api_management_api_release =
  { api_id; id; name; notes; timeouts }

type t = {
  api_id : string prop;
  id : string prop;
  name : string prop;
  notes : string prop;
}

let register ?tf_module ?id ?notes ?timeouts ~api_id ~name
    __resource_id =
  let __resource_type = "azurerm_api_management_api_release" in
  let __resource =
    azurerm_api_management_api_release ?id ?notes ?timeouts ~api_id
      ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_api_release __resource);
  let __resource_attributes =
    ({
       api_id = Prop.computed __resource_type __resource_id "api_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       notes = Prop.computed __resource_type __resource_id "notes";
     }
      : t)
  in
  __resource_attributes
