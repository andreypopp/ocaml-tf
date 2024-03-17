(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_active_directory_domain_service_trust__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_active_directory_domain_service_trust__timeouts *)

type azurerm_active_directory_domain_service_trust = {
  domain_service_id : string prop;  (** domain_service_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  password : string prop;  (** password *)
  trusted_domain_dns_ips : string prop list;
      (** trusted_domain_dns_ips *)
  trusted_domain_fqdn : string prop;  (** trusted_domain_fqdn *)
  timeouts :
    azurerm_active_directory_domain_service_trust__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_active_directory_domain_service_trust *)

type t = {
  domain_service_id : string prop;
  id : string prop;
  name : string prop;
  password : string prop;
  trusted_domain_dns_ips : string list prop;
  trusted_domain_fqdn : string prop;
}

let azurerm_active_directory_domain_service_trust ?id ?timeouts
    ~domain_service_id ~name ~password ~trusted_domain_dns_ips
    ~trusted_domain_fqdn __resource_id =
  let __resource_type =
    "azurerm_active_directory_domain_service_trust"
  in
  let __resource =
    ({
       domain_service_id;
       id;
       name;
       password;
       trusted_domain_dns_ips;
       trusted_domain_fqdn;
       timeouts;
     }
      : azurerm_active_directory_domain_service_trust)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_active_directory_domain_service_trust
       __resource);
  let __resource_attributes =
    ({
       domain_service_id =
         Prop.computed __resource_type __resource_id
           "domain_service_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       password =
         Prop.computed __resource_type __resource_id "password";
       trusted_domain_dns_ips =
         Prop.computed __resource_type __resource_id
           "trusted_domain_dns_ips";
       trusted_domain_fqdn =
         Prop.computed __resource_type __resource_id
           "trusted_domain_fqdn";
     }
      : t)
  in
  __resource_attributes
