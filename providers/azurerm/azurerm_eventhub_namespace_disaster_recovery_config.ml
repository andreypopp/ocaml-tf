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

type azurerm_eventhub_namespace_disaster_recovery_config = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  namespace_name : string prop;  (** namespace_name *)
  partner_namespace_id : string prop;  (** partner_namespace_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_eventhub_namespace_disaster_recovery_config *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_eventhub_namespace_disaster_recovery_config ?id ?timeouts
    ~name ~namespace_name ~partner_namespace_id ~resource_group_name
    () : azurerm_eventhub_namespace_disaster_recovery_config =
  {
    id;
    name;
    namespace_name;
    partner_namespace_id;
    resource_group_name;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  namespace_name : string prop;
  partner_namespace_id : string prop;
  resource_group_name : string prop;
}

let register ?tf_module ?id ?timeouts ~name ~namespace_name
    ~partner_namespace_id ~resource_group_name __resource_id =
  let __resource_type =
    "azurerm_eventhub_namespace_disaster_recovery_config"
  in
  let __resource =
    azurerm_eventhub_namespace_disaster_recovery_config ?id ?timeouts
      ~name ~namespace_name ~partner_namespace_id
      ~resource_group_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_eventhub_namespace_disaster_recovery_config
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       namespace_name =
         Prop.computed __resource_type __resource_id "namespace_name";
       partner_namespace_id =
         Prop.computed __resource_type __resource_id
           "partner_namespace_id";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
     }
      : t)
  in
  __resource_attributes
