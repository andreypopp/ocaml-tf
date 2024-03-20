(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type custom_https_configuration = {
  azure_key_vault_certificate_secret_name : string prop option;
      [@option]
      (** azure_key_vault_certificate_secret_name *)
  azure_key_vault_certificate_secret_version : string prop option;
      [@option]
      (** azure_key_vault_certificate_secret_version *)
  azure_key_vault_certificate_vault_id : string prop option;
      [@option]
      (** azure_key_vault_certificate_vault_id *)
  certificate_source : string prop option; [@option]
      (** certificate_source *)
}
[@@deriving yojson_of]
(** custom_https_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_frontdoor_custom_https_configuration = {
  custom_https_provisioning_enabled : bool prop;
      (** custom_https_provisioning_enabled *)
  frontend_endpoint_id : string prop;  (** frontend_endpoint_id *)
  id : string prop option; [@option]  (** id *)
  custom_https_configuration : custom_https_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_frontdoor_custom_https_configuration *)

let custom_https_configuration
    ?azure_key_vault_certificate_secret_name
    ?azure_key_vault_certificate_secret_version
    ?azure_key_vault_certificate_vault_id ?certificate_source () :
    custom_https_configuration =
  {
    azure_key_vault_certificate_secret_name;
    azure_key_vault_certificate_secret_version;
    azure_key_vault_certificate_vault_id;
    certificate_source;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_frontdoor_custom_https_configuration ?id ?timeouts
    ~custom_https_provisioning_enabled ~frontend_endpoint_id
    ~custom_https_configuration () :
    azurerm_frontdoor_custom_https_configuration =
  {
    custom_https_provisioning_enabled;
    frontend_endpoint_id;
    id;
    custom_https_configuration;
    timeouts;
  }

type t = {
  custom_https_provisioning_enabled : bool prop;
  frontend_endpoint_id : string prop;
  id : string prop;
}

let make ?id ?timeouts ~custom_https_provisioning_enabled
    ~frontend_endpoint_id ~custom_https_configuration __id =
  let __type = "azurerm_frontdoor_custom_https_configuration" in
  let __attrs =
    ({
       custom_https_provisioning_enabled =
         Prop.computed __type __id
           "custom_https_provisioning_enabled";
       frontend_endpoint_id =
         Prop.computed __type __id "frontend_endpoint_id";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_frontdoor_custom_https_configuration
        (azurerm_frontdoor_custom_https_configuration ?id ?timeouts
           ~custom_https_provisioning_enabled ~frontend_endpoint_id
           ~custom_https_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts
    ~custom_https_provisioning_enabled ~frontend_endpoint_id
    ~custom_https_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~custom_https_provisioning_enabled
      ~frontend_endpoint_id ~custom_https_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
