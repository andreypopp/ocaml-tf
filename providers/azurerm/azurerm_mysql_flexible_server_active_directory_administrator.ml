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

type azurerm_mysql_flexible_server_active_directory_administrator = {
  id : string prop option; [@option]  (** id *)
  identity_id : string prop;  (** identity_id *)
  login : string prop;  (** login *)
  object_id : string prop;  (** object_id *)
  server_id : string prop;  (** server_id *)
  tenant_id : string prop;  (** tenant_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mysql_flexible_server_active_directory_administrator *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mysql_flexible_server_active_directory_administrator ?id
    ?timeouts ~identity_id ~login ~object_id ~server_id ~tenant_id ()
    : azurerm_mysql_flexible_server_active_directory_administrator =
  {
    id;
    identity_id;
    login;
    object_id;
    server_id;
    tenant_id;
    timeouts;
  }

type t = {
  id : string prop;
  identity_id : string prop;
  login : string prop;
  object_id : string prop;
  server_id : string prop;
  tenant_id : string prop;
}

let register ?tf_module ?id ?timeouts ~identity_id ~login ~object_id
    ~server_id ~tenant_id __resource_id =
  let __resource_type =
    "azurerm_mysql_flexible_server_active_directory_administrator"
  in
  let __resource =
    azurerm_mysql_flexible_server_active_directory_administrator ?id
      ?timeouts ~identity_id ~login ~object_id ~server_id ~tenant_id
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mysql_flexible_server_active_directory_administrator
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       identity_id =
         Prop.computed __resource_type __resource_id "identity_id";
       login = Prop.computed __resource_type __resource_id "login";
       object_id =
         Prop.computed __resource_type __resource_id "object_id";
       server_id =
         Prop.computed __resource_type __resource_id "server_id";
       tenant_id =
         Prop.computed __resource_type __resource_id "tenant_id";
     }
      : t)
  in
  __resource_attributes
