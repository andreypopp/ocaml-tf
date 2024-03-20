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

type azurerm_api_management_certificate = {
  api_management_name : string prop;  (** api_management_name *)
  data : string prop option; [@option]  (** data *)
  id : string prop option; [@option]  (** id *)
  key_vault_identity_client_id : string prop option; [@option]
      (** key_vault_identity_client_id *)
  key_vault_secret_id : string prop option; [@option]
      (** key_vault_secret_id *)
  name : string prop;  (** name *)
  password : string prop option; [@option]  (** password *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_certificate *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_certificate ?data ?id
    ?key_vault_identity_client_id ?key_vault_secret_id ?password
    ?timeouts ~api_management_name ~name ~resource_group_name () :
    azurerm_api_management_certificate =
  {
    api_management_name;
    data;
    id;
    key_vault_identity_client_id;
    key_vault_secret_id;
    name;
    password;
    resource_group_name;
    timeouts;
  }

type t = {
  api_management_name : string prop;
  data : string prop;
  expiration : string prop;
  id : string prop;
  key_vault_identity_client_id : string prop;
  key_vault_secret_id : string prop;
  name : string prop;
  password : string prop;
  resource_group_name : string prop;
  subject : string prop;
  thumbprint : string prop;
}

let make ?data ?id ?key_vault_identity_client_id ?key_vault_secret_id
    ?password ?timeouts ~api_management_name ~name
    ~resource_group_name __id =
  let __type = "azurerm_api_management_certificate" in
  let __attrs =
    ({
       api_management_name =
         Prop.computed __type __id "api_management_name";
       data = Prop.computed __type __id "data";
       expiration = Prop.computed __type __id "expiration";
       id = Prop.computed __type __id "id";
       key_vault_identity_client_id =
         Prop.computed __type __id "key_vault_identity_client_id";
       key_vault_secret_id =
         Prop.computed __type __id "key_vault_secret_id";
       name = Prop.computed __type __id "name";
       password = Prop.computed __type __id "password";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       subject = Prop.computed __type __id "subject";
       thumbprint = Prop.computed __type __id "thumbprint";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_certificate
        (azurerm_api_management_certificate ?data ?id
           ?key_vault_identity_client_id ?key_vault_secret_id
           ?password ?timeouts ~api_management_name ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?data ?id ?key_vault_identity_client_id
    ?key_vault_secret_id ?password ?timeouts ~api_management_name
    ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?data ?id ?key_vault_identity_client_id ?key_vault_secret_id
      ?password ?timeouts ~api_management_name ~name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
