(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_eventhub_namespace_schema_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_eventhub_namespace_schema_group__timeouts *)

type azurerm_eventhub_namespace_schema_group = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  namespace_id : string prop;  (** namespace_id *)
  schema_compatibility : string prop;  (** schema_compatibility *)
  schema_type : string prop;  (** schema_type *)
  timeouts : azurerm_eventhub_namespace_schema_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_eventhub_namespace_schema_group *)

let azurerm_eventhub_namespace_schema_group ?id ?timeouts ~name
    ~namespace_id ~schema_compatibility ~schema_type __resource_id =
  let __resource_type = "azurerm_eventhub_namespace_schema_group" in
  let __resource =
    {
      id;
      name;
      namespace_id;
      schema_compatibility;
      schema_type;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_eventhub_namespace_schema_group __resource);
  ()
