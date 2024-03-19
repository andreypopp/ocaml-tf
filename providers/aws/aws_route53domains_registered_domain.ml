(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type admin_contact = {
  address_line_1 : string prop option; [@option]
      (** address_line_1 *)
  address_line_2 : string prop option; [@option]
      (** address_line_2 *)
  city : string prop option; [@option]  (** city *)
  contact_type : string prop option; [@option]  (** contact_type *)
  country_code : string prop option; [@option]  (** country_code *)
  email : string prop option; [@option]  (** email *)
  extra_params : (string * string prop) list option; [@option]
      (** extra_params *)
  fax : string prop option; [@option]  (** fax *)
  first_name : string prop option; [@option]  (** first_name *)
  last_name : string prop option; [@option]  (** last_name *)
  organization_name : string prop option; [@option]
      (** organization_name *)
  phone_number : string prop option; [@option]  (** phone_number *)
  state : string prop option; [@option]  (** state *)
  zip_code : string prop option; [@option]  (** zip_code *)
}
[@@deriving yojson_of]
(** admin_contact *)

type billing_contact = {
  address_line_1 : string prop option; [@option]
      (** address_line_1 *)
  address_line_2 : string prop option; [@option]
      (** address_line_2 *)
  city : string prop option; [@option]  (** city *)
  contact_type : string prop option; [@option]  (** contact_type *)
  country_code : string prop option; [@option]  (** country_code *)
  email : string prop option; [@option]  (** email *)
  extra_params : (string * string prop) list option; [@option]
      (** extra_params *)
  fax : string prop option; [@option]  (** fax *)
  first_name : string prop option; [@option]  (** first_name *)
  last_name : string prop option; [@option]  (** last_name *)
  organization_name : string prop option; [@option]
      (** organization_name *)
  phone_number : string prop option; [@option]  (** phone_number *)
  state : string prop option; [@option]  (** state *)
  zip_code : string prop option; [@option]  (** zip_code *)
}
[@@deriving yojson_of]
(** billing_contact *)

type name_server = {
  glue_ips : string prop list option; [@option]  (** glue_ips *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** name_server *)

type registrant_contact = {
  address_line_1 : string prop option; [@option]
      (** address_line_1 *)
  address_line_2 : string prop option; [@option]
      (** address_line_2 *)
  city : string prop option; [@option]  (** city *)
  contact_type : string prop option; [@option]  (** contact_type *)
  country_code : string prop option; [@option]  (** country_code *)
  email : string prop option; [@option]  (** email *)
  extra_params : (string * string prop) list option; [@option]
      (** extra_params *)
  fax : string prop option; [@option]  (** fax *)
  first_name : string prop option; [@option]  (** first_name *)
  last_name : string prop option; [@option]  (** last_name *)
  organization_name : string prop option; [@option]
      (** organization_name *)
  phone_number : string prop option; [@option]  (** phone_number *)
  state : string prop option; [@option]  (** state *)
  zip_code : string prop option; [@option]  (** zip_code *)
}
[@@deriving yojson_of]
(** registrant_contact *)

type tech_contact = {
  address_line_1 : string prop option; [@option]
      (** address_line_1 *)
  address_line_2 : string prop option; [@option]
      (** address_line_2 *)
  city : string prop option; [@option]  (** city *)
  contact_type : string prop option; [@option]  (** contact_type *)
  country_code : string prop option; [@option]  (** country_code *)
  email : string prop option; [@option]  (** email *)
  extra_params : (string * string prop) list option; [@option]
      (** extra_params *)
  fax : string prop option; [@option]  (** fax *)
  first_name : string prop option; [@option]  (** first_name *)
  last_name : string prop option; [@option]  (** last_name *)
  organization_name : string prop option; [@option]
      (** organization_name *)
  phone_number : string prop option; [@option]  (** phone_number *)
  state : string prop option; [@option]  (** state *)
  zip_code : string prop option; [@option]  (** zip_code *)
}
[@@deriving yojson_of]
(** tech_contact *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_route53domains_registered_domain = {
  admin_privacy : bool prop option; [@option]  (** admin_privacy *)
  auto_renew : bool prop option; [@option]  (** auto_renew *)
  billing_privacy : bool prop option; [@option]
      (** billing_privacy *)
  domain_name : string prop;  (** domain_name *)
  id : string prop option; [@option]  (** id *)
  registrant_privacy : bool prop option; [@option]
      (** registrant_privacy *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  tech_privacy : bool prop option; [@option]  (** tech_privacy *)
  transfer_lock : bool prop option; [@option]  (** transfer_lock *)
  admin_contact : admin_contact list;
  billing_contact : billing_contact list;
  name_server : name_server list;
  registrant_contact : registrant_contact list;
  tech_contact : tech_contact list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_route53domains_registered_domain *)

let admin_contact ?address_line_1 ?address_line_2 ?city ?contact_type
    ?country_code ?email ?extra_params ?fax ?first_name ?last_name
    ?organization_name ?phone_number ?state ?zip_code () :
    admin_contact =
  {
    address_line_1;
    address_line_2;
    city;
    contact_type;
    country_code;
    email;
    extra_params;
    fax;
    first_name;
    last_name;
    organization_name;
    phone_number;
    state;
    zip_code;
  }

let billing_contact ?address_line_1 ?address_line_2 ?city
    ?contact_type ?country_code ?email ?extra_params ?fax ?first_name
    ?last_name ?organization_name ?phone_number ?state ?zip_code () :
    billing_contact =
  {
    address_line_1;
    address_line_2;
    city;
    contact_type;
    country_code;
    email;
    extra_params;
    fax;
    first_name;
    last_name;
    organization_name;
    phone_number;
    state;
    zip_code;
  }

let name_server ?glue_ips ~name () : name_server = { glue_ips; name }

let registrant_contact ?address_line_1 ?address_line_2 ?city
    ?contact_type ?country_code ?email ?extra_params ?fax ?first_name
    ?last_name ?organization_name ?phone_number ?state ?zip_code () :
    registrant_contact =
  {
    address_line_1;
    address_line_2;
    city;
    contact_type;
    country_code;
    email;
    extra_params;
    fax;
    first_name;
    last_name;
    organization_name;
    phone_number;
    state;
    zip_code;
  }

let tech_contact ?address_line_1 ?address_line_2 ?city ?contact_type
    ?country_code ?email ?extra_params ?fax ?first_name ?last_name
    ?organization_name ?phone_number ?state ?zip_code () :
    tech_contact =
  {
    address_line_1;
    address_line_2;
    city;
    contact_type;
    country_code;
    email;
    extra_params;
    fax;
    first_name;
    last_name;
    organization_name;
    phone_number;
    state;
    zip_code;
  }

let timeouts ?create ?update () : timeouts = { create; update }

let aws_route53domains_registered_domain ?admin_privacy ?auto_renew
    ?billing_privacy ?id ?registrant_privacy ?tags ?tags_all
    ?tech_privacy ?transfer_lock ?timeouts ~domain_name
    ~admin_contact ~billing_contact ~name_server ~registrant_contact
    ~tech_contact () : aws_route53domains_registered_domain =
  {
    admin_privacy;
    auto_renew;
    billing_privacy;
    domain_name;
    id;
    registrant_privacy;
    tags;
    tags_all;
    tech_privacy;
    transfer_lock;
    admin_contact;
    billing_contact;
    name_server;
    registrant_contact;
    tech_contact;
    timeouts;
  }

type t = {
  abuse_contact_email : string prop;
  abuse_contact_phone : string prop;
  admin_privacy : bool prop;
  auto_renew : bool prop;
  billing_privacy : bool prop;
  creation_date : string prop;
  domain_name : string prop;
  expiration_date : string prop;
  id : string prop;
  registrant_privacy : bool prop;
  registrar_name : string prop;
  registrar_url : string prop;
  reseller : string prop;
  status_list : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  tech_privacy : bool prop;
  transfer_lock : bool prop;
  updated_date : string prop;
  whois_server : string prop;
}

let register ?tf_module ?admin_privacy ?auto_renew ?billing_privacy
    ?id ?registrant_privacy ?tags ?tags_all ?tech_privacy
    ?transfer_lock ?timeouts ~domain_name ~admin_contact
    ~billing_contact ~name_server ~registrant_contact ~tech_contact
    __resource_id =
  let __resource_type = "aws_route53domains_registered_domain" in
  let __resource =
    aws_route53domains_registered_domain ?admin_privacy ?auto_renew
      ?billing_privacy ?id ?registrant_privacy ?tags ?tags_all
      ?tech_privacy ?transfer_lock ?timeouts ~domain_name
      ~admin_contact ~billing_contact ~name_server
      ~registrant_contact ~tech_contact ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53domains_registered_domain __resource);
  let __resource_attributes =
    ({
       abuse_contact_email =
         Prop.computed __resource_type __resource_id
           "abuse_contact_email";
       abuse_contact_phone =
         Prop.computed __resource_type __resource_id
           "abuse_contact_phone";
       admin_privacy =
         Prop.computed __resource_type __resource_id "admin_privacy";
       auto_renew =
         Prop.computed __resource_type __resource_id "auto_renew";
       billing_privacy =
         Prop.computed __resource_type __resource_id
           "billing_privacy";
       creation_date =
         Prop.computed __resource_type __resource_id "creation_date";
       domain_name =
         Prop.computed __resource_type __resource_id "domain_name";
       expiration_date =
         Prop.computed __resource_type __resource_id
           "expiration_date";
       id = Prop.computed __resource_type __resource_id "id";
       registrant_privacy =
         Prop.computed __resource_type __resource_id
           "registrant_privacy";
       registrar_name =
         Prop.computed __resource_type __resource_id "registrar_name";
       registrar_url =
         Prop.computed __resource_type __resource_id "registrar_url";
       reseller =
         Prop.computed __resource_type __resource_id "reseller";
       status_list =
         Prop.computed __resource_type __resource_id "status_list";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       tech_privacy =
         Prop.computed __resource_type __resource_id "tech_privacy";
       transfer_lock =
         Prop.computed __resource_type __resource_id "transfer_lock";
       updated_date =
         Prop.computed __resource_type __resource_id "updated_date";
       whois_server =
         Prop.computed __resource_type __resource_id "whois_server";
     }
      : t)
  in
  __resource_attributes
