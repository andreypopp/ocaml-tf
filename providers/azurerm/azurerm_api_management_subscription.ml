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

type azurerm_api_management_subscription = {
  allow_tracing : bool prop option; [@option]  (** allow_tracing *)
  api_id : string prop option; [@option]  (** api_id *)
  api_management_name : string prop;  (** api_management_name *)
  display_name : string prop;  (** display_name *)
  id : string prop option; [@option]  (** id *)
  primary_key : string prop option; [@option]  (** primary_key *)
  product_id : string prop option; [@option]  (** product_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  secondary_key : string prop option; [@option]  (** secondary_key *)
  state : string prop option; [@option]  (** state *)
  subscription_id : string prop option; [@option]
      (** subscription_id *)
  user_id : string prop option; [@option]  (** user_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_subscription *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_subscription ?allow_tracing ?api_id ?id
    ?primary_key ?product_id ?secondary_key ?state ?subscription_id
    ?user_id ?timeouts ~api_management_name ~display_name
    ~resource_group_name () : azurerm_api_management_subscription =
  {
    allow_tracing;
    api_id;
    api_management_name;
    display_name;
    id;
    primary_key;
    product_id;
    resource_group_name;
    secondary_key;
    state;
    subscription_id;
    user_id;
    timeouts;
  }

type t = {
  allow_tracing : bool prop;
  api_id : string prop;
  api_management_name : string prop;
  display_name : string prop;
  id : string prop;
  primary_key : string prop;
  product_id : string prop;
  resource_group_name : string prop;
  secondary_key : string prop;
  state : string prop;
  subscription_id : string prop;
  user_id : string prop;
}

let make ?allow_tracing ?api_id ?id ?primary_key ?product_id
    ?secondary_key ?state ?subscription_id ?user_id ?timeouts
    ~api_management_name ~display_name ~resource_group_name __id =
  let __type = "azurerm_api_management_subscription" in
  let __attrs =
    ({
       allow_tracing = Prop.computed __type __id "allow_tracing";
       api_id = Prop.computed __type __id "api_id";
       api_management_name =
         Prop.computed __type __id "api_management_name";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       primary_key = Prop.computed __type __id "primary_key";
       product_id = Prop.computed __type __id "product_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secondary_key = Prop.computed __type __id "secondary_key";
       state = Prop.computed __type __id "state";
       subscription_id = Prop.computed __type __id "subscription_id";
       user_id = Prop.computed __type __id "user_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_subscription
        (azurerm_api_management_subscription ?allow_tracing ?api_id
           ?id ?primary_key ?product_id ?secondary_key ?state
           ?subscription_id ?user_id ?timeouts ~api_management_name
           ~display_name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_tracing ?api_id ?id ?primary_key
    ?product_id ?secondary_key ?state ?subscription_id ?user_id
    ?timeouts ~api_management_name ~display_name ~resource_group_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?allow_tracing ?api_id ?id ?primary_key ?product_id
      ?secondary_key ?state ?subscription_id ?user_id ?timeouts
      ~api_management_name ~display_name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
