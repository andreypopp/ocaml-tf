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

let register ?tf_module ?data ?id ?key_vault_identity_client_id
    ?key_vault_secret_id ?password ?timeouts ~api_management_name
    ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_api_management_certificate" in
  let __resource =
    azurerm_api_management_certificate ?data ?id
      ?key_vault_identity_client_id ?key_vault_secret_id ?password
      ?timeouts ~api_management_name ~name ~resource_group_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_certificate __resource);
  let __resource_attributes =
    ({
       api_management_name =
         Prop.computed __resource_type __resource_id
           "api_management_name";
       data = Prop.computed __resource_type __resource_id "data";
       expiration =
         Prop.computed __resource_type __resource_id "expiration";
       id = Prop.computed __resource_type __resource_id "id";
       key_vault_identity_client_id =
         Prop.computed __resource_type __resource_id
           "key_vault_identity_client_id";
       key_vault_secret_id =
         Prop.computed __resource_type __resource_id
           "key_vault_secret_id";
       name = Prop.computed __resource_type __resource_id "name";
       password =
         Prop.computed __resource_type __resource_id "password";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       subject =
         Prop.computed __resource_type __resource_id "subject";
       thumbprint =
         Prop.computed __resource_type __resource_id "thumbprint";
     }
      : t)
  in
  __resource_attributes
