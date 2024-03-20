(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type secret__customer_certificate = {
  key_vault_certificate_id : string prop;
      (** key_vault_certificate_id *)
}
[@@deriving yojson_of]
(** secret__customer_certificate *)

type secret = {
  customer_certificate : secret__customer_certificate list;
}
[@@deriving yojson_of]
(** secret *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_cdn_frontdoor_secret = {
  cdn_frontdoor_profile_id : string prop;
      (** cdn_frontdoor_profile_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  secret : secret list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_secret *)

let secret__customer_certificate ~key_vault_certificate_id () :
    secret__customer_certificate =
  { key_vault_certificate_id }

let secret ~customer_certificate () : secret =
  { customer_certificate }

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_cdn_frontdoor_secret ?id ?timeouts
    ~cdn_frontdoor_profile_id ~name ~secret () :
    azurerm_cdn_frontdoor_secret =
  { cdn_frontdoor_profile_id; id; name; secret; timeouts }

type t = {
  cdn_frontdoor_profile_id : string prop;
  cdn_frontdoor_profile_name : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ?timeouts ~cdn_frontdoor_profile_id ~name ~secret __id =
  let __type = "azurerm_cdn_frontdoor_secret" in
  let __attrs =
    ({
       cdn_frontdoor_profile_id =
         Prop.computed __type __id "cdn_frontdoor_profile_id";
       cdn_frontdoor_profile_name =
         Prop.computed __type __id "cdn_frontdoor_profile_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cdn_frontdoor_secret
        (azurerm_cdn_frontdoor_secret ?id ?timeouts
           ~cdn_frontdoor_profile_id ~name ~secret ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~cdn_frontdoor_profile_id ~name
    ~secret __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~cdn_frontdoor_profile_id ~name ~secret __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
