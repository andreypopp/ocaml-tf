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

type azurerm_active_directory_domain_service_trust = {
  domain_service_id : string prop;  (** domain_service_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  password : string prop;  (** password *)
  trusted_domain_dns_ips : string prop list;
      (** trusted_domain_dns_ips *)
  trusted_domain_fqdn : string prop;  (** trusted_domain_fqdn *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_active_directory_domain_service_trust *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_active_directory_domain_service_trust ?id ?timeouts
    ~domain_service_id ~name ~password ~trusted_domain_dns_ips
    ~trusted_domain_fqdn () :
    azurerm_active_directory_domain_service_trust =
  {
    domain_service_id;
    id;
    name;
    password;
    trusted_domain_dns_ips;
    trusted_domain_fqdn;
    timeouts;
  }

type t = {
  domain_service_id : string prop;
  id : string prop;
  name : string prop;
  password : string prop;
  trusted_domain_dns_ips : string list prop;
  trusted_domain_fqdn : string prop;
}

let make ?id ?timeouts ~domain_service_id ~name ~password
    ~trusted_domain_dns_ips ~trusted_domain_fqdn __id =
  let __type = "azurerm_active_directory_domain_service_trust" in
  let __attrs =
    ({
       domain_service_id =
         Prop.computed __type __id "domain_service_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       password = Prop.computed __type __id "password";
       trusted_domain_dns_ips =
         Prop.computed __type __id "trusted_domain_dns_ips";
       trusted_domain_fqdn =
         Prop.computed __type __id "trusted_domain_fqdn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_active_directory_domain_service_trust
        (azurerm_active_directory_domain_service_trust ?id ?timeouts
           ~domain_service_id ~name ~password ~trusted_domain_dns_ips
           ~trusted_domain_fqdn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~domain_service_id ~name
    ~password ~trusted_domain_dns_ips ~trusted_domain_fqdn __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~domain_service_id ~name ~password
      ~trusted_domain_dns_ips ~trusted_domain_fqdn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
