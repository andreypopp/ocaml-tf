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

type azurerm_eventhub_namespace_schema_group = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  namespace_id : string prop;  (** namespace_id *)
  schema_compatibility : string prop;  (** schema_compatibility *)
  schema_type : string prop;  (** schema_type *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_eventhub_namespace_schema_group *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_eventhub_namespace_schema_group ?id ?timeouts ~name
    ~namespace_id ~schema_compatibility ~schema_type () :
    azurerm_eventhub_namespace_schema_group =
  {
    id;
    name;
    namespace_id;
    schema_compatibility;
    schema_type;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  namespace_id : string prop;
  schema_compatibility : string prop;
  schema_type : string prop;
}

let register ?tf_module ?id ?timeouts ~name ~namespace_id
    ~schema_compatibility ~schema_type __resource_id =
  let __resource_type = "azurerm_eventhub_namespace_schema_group" in
  let __resource =
    azurerm_eventhub_namespace_schema_group ?id ?timeouts ~name
      ~namespace_id ~schema_compatibility ~schema_type ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_eventhub_namespace_schema_group __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       namespace_id =
         Prop.computed __resource_type __resource_id "namespace_id";
       schema_compatibility =
         Prop.computed __resource_type __resource_id
           "schema_compatibility";
       schema_type =
         Prop.computed __resource_type __resource_id "schema_type";
     }
      : t)
  in
  __resource_attributes
