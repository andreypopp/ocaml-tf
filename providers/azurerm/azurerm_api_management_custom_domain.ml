(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type developer_portal = {
  certificate : string prop option; [@option]  (** certificate *)
  certificate_password : string prop option; [@option]
      (** certificate_password *)
  host_name : string prop;  (** host_name *)
  key_vault_id : string prop option; [@option]  (** key_vault_id *)
  negotiate_client_certificate : bool prop option; [@option]
      (** negotiate_client_certificate *)
  ssl_keyvault_identity_client_id : string prop option; [@option]
      (** ssl_keyvault_identity_client_id *)
}
[@@deriving yojson_of]
(** developer_portal *)

type gateway = {
  certificate : string prop option; [@option]  (** certificate *)
  certificate_password : string prop option; [@option]
      (** certificate_password *)
  default_ssl_binding : bool prop option; [@option]
      (** default_ssl_binding *)
  host_name : string prop;  (** host_name *)
  key_vault_id : string prop option; [@option]  (** key_vault_id *)
  negotiate_client_certificate : bool prop option; [@option]
      (** negotiate_client_certificate *)
  ssl_keyvault_identity_client_id : string prop option; [@option]
      (** ssl_keyvault_identity_client_id *)
}
[@@deriving yojson_of]
(** gateway *)

type management = {
  certificate : string prop option; [@option]  (** certificate *)
  certificate_password : string prop option; [@option]
      (** certificate_password *)
  host_name : string prop;  (** host_name *)
  key_vault_id : string prop option; [@option]  (** key_vault_id *)
  negotiate_client_certificate : bool prop option; [@option]
      (** negotiate_client_certificate *)
  ssl_keyvault_identity_client_id : string prop option; [@option]
      (** ssl_keyvault_identity_client_id *)
}
[@@deriving yojson_of]
(** management *)

type portal = {
  certificate : string prop option; [@option]  (** certificate *)
  certificate_password : string prop option; [@option]
      (** certificate_password *)
  host_name : string prop;  (** host_name *)
  key_vault_id : string prop option; [@option]  (** key_vault_id *)
  negotiate_client_certificate : bool prop option; [@option]
      (** negotiate_client_certificate *)
  ssl_keyvault_identity_client_id : string prop option; [@option]
      (** ssl_keyvault_identity_client_id *)
}
[@@deriving yojson_of]
(** portal *)

type scm = {
  certificate : string prop option; [@option]  (** certificate *)
  certificate_password : string prop option; [@option]
      (** certificate_password *)
  host_name : string prop;  (** host_name *)
  key_vault_id : string prop option; [@option]  (** key_vault_id *)
  negotiate_client_certificate : bool prop option; [@option]
      (** negotiate_client_certificate *)
  ssl_keyvault_identity_client_id : string prop option; [@option]
      (** ssl_keyvault_identity_client_id *)
}
[@@deriving yojson_of]
(** scm *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_api_management_custom_domain = {
  api_management_id : string prop;  (** api_management_id *)
  id : string prop option; [@option]  (** id *)
  developer_portal : developer_portal list;
  gateway : gateway list;
  management : management list;
  portal : portal list;
  scm : scm list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_custom_domain *)

let developer_portal ?certificate ?certificate_password ?key_vault_id
    ?negotiate_client_certificate ?ssl_keyvault_identity_client_id
    ~host_name () : developer_portal =
  {
    certificate;
    certificate_password;
    host_name;
    key_vault_id;
    negotiate_client_certificate;
    ssl_keyvault_identity_client_id;
  }

let gateway ?certificate ?certificate_password ?default_ssl_binding
    ?key_vault_id ?negotiate_client_certificate
    ?ssl_keyvault_identity_client_id ~host_name () : gateway =
  {
    certificate;
    certificate_password;
    default_ssl_binding;
    host_name;
    key_vault_id;
    negotiate_client_certificate;
    ssl_keyvault_identity_client_id;
  }

let management ?certificate ?certificate_password ?key_vault_id
    ?negotiate_client_certificate ?ssl_keyvault_identity_client_id
    ~host_name () : management =
  {
    certificate;
    certificate_password;
    host_name;
    key_vault_id;
    negotiate_client_certificate;
    ssl_keyvault_identity_client_id;
  }

let portal ?certificate ?certificate_password ?key_vault_id
    ?negotiate_client_certificate ?ssl_keyvault_identity_client_id
    ~host_name () : portal =
  {
    certificate;
    certificate_password;
    host_name;
    key_vault_id;
    negotiate_client_certificate;
    ssl_keyvault_identity_client_id;
  }

let scm ?certificate ?certificate_password ?key_vault_id
    ?negotiate_client_certificate ?ssl_keyvault_identity_client_id
    ~host_name () : scm =
  {
    certificate;
    certificate_password;
    host_name;
    key_vault_id;
    negotiate_client_certificate;
    ssl_keyvault_identity_client_id;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_custom_domain ?id ?timeouts
    ~api_management_id ~developer_portal ~gateway ~management ~portal
    ~scm () : azurerm_api_management_custom_domain =
  {
    api_management_id;
    id;
    developer_portal;
    gateway;
    management;
    portal;
    scm;
    timeouts;
  }

type t = { api_management_id : string prop; id : string prop }

let make ?id ?timeouts ~api_management_id ~developer_portal ~gateway
    ~management ~portal ~scm __id =
  let __type = "azurerm_api_management_custom_domain" in
  let __attrs =
    ({
       api_management_id =
         Prop.computed __type __id "api_management_id";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_custom_domain
        (azurerm_api_management_custom_domain ?id ?timeouts
           ~api_management_id ~developer_portal ~gateway ~management
           ~portal ~scm ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~api_management_id
    ~developer_portal ~gateway ~management ~portal ~scm __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~api_management_id ~developer_portal ~gateway
      ~management ~portal ~scm __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
