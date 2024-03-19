(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type feature = {
  name : string prop;  (** name *)
  registered : bool prop;  (** registered *)
}
[@@deriving yojson_of]
(** feature *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_resource_provider_registration = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  feature : feature list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_resource_provider_registration *)

let feature ~name ~registered () : feature = { name; registered }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_resource_provider_registration ?id ?timeouts ~name
    ~feature () : azurerm_resource_provider_registration =
  { id; name; feature; timeouts }

type t = { id : string prop; name : string prop }

let register ?tf_module ?id ?timeouts ~name ~feature __resource_id =
  let __resource_type = "azurerm_resource_provider_registration" in
  let __resource =
    azurerm_resource_provider_registration ?id ?timeouts ~name
      ~feature ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_resource_provider_registration __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
