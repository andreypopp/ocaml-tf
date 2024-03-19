(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type rbac_authorization = {
  resource_id : string prop;  (** resource_id *)
}
[@@deriving yojson_of]
(** rbac_authorization *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_data_factory_integration_runtime_self_hosted = {
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  rbac_authorization : rbac_authorization list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_integration_runtime_self_hosted *)

let rbac_authorization ~resource_id () : rbac_authorization =
  { resource_id }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_factory_integration_runtime_self_hosted ?description
    ?id ?timeouts ~data_factory_id ~name ~rbac_authorization () :
    azurerm_data_factory_integration_runtime_self_hosted =
  {
    data_factory_id;
    description;
    id;
    name;
    rbac_authorization;
    timeouts;
  }

type t = {
  data_factory_id : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  primary_authorization_key : string prop;
  secondary_authorization_key : string prop;
}

let register ?tf_module ?description ?id ?timeouts ~data_factory_id
    ~name ~rbac_authorization __resource_id =
  let __resource_type =
    "azurerm_data_factory_integration_runtime_self_hosted"
  in
  let __resource =
    azurerm_data_factory_integration_runtime_self_hosted ?description
      ?id ?timeouts ~data_factory_id ~name ~rbac_authorization ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_integration_runtime_self_hosted
       __resource);
  let __resource_attributes =
    ({
       data_factory_id =
         Prop.computed __resource_type __resource_id
           "data_factory_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       primary_authorization_key =
         Prop.computed __resource_type __resource_id
           "primary_authorization_key";
       secondary_authorization_key =
         Prop.computed __resource_type __resource_id
           "secondary_authorization_key";
     }
      : t)
  in
  __resource_attributes
