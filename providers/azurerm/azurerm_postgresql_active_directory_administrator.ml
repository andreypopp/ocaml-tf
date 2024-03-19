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

type azurerm_postgresql_active_directory_administrator = {
  id : string prop option; [@option]  (** id *)
  login : string prop;  (** login *)
  object_id : string prop;  (** object_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  server_name : string prop;  (** server_name *)
  tenant_id : string prop;  (** tenant_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_postgresql_active_directory_administrator *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_postgresql_active_directory_administrator ?id ?timeouts
    ~login ~object_id ~resource_group_name ~server_name ~tenant_id ()
    : azurerm_postgresql_active_directory_administrator =
  {
    id;
    login;
    object_id;
    resource_group_name;
    server_name;
    tenant_id;
    timeouts;
  }

type t = {
  id : string prop;
  login : string prop;
  object_id : string prop;
  resource_group_name : string prop;
  server_name : string prop;
  tenant_id : string prop;
}

let register ?tf_module ?id ?timeouts ~login ~object_id
    ~resource_group_name ~server_name ~tenant_id __resource_id =
  let __resource_type =
    "azurerm_postgresql_active_directory_administrator"
  in
  let __resource =
    azurerm_postgresql_active_directory_administrator ?id ?timeouts
      ~login ~object_id ~resource_group_name ~server_name ~tenant_id
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_postgresql_active_directory_administrator
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       login = Prop.computed __resource_type __resource_id "login";
       object_id =
         Prop.computed __resource_type __resource_id "object_id";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       server_name =
         Prop.computed __resource_type __resource_id "server_name";
       tenant_id =
         Prop.computed __resource_type __resource_id "tenant_id";
     }
      : t)
  in
  __resource_attributes
