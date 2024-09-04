(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type additional_location = {
  capacity : float prop;  (** capacity *)
  gateway_regional_url : string prop;  (** gateway_regional_url *)
  location : string prop;  (** location *)
  private_ip_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** private_ip_addresses *)
  public_ip_address_id : string prop;  (** public_ip_address_id *)
  public_ip_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** public_ip_addresses *)
  zones : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** zones *)
}

type hostname_configuration__scm = {
  host_name : string prop;  (** host_name *)
  key_vault_id : string prop;  (** key_vault_id *)
  negotiate_client_certificate : bool prop;
      (** negotiate_client_certificate *)
}

type hostname_configuration__proxy = {
  default_ssl_binding : bool prop;  (** default_ssl_binding *)
  host_name : string prop;  (** host_name *)
  key_vault_id : string prop;  (** key_vault_id *)
  negotiate_client_certificate : bool prop;
      (** negotiate_client_certificate *)
}

type hostname_configuration__portal = {
  host_name : string prop;  (** host_name *)
  key_vault_id : string prop;  (** key_vault_id *)
  negotiate_client_certificate : bool prop;
      (** negotiate_client_certificate *)
}

type hostname_configuration__management = {
  host_name : string prop;  (** host_name *)
  key_vault_id : string prop;  (** key_vault_id *)
  negotiate_client_certificate : bool prop;
      (** negotiate_client_certificate *)
}

type hostname_configuration__developer_portal = {
  host_name : string prop;  (** host_name *)
  key_vault_id : string prop;  (** key_vault_id *)
  negotiate_client_certificate : bool prop;
      (** negotiate_client_certificate *)
}

type hostname_configuration = {
  developer_portal : hostname_configuration__developer_portal list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** developer_portal *)
  management : hostname_configuration__management list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** management *)
  portal : hostname_configuration__portal list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** portal *)
  proxy : hostname_configuration__proxy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** proxy *)
  scm : hostname_configuration__scm list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** scm *)
}

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}

type tenant_access = {
  enabled : bool prop;  (** enabled *)
  primary_key : string prop;  (** primary_key *)
  secondary_key : string prop;  (** secondary_key *)
  tenant_id : string prop;  (** tenant_id *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_api_management

val azurerm_api_management :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_api_management

val yojson_of_azurerm_api_management : azurerm_api_management -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  additional_location : additional_location list prop;
  developer_portal_url : string prop;
  gateway_regional_url : string prop;
  gateway_url : string prop;
  hostname_configuration : hostname_configuration list prop;
  id : string prop;
  identity : identity list prop;
  location : string prop;
  management_api_url : string prop;
  name : string prop;
  notification_sender_email : string prop;
  portal_url : string prop;
  private_ip_addresses : string list prop;
  public_ip_address_id : string prop;
  public_ip_addresses : string list prop;
  publisher_email : string prop;
  publisher_name : string prop;
  resource_group_name : string prop;
  scm_url : string prop;
  sku_name : string prop;
  tags : string Tf_core.assoc prop;
  tenant_access : tenant_access list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
