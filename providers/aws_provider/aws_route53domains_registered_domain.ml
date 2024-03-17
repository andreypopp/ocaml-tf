(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_route53domains_registered_domain__admin_contact = {
  address_line_1 : string option; [@option]  (** address_line_1 *)
  address_line_2 : string option; [@option]  (** address_line_2 *)
  city : string option; [@option]  (** city *)
  contact_type : string option; [@option]  (** contact_type *)
  country_code : string option; [@option]  (** country_code *)
  email : string option; [@option]  (** email *)
  extra_params : (string * string) list option; [@option]
      (** extra_params *)
  fax : string option; [@option]  (** fax *)
  first_name : string option; [@option]  (** first_name *)
  last_name : string option; [@option]  (** last_name *)
  organization_name : string option; [@option]
      (** organization_name *)
  phone_number : string option; [@option]  (** phone_number *)
  state : string option; [@option]  (** state *)
  zip_code : string option; [@option]  (** zip_code *)
}
[@@deriving yojson_of]
(** aws_route53domains_registered_domain__admin_contact *)

type aws_route53domains_registered_domain__billing_contact = {
  address_line_1 : string option; [@option]  (** address_line_1 *)
  address_line_2 : string option; [@option]  (** address_line_2 *)
  city : string option; [@option]  (** city *)
  contact_type : string option; [@option]  (** contact_type *)
  country_code : string option; [@option]  (** country_code *)
  email : string option; [@option]  (** email *)
  extra_params : (string * string) list option; [@option]
      (** extra_params *)
  fax : string option; [@option]  (** fax *)
  first_name : string option; [@option]  (** first_name *)
  last_name : string option; [@option]  (** last_name *)
  organization_name : string option; [@option]
      (** organization_name *)
  phone_number : string option; [@option]  (** phone_number *)
  state : string option; [@option]  (** state *)
  zip_code : string option; [@option]  (** zip_code *)
}
[@@deriving yojson_of]
(** aws_route53domains_registered_domain__billing_contact *)

type aws_route53domains_registered_domain__name_server = {
  glue_ips : string list option; [@option]  (** glue_ips *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** aws_route53domains_registered_domain__name_server *)

type aws_route53domains_registered_domain__registrant_contact = {
  address_line_1 : string option; [@option]  (** address_line_1 *)
  address_line_2 : string option; [@option]  (** address_line_2 *)
  city : string option; [@option]  (** city *)
  contact_type : string option; [@option]  (** contact_type *)
  country_code : string option; [@option]  (** country_code *)
  email : string option; [@option]  (** email *)
  extra_params : (string * string) list option; [@option]
      (** extra_params *)
  fax : string option; [@option]  (** fax *)
  first_name : string option; [@option]  (** first_name *)
  last_name : string option; [@option]  (** last_name *)
  organization_name : string option; [@option]
      (** organization_name *)
  phone_number : string option; [@option]  (** phone_number *)
  state : string option; [@option]  (** state *)
  zip_code : string option; [@option]  (** zip_code *)
}
[@@deriving yojson_of]
(** aws_route53domains_registered_domain__registrant_contact *)

type aws_route53domains_registered_domain__tech_contact = {
  address_line_1 : string option; [@option]  (** address_line_1 *)
  address_line_2 : string option; [@option]  (** address_line_2 *)
  city : string option; [@option]  (** city *)
  contact_type : string option; [@option]  (** contact_type *)
  country_code : string option; [@option]  (** country_code *)
  email : string option; [@option]  (** email *)
  extra_params : (string * string) list option; [@option]
      (** extra_params *)
  fax : string option; [@option]  (** fax *)
  first_name : string option; [@option]  (** first_name *)
  last_name : string option; [@option]  (** last_name *)
  organization_name : string option; [@option]
      (** organization_name *)
  phone_number : string option; [@option]  (** phone_number *)
  state : string option; [@option]  (** state *)
  zip_code : string option; [@option]  (** zip_code *)
}
[@@deriving yojson_of]
(** aws_route53domains_registered_domain__tech_contact *)

type aws_route53domains_registered_domain__timeouts = {
  create : string option; [@option]  (** create *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_route53domains_registered_domain__timeouts *)

type aws_route53domains_registered_domain = {
  admin_privacy : bool option; [@option]  (** admin_privacy *)
  auto_renew : bool option; [@option]  (** auto_renew *)
  billing_privacy : bool option; [@option]  (** billing_privacy *)
  domain_name : string;  (** domain_name *)
  registrant_privacy : bool option; [@option]
      (** registrant_privacy *)
  tags : (string * string) list option; [@option]  (** tags *)
  tech_privacy : bool option; [@option]  (** tech_privacy *)
  transfer_lock : bool option; [@option]  (** transfer_lock *)
  admin_contact :
    aws_route53domains_registered_domain__admin_contact list;
  billing_contact :
    aws_route53domains_registered_domain__billing_contact list;
  name_server :
    aws_route53domains_registered_domain__name_server list;
  registrant_contact :
    aws_route53domains_registered_domain__registrant_contact list;
  tech_contact :
    aws_route53domains_registered_domain__tech_contact list;
  timeouts : aws_route53domains_registered_domain__timeouts option;
}
[@@deriving yojson_of]
(** aws_route53domains_registered_domain *)

let aws_route53domains_registered_domain ?admin_privacy ?auto_renew
    ?billing_privacy ?registrant_privacy ?tags ?tech_privacy
    ?transfer_lock ?timeouts ~domain_name ~admin_contact
    ~billing_contact ~name_server ~registrant_contact ~tech_contact
    __resource_id =
  let __resource_type = "aws_route53domains_registered_domain" in
  let __resource =
    {
      admin_privacy;
      auto_renew;
      billing_privacy;
      domain_name;
      registrant_privacy;
      tags;
      tech_privacy;
      transfer_lock;
      admin_contact;
      billing_contact;
      name_server;
      registrant_contact;
      tech_contact;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53domains_registered_domain __resource);
  ()
