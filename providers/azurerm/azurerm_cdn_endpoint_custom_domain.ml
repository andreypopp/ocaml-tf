(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cdn_managed_https = {
  certificate_type : string prop;  (** certificate_type *)
  protocol_type : string prop;  (** protocol_type *)
  tls_version : string prop option; [@option]  (** tls_version *)
}
[@@deriving yojson_of]
(** cdn_managed_https *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type user_managed_https = {
  key_vault_certificate_id : string prop option; [@option]
      (** key_vault_certificate_id *)
  key_vault_secret_id : string prop option; [@option]
      (** key_vault_secret_id *)
  tls_version : string prop option; [@option]  (** tls_version *)
}
[@@deriving yojson_of]
(** user_managed_https *)

type azurerm_cdn_endpoint_custom_domain = {
  cdn_endpoint_id : string prop;  (** cdn_endpoint_id *)
  host_name : string prop;  (** host_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  cdn_managed_https : cdn_managed_https list;
  timeouts : timeouts option;
  user_managed_https : user_managed_https list;
}
[@@deriving yojson_of]
(** azurerm_cdn_endpoint_custom_domain *)

let cdn_managed_https ?tls_version ~certificate_type ~protocol_type
    () : cdn_managed_https =
  { certificate_type; protocol_type; tls_version }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let user_managed_https ?key_vault_certificate_id ?key_vault_secret_id
    ?tls_version () : user_managed_https =
  { key_vault_certificate_id; key_vault_secret_id; tls_version }

let azurerm_cdn_endpoint_custom_domain ?id ?timeouts ~cdn_endpoint_id
    ~host_name ~name ~cdn_managed_https ~user_managed_https () :
    azurerm_cdn_endpoint_custom_domain =
  {
    cdn_endpoint_id;
    host_name;
    id;
    name;
    cdn_managed_https;
    timeouts;
    user_managed_https;
  }

type t = {
  cdn_endpoint_id : string prop;
  host_name : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ?timeouts ~cdn_endpoint_id ~host_name ~name
    ~cdn_managed_https ~user_managed_https __id =
  let __type = "azurerm_cdn_endpoint_custom_domain" in
  let __attrs =
    ({
       cdn_endpoint_id = Prop.computed __type __id "cdn_endpoint_id";
       host_name = Prop.computed __type __id "host_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cdn_endpoint_custom_domain
        (azurerm_cdn_endpoint_custom_domain ?id ?timeouts
           ~cdn_endpoint_id ~host_name ~name ~cdn_managed_https
           ~user_managed_https ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~cdn_endpoint_id ~host_name
    ~name ~cdn_managed_https ~user_managed_https __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~cdn_endpoint_id ~host_name ~name
      ~cdn_managed_https ~user_managed_https __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
