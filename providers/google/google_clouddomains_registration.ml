(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type contact_settings__admin_contact__postal_address = {
  address_lines : string prop list option; [@option]
  administrative_area : string prop option; [@option]
  locality : string prop option; [@option]
  organization : string prop option; [@option]
  postal_code : string prop option; [@option]
  recipients : string prop list option; [@option]
  region_code : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : contact_settings__admin_contact__postal_address) -> ()

let yojson_of_contact_settings__admin_contact__postal_address =
  (function
   | {
       address_lines = v_address_lines;
       administrative_area = v_administrative_area;
       locality = v_locality;
       organization = v_organization;
       postal_code = v_postal_code;
       recipients = v_recipients;
       region_code = v_region_code;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region_code in
         ("region_code", arg) :: bnds
       in
       let bnds =
         match v_recipients with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "recipients", arg in
             bnd :: bnds
       in
       let bnds =
         match v_postal_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "postal_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_organization with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "organization", arg in
             bnd :: bnds
       in
       let bnds =
         match v_locality with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "locality", arg in
             bnd :: bnds
       in
       let bnds =
         match v_administrative_area with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "administrative_area", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address_lines with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "address_lines", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : contact_settings__admin_contact__postal_address ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_contact_settings__admin_contact__postal_address

[@@@deriving.end]

type contact_settings__admin_contact = {
  email : string prop;
  fax_number : string prop option; [@option]
  phone_number : string prop;
  postal_address :
    contact_settings__admin_contact__postal_address list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : contact_settings__admin_contact) -> ()

let yojson_of_contact_settings__admin_contact =
  (function
   | {
       email = v_email;
       fax_number = v_fax_number;
       phone_number = v_phone_number;
       postal_address = v_postal_address;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_contact_settings__admin_contact__postal_address
             v_postal_address
         in
         ("postal_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_phone_number in
         ("phone_number", arg) :: bnds
       in
       let bnds =
         match v_fax_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fax_number", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email in
         ("email", arg) :: bnds
       in
       `Assoc bnds
    : contact_settings__admin_contact ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_contact_settings__admin_contact

[@@@deriving.end]

type contact_settings__registrant_contact__postal_address = {
  address_lines : string prop list option; [@option]
  administrative_area : string prop option; [@option]
  locality : string prop option; [@option]
  organization : string prop option; [@option]
  postal_code : string prop option; [@option]
  recipients : string prop list option; [@option]
  region_code : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : contact_settings__registrant_contact__postal_address) -> ()

let yojson_of_contact_settings__registrant_contact__postal_address =
  (function
   | {
       address_lines = v_address_lines;
       administrative_area = v_administrative_area;
       locality = v_locality;
       organization = v_organization;
       postal_code = v_postal_code;
       recipients = v_recipients;
       region_code = v_region_code;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region_code in
         ("region_code", arg) :: bnds
       in
       let bnds =
         match v_recipients with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "recipients", arg in
             bnd :: bnds
       in
       let bnds =
         match v_postal_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "postal_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_organization with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "organization", arg in
             bnd :: bnds
       in
       let bnds =
         match v_locality with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "locality", arg in
             bnd :: bnds
       in
       let bnds =
         match v_administrative_area with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "administrative_area", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address_lines with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "address_lines", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : contact_settings__registrant_contact__postal_address ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_contact_settings__registrant_contact__postal_address

[@@@deriving.end]

type contact_settings__registrant_contact = {
  email : string prop;
  fax_number : string prop option; [@option]
  phone_number : string prop;
  postal_address :
    contact_settings__registrant_contact__postal_address list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : contact_settings__registrant_contact) -> ()

let yojson_of_contact_settings__registrant_contact =
  (function
   | {
       email = v_email;
       fax_number = v_fax_number;
       phone_number = v_phone_number;
       postal_address = v_postal_address;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_contact_settings__registrant_contact__postal_address
             v_postal_address
         in
         ("postal_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_phone_number in
         ("phone_number", arg) :: bnds
       in
       let bnds =
         match v_fax_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fax_number", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email in
         ("email", arg) :: bnds
       in
       `Assoc bnds
    : contact_settings__registrant_contact ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_contact_settings__registrant_contact

[@@@deriving.end]

type contact_settings__technical_contact__postal_address = {
  address_lines : string prop list option; [@option]
  administrative_area : string prop option; [@option]
  locality : string prop option; [@option]
  organization : string prop option; [@option]
  postal_code : string prop option; [@option]
  recipients : string prop list option; [@option]
  region_code : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : contact_settings__technical_contact__postal_address) -> ()

let yojson_of_contact_settings__technical_contact__postal_address =
  (function
   | {
       address_lines = v_address_lines;
       administrative_area = v_administrative_area;
       locality = v_locality;
       organization = v_organization;
       postal_code = v_postal_code;
       recipients = v_recipients;
       region_code = v_region_code;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region_code in
         ("region_code", arg) :: bnds
       in
       let bnds =
         match v_recipients with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "recipients", arg in
             bnd :: bnds
       in
       let bnds =
         match v_postal_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "postal_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_organization with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "organization", arg in
             bnd :: bnds
       in
       let bnds =
         match v_locality with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "locality", arg in
             bnd :: bnds
       in
       let bnds =
         match v_administrative_area with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "administrative_area", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address_lines with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "address_lines", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : contact_settings__technical_contact__postal_address ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_contact_settings__technical_contact__postal_address

[@@@deriving.end]

type contact_settings__technical_contact = {
  email : string prop;
  fax_number : string prop option; [@option]
  phone_number : string prop;
  postal_address :
    contact_settings__technical_contact__postal_address list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : contact_settings__technical_contact) -> ()

let yojson_of_contact_settings__technical_contact =
  (function
   | {
       email = v_email;
       fax_number = v_fax_number;
       phone_number = v_phone_number;
       postal_address = v_postal_address;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_contact_settings__technical_contact__postal_address
             v_postal_address
         in
         ("postal_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_phone_number in
         ("phone_number", arg) :: bnds
       in
       let bnds =
         match v_fax_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fax_number", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email in
         ("email", arg) :: bnds
       in
       `Assoc bnds
    : contact_settings__technical_contact ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_contact_settings__technical_contact

[@@@deriving.end]

type contact_settings = {
  privacy : string prop;
  admin_contact : contact_settings__admin_contact list;
  registrant_contact : contact_settings__registrant_contact list;
  technical_contact : contact_settings__technical_contact list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : contact_settings) -> ()

let yojson_of_contact_settings =
  (function
   | {
       privacy = v_privacy;
       admin_contact = v_admin_contact;
       registrant_contact = v_registrant_contact;
       technical_contact = v_technical_contact;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_contact_settings__technical_contact
             v_technical_contact
         in
         ("technical_contact", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_contact_settings__registrant_contact
             v_registrant_contact
         in
         ("registrant_contact", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_contact_settings__admin_contact
             v_admin_contact
         in
         ("admin_contact", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_privacy in
         ("privacy", arg) :: bnds
       in
       `Assoc bnds
    : contact_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_contact_settings

[@@@deriving.end]

type dns_settings__custom_dns__ds_records = {
  algorithm : string prop option; [@option]
  digest : string prop option; [@option]
  digest_type : string prop option; [@option]
  key_tag : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dns_settings__custom_dns__ds_records) -> ()

let yojson_of_dns_settings__custom_dns__ds_records =
  (function
   | {
       algorithm = v_algorithm;
       digest = v_digest;
       digest_type = v_digest_type;
       key_tag = v_key_tag;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_key_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "key_tag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_digest_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "digest_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_digest with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "digest", arg in
             bnd :: bnds
       in
       let bnds =
         match v_algorithm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "algorithm", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : dns_settings__custom_dns__ds_records ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dns_settings__custom_dns__ds_records

[@@@deriving.end]

type dns_settings__custom_dns = {
  name_servers : string prop list;
  ds_records : dns_settings__custom_dns__ds_records list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dns_settings__custom_dns) -> ()

let yojson_of_dns_settings__custom_dns =
  (function
   | { name_servers = v_name_servers; ds_records = v_ds_records } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_dns_settings__custom_dns__ds_records
             v_ds_records
         in
         ("ds_records", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_name_servers
         in
         ("name_servers", arg) :: bnds
       in
       `Assoc bnds
    : dns_settings__custom_dns -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dns_settings__custom_dns

[@@@deriving.end]

type dns_settings__glue_records = {
  host_name : string prop;
  ipv4_addresses : string prop list option; [@option]
  ipv6_addresses : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dns_settings__glue_records) -> ()

let yojson_of_dns_settings__glue_records =
  (function
   | {
       host_name = v_host_name;
       ipv4_addresses = v_ipv4_addresses;
       ipv6_addresses = v_ipv6_addresses;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_ipv6_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ipv6_addresses", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipv4_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ipv4_addresses", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host_name in
         ("host_name", arg) :: bnds
       in
       `Assoc bnds
    : dns_settings__glue_records -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dns_settings__glue_records

[@@@deriving.end]

type dns_settings = {
  custom_dns : dns_settings__custom_dns list;
  glue_records : dns_settings__glue_records list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dns_settings) -> ()

let yojson_of_dns_settings =
  (function
   | { custom_dns = v_custom_dns; glue_records = v_glue_records } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_dns_settings__glue_records
             v_glue_records
         in
         ("glue_records", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_dns_settings__custom_dns
             v_custom_dns
         in
         ("custom_dns", arg) :: bnds
       in
       `Assoc bnds
    : dns_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dns_settings

[@@@deriving.end]

type management_settings = {
  preferred_renewal_method : string prop option; [@option]
  transfer_lock_state : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : management_settings) -> ()

let yojson_of_management_settings =
  (function
   | {
       preferred_renewal_method = v_preferred_renewal_method;
       transfer_lock_state = v_transfer_lock_state;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_transfer_lock_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "transfer_lock_state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preferred_renewal_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "preferred_renewal_method", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : management_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_management_settings

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type yearly_price = {
  currency_code : string prop option; [@option]
  units : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : yearly_price) -> ()

let yojson_of_yearly_price =
  (function
   | { currency_code = v_currency_code; units = v_units } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_units with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "units", arg in
             bnd :: bnds
       in
       let bnds =
         match v_currency_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "currency_code", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : yearly_price -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_yearly_price

[@@@deriving.end]

type google_clouddomains_registration = {
  contact_notices : string prop list option; [@option]
  domain_name : string prop;
  domain_notices : string prop list option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop;
  project : string prop option; [@option]
  contact_settings : contact_settings list;
  dns_settings : dns_settings list;
  management_settings : management_settings list;
  timeouts : timeouts option;
  yearly_price : yearly_price list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_clouddomains_registration) -> ()

let yojson_of_google_clouddomains_registration =
  (function
   | {
       contact_notices = v_contact_notices;
       domain_name = v_domain_name;
       domain_notices = v_domain_notices;
       id = v_id;
       labels = v_labels;
       location = v_location;
       project = v_project;
       contact_settings = v_contact_settings;
       dns_settings = v_dns_settings;
       management_settings = v_management_settings;
       timeouts = v_timeouts;
       yearly_price = v_yearly_price;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_yearly_price v_yearly_price
         in
         ("yearly_price", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_management_settings
             v_management_settings
         in
         ("management_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_dns_settings v_dns_settings
         in
         ("dns_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_contact_settings
             v_contact_settings
         in
         ("contact_settings", arg) :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_domain_notices with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "domain_notices", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       let bnds =
         match v_contact_notices with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "contact_notices", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_clouddomains_registration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_clouddomains_registration

[@@@deriving.end]

let contact_settings__admin_contact__postal_address ?address_lines
    ?administrative_area ?locality ?organization ?postal_code
    ?recipients ~region_code () :
    contact_settings__admin_contact__postal_address =
  {
    address_lines;
    administrative_area;
    locality;
    organization;
    postal_code;
    recipients;
    region_code;
  }

let contact_settings__admin_contact ?fax_number ~email ~phone_number
    ~postal_address () : contact_settings__admin_contact =
  { email; fax_number; phone_number; postal_address }

let contact_settings__registrant_contact__postal_address
    ?address_lines ?administrative_area ?locality ?organization
    ?postal_code ?recipients ~region_code () :
    contact_settings__registrant_contact__postal_address =
  {
    address_lines;
    administrative_area;
    locality;
    organization;
    postal_code;
    recipients;
    region_code;
  }

let contact_settings__registrant_contact ?fax_number ~email
    ~phone_number ~postal_address () :
    contact_settings__registrant_contact =
  { email; fax_number; phone_number; postal_address }

let contact_settings__technical_contact__postal_address
    ?address_lines ?administrative_area ?locality ?organization
    ?postal_code ?recipients ~region_code () :
    contact_settings__technical_contact__postal_address =
  {
    address_lines;
    administrative_area;
    locality;
    organization;
    postal_code;
    recipients;
    region_code;
  }

let contact_settings__technical_contact ?fax_number ~email
    ~phone_number ~postal_address () :
    contact_settings__technical_contact =
  { email; fax_number; phone_number; postal_address }

let contact_settings ~privacy ~admin_contact ~registrant_contact
    ~technical_contact () : contact_settings =
  { privacy; admin_contact; registrant_contact; technical_contact }

let dns_settings__custom_dns__ds_records ?algorithm ?digest
    ?digest_type ?key_tag () : dns_settings__custom_dns__ds_records =
  { algorithm; digest; digest_type; key_tag }

let dns_settings__custom_dns ~name_servers ~ds_records () :
    dns_settings__custom_dns =
  { name_servers; ds_records }

let dns_settings__glue_records ?ipv4_addresses ?ipv6_addresses
    ~host_name () : dns_settings__glue_records =
  { host_name; ipv4_addresses; ipv6_addresses }

let dns_settings ~custom_dns ~glue_records () : dns_settings =
  { custom_dns; glue_records }

let management_settings ?preferred_renewal_method
    ?transfer_lock_state () : management_settings =
  { preferred_renewal_method; transfer_lock_state }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let yearly_price ?currency_code ?units () : yearly_price =
  { currency_code; units }

let google_clouddomains_registration ?contact_notices ?domain_notices
    ?id ?labels ?project ?timeouts ~domain_name ~location
    ~contact_settings ~dns_settings ~management_settings
    ~yearly_price () : google_clouddomains_registration =
  {
    contact_notices;
    domain_name;
    domain_notices;
    id;
    labels;
    location;
    project;
    contact_settings;
    dns_settings;
    management_settings;
    timeouts;
    yearly_price;
  }

type t = {
  contact_notices : string list prop;
  create_time : string prop;
  domain_name : string prop;
  domain_notices : string list prop;
  effective_labels : (string * string) list prop;
  expire_time : string prop;
  id : string prop;
  issues : string list prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  register_failure_reason : string prop;
  state : string prop;
  supported_privacy : string list prop;
  terraform_labels : (string * string) list prop;
}

let make ?contact_notices ?domain_notices ?id ?labels ?project
    ?timeouts ~domain_name ~location ~contact_settings ~dns_settings
    ~management_settings ~yearly_price __id =
  let __type = "google_clouddomains_registration" in
  let __attrs =
    ({
       contact_notices = Prop.computed __type __id "contact_notices";
       create_time = Prop.computed __type __id "create_time";
       domain_name = Prop.computed __type __id "domain_name";
       domain_notices = Prop.computed __type __id "domain_notices";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       expire_time = Prop.computed __type __id "expire_time";
       id = Prop.computed __type __id "id";
       issues = Prop.computed __type __id "issues";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       register_failure_reason =
         Prop.computed __type __id "register_failure_reason";
       state = Prop.computed __type __id "state";
       supported_privacy =
         Prop.computed __type __id "supported_privacy";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_clouddomains_registration
        (google_clouddomains_registration ?contact_notices
           ?domain_notices ?id ?labels ?project ?timeouts
           ~domain_name ~location ~contact_settings ~dns_settings
           ~management_settings ~yearly_price ());
    attrs = __attrs;
  }

let register ?tf_module ?contact_notices ?domain_notices ?id ?labels
    ?project ?timeouts ~domain_name ~location ~contact_settings
    ~dns_settings ~management_settings ~yearly_price __id =
  let (r : _ Tf_core.resource) =
    make ?contact_notices ?domain_notices ?id ?labels ?project
      ?timeouts ~domain_name ~location ~contact_settings
      ~dns_settings ~management_settings ~yearly_price __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
