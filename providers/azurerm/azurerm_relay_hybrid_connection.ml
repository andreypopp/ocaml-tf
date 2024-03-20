(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_relay_hybrid_connection = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  relay_namespace_name : string prop;  (** relay_namespace_name *)
  requires_client_authorization : bool prop option; [@option]
      (** requires_client_authorization *)
  resource_group_name : string prop;  (** resource_group_name *)
  user_metadata : string prop option; [@option]  (** user_metadata *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_relay_hybrid_connection *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_relay_hybrid_connection ?id
    ?requires_client_authorization ?user_metadata ?timeouts ~name
    ~relay_namespace_name ~resource_group_name () :
    azurerm_relay_hybrid_connection =
  {
    id;
    name;
    relay_namespace_name;
    requires_client_authorization;
    resource_group_name;
    user_metadata;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  relay_namespace_name : string prop;
  requires_client_authorization : bool prop;
  resource_group_name : string prop;
  user_metadata : string prop;
}

let make ?id ?requires_client_authorization ?user_metadata ?timeouts
    ~name ~relay_namespace_name ~resource_group_name __id =
  let __type = "azurerm_relay_hybrid_connection" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       relay_namespace_name =
         Prop.computed __type __id "relay_namespace_name";
       requires_client_authorization =
         Prop.computed __type __id "requires_client_authorization";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       user_metadata = Prop.computed __type __id "user_metadata";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_relay_hybrid_connection
        (azurerm_relay_hybrid_connection ?id
           ?requires_client_authorization ?user_metadata ?timeouts
           ~name ~relay_namespace_name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?requires_client_authorization
    ?user_metadata ?timeouts ~name ~relay_namespace_name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?requires_client_authorization ?user_metadata ?timeouts
      ~name ~relay_namespace_name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
