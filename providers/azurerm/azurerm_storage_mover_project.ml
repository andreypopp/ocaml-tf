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

type azurerm_storage_mover_project = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  storage_mover_id : string prop;  (** storage_mover_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_mover_project *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_mover_project ?description ?id ?timeouts ~name
    ~storage_mover_id () : azurerm_storage_mover_project =
  { description; id; name; storage_mover_id; timeouts }

type t = {
  description : string prop;
  id : string prop;
  name : string prop;
  storage_mover_id : string prop;
}

let register ?tf_module ?description ?id ?timeouts ~name
    ~storage_mover_id __resource_id =
  let __resource_type = "azurerm_storage_mover_project" in
  let __resource =
    azurerm_storage_mover_project ?description ?id ?timeouts ~name
      ~storage_mover_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_mover_project __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       storage_mover_id =
         Prop.computed __resource_type __resource_id
           "storage_mover_id";
     }
      : t)
  in
  __resource_attributes
