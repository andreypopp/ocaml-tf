(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_active_directory_domain_service_trust__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_active_directory_domain_service_trust__timeouts *)

type azurerm_active_directory_domain_service_trust = {
  domain_service_id : string;  (** domain_service_id *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  password : string;  (** password *)
  trusted_domain_dns_ips : string list;
      (** trusted_domain_dns_ips *)
  trusted_domain_fqdn : string;  (** trusted_domain_fqdn *)
  timeouts :
    azurerm_active_directory_domain_service_trust__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_active_directory_domain_service_trust *)

let azurerm_active_directory_domain_service_trust ?id ?timeouts
    ~domain_service_id ~name ~password ~trusted_domain_dns_ips
    ~trusted_domain_fqdn __resource_id =
  let __resource_type =
    "azurerm_active_directory_domain_service_trust"
  in
  let __resource =
    {
      domain_service_id;
      id;
      name;
      password;
      trusted_domain_dns_ips;
      trusted_domain_fqdn;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_active_directory_domain_service_trust
       __resource);
  ()
