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

type value_from_key_vault = {
  identity_client_id : string prop option; [@option]
      (** identity_client_id *)
  secret_id : string prop;  (** secret_id *)
}
[@@deriving yojson_of]
(** value_from_key_vault *)

type azurerm_api_management_named_value = {
  api_management_name : string prop;  (** api_management_name *)
  display_name : string prop;  (** display_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  secret : bool prop option; [@option]  (** secret *)
  tags : string prop list option; [@option]  (** tags *)
  value : string prop option; [@option]  (** value *)
  timeouts : timeouts option;
  value_from_key_vault : value_from_key_vault list;
}
[@@deriving yojson_of]
(** azurerm_api_management_named_value *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let value_from_key_vault ?identity_client_id ~secret_id () :
    value_from_key_vault =
  { identity_client_id; secret_id }

let azurerm_api_management_named_value ?id ?secret ?tags ?value
    ?timeouts ~api_management_name ~display_name ~name
    ~resource_group_name ~value_from_key_vault () :
    azurerm_api_management_named_value =
  {
    api_management_name;
    display_name;
    id;
    name;
    resource_group_name;
    secret;
    tags;
    value;
    timeouts;
    value_from_key_vault;
  }

type t = {
  api_management_name : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  secret : bool prop;
  tags : string list prop;
  value : string prop;
}

let make ?id ?secret ?tags ?value ?timeouts ~api_management_name
    ~display_name ~name ~resource_group_name ~value_from_key_vault
    __id =
  let __type = "azurerm_api_management_named_value" in
  let __attrs =
    ({
       api_management_name =
         Prop.computed __type __id "api_management_name";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secret = Prop.computed __type __id "secret";
       tags = Prop.computed __type __id "tags";
       value = Prop.computed __type __id "value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_named_value
        (azurerm_api_management_named_value ?id ?secret ?tags ?value
           ?timeouts ~api_management_name ~display_name ~name
           ~resource_group_name ~value_from_key_vault ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?secret ?tags ?value ?timeouts
    ~api_management_name ~display_name ~name ~resource_group_name
    ~value_from_key_vault __id =
  let (r : _ Tf_core.resource) =
    make ?id ?secret ?tags ?value ?timeouts ~api_management_name
      ~display_name ~name ~resource_group_name ~value_from_key_vault
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
