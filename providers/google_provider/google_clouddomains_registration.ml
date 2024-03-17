(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_clouddomains_registration__contact_settings__admin_contact__postal_address = {
  address_lines : string list option; [@option]
      (** Unstructured address lines describing the lower levels of an address.
Because values in addressLines do not have type information and may sometimes contain multiple values in a single
field (e.g. Austin, TX), it is important that the line order is clear. The order of address lines should be
envelope order for the country/region of the address. In places where this can vary (e.g. Japan), address_language
is used to make it explicit (e.g. ja for large-to-small ordering and ja-Latn or en for small-to-large). This way,
the most specific line of an address can be selected based on the language. *)
  administrative_area : string option; [@option]
      (** Highest administrative subdivision which is used for postal addresses of a country or region. For example, this can be a state,
a province, an oblast, or a prefecture. Specifically, for Spain this is the province and not the autonomous community
(e.g. Barcelona and not Catalonia). Many countries don't use an administrative area in postal addresses. E.g. in Switzerland
this should be left unpopulated. *)
  locality : string option; [@option]
      (** Generally refers to the city/town portion of the address. Examples: US city, IT comune, UK post town. In regions of the world
where localities are not well defined or do not fit into this structure well, leave locality empty and use addressLines. *)
  organization : string option; [@option]
      (** The name of the organization at the address. *)
  postal_code : string option; [@option]
      (** Postal code of the address. Not all countries use or require postal codes to be present, but where they are used,
they may trigger additional validation with other parts of the address (e.g. state/zip validation in the U.S.A.). *)
  recipients : string list option; [@option]
      (** The recipient at the address. This field may, under certain circumstances, contain multiline information. For example,
it might contain care of information. *)
  region_code : string;
      (** Required. CLDR region code of the country/region of the address. This is never inferred and it is up to the user to
ensure the value is correct. See https://cldr.unicode.org/ and
https://www.unicode.org/cldr/charts/30/supplemental/territory_information.html for details. Example: CH for Switzerland. *)
}
[@@deriving yojson_of]
(** Required. Postal address of the contact. *)

type google_clouddomains_registration__contact_settings__admin_contact = {
  email : string;  (** Required. Email address of the contact. *)
  fax_number : string option; [@option]
      (** Fax number of the contact in international format. For example, +1-800-555-0123. *)
  phone_number : string;
      (** Required. Phone number of the contact in international format. For example, +1-800-555-0123. *)
  postal_address :
    google_clouddomains_registration__contact_settings__admin_contact__postal_address
    list;
}
[@@deriving yojson_of]
(** Caution: Anyone with access to this email address, phone number, and/or postal address can take control of the domain.

Warning: For new Registrations, the registrant receives an email confirmation that they must complete within 15 days to
avoid domain suspension. *)

type google_clouddomains_registration__contact_settings__registrant_contact__postal_address = {
  address_lines : string list option; [@option]
      (** Unstructured address lines describing the lower levels of an address.
Because values in addressLines do not have type information and may sometimes contain multiple values in a single
field (e.g. Austin, TX), it is important that the line order is clear. The order of address lines should be
envelope order for the country/region of the address. In places where this can vary (e.g. Japan), address_language
is used to make it explicit (e.g. ja for large-to-small ordering and ja-Latn or en for small-to-large). This way,
the most specific line of an address can be selected based on the language. *)
  administrative_area : string option; [@option]
      (** Highest administrative subdivision which is used for postal addresses of a country or region. For example, this can be a state,
a province, an oblast, or a prefecture. Specifically, for Spain this is the province and not the autonomous community
(e.g. Barcelona and not Catalonia). Many countries don't use an administrative area in postal addresses. E.g. in Switzerland
this should be left unpopulated. *)
  locality : string option; [@option]
      (** Generally refers to the city/town portion of the address. Examples: US city, IT comune, UK post town. In regions of the world
where localities are not well defined or do not fit into this structure well, leave locality empty and use addressLines. *)
  organization : string option; [@option]
      (** The name of the organization at the address. *)
  postal_code : string option; [@option]
      (** Postal code of the address. Not all countries use or require postal codes to be present, but where they are used,
they may trigger additional validation with other parts of the address (e.g. state/zip validation in the U.S.A.). *)
  recipients : string list option; [@option]
      (** The recipient at the address. This field may, under certain circumstances, contain multiline information. For example,
it might contain care of information. *)
  region_code : string;
      (** Required. CLDR region code of the country/region of the address. This is never inferred and it is up to the user to
ensure the value is correct. See https://cldr.unicode.org/ and
https://www.unicode.org/cldr/charts/30/supplemental/territory_information.html for details. Example: CH for Switzerland. *)
}
[@@deriving yojson_of]
(** Required. Postal address of the contact. *)

type google_clouddomains_registration__contact_settings__registrant_contact = {
  email : string;  (** Required. Email address of the contact. *)
  fax_number : string option; [@option]
      (** Fax number of the contact in international format. For example, +1-800-555-0123. *)
  phone_number : string;
      (** Required. Phone number of the contact in international format. For example, +1-800-555-0123. *)
  postal_address :
    google_clouddomains_registration__contact_settings__registrant_contact__postal_address
    list;
}
[@@deriving yojson_of]
(** Caution: Anyone with access to this email address, phone number, and/or postal address can take control of the domain.

Warning: For new Registrations, the registrant receives an email confirmation that they must complete within 15 days to
avoid domain suspension. *)

type google_clouddomains_registration__contact_settings__technical_contact__postal_address = {
  address_lines : string list option; [@option]
      (** Unstructured address lines describing the lower levels of an address.
Because values in addressLines do not have type information and may sometimes contain multiple values in a single
field (e.g. Austin, TX), it is important that the line order is clear. The order of address lines should be
envelope order for the country/region of the address. In places where this can vary (e.g. Japan), address_language
is used to make it explicit (e.g. ja for large-to-small ordering and ja-Latn or en for small-to-large). This way,
the most specific line of an address can be selected based on the language. *)
  administrative_area : string option; [@option]
      (** Highest administrative subdivision which is used for postal addresses of a country or region. For example, this can be a state,
a province, an oblast, or a prefecture. Specifically, for Spain this is the province and not the autonomous community
(e.g. Barcelona and not Catalonia). Many countries don't use an administrative area in postal addresses. E.g. in Switzerland
this should be left unpopulated. *)
  locality : string option; [@option]
      (** Generally refers to the city/town portion of the address. Examples: US city, IT comune, UK post town. In regions of the world
where localities are not well defined or do not fit into this structure well, leave locality empty and use addressLines. *)
  organization : string option; [@option]
      (** The name of the organization at the address. *)
  postal_code : string option; [@option]
      (** Postal code of the address. Not all countries use or require postal codes to be present, but where they are used,
they may trigger additional validation with other parts of the address (e.g. state/zip validation in the U.S.A.). *)
  recipients : string list option; [@option]
      (** The recipient at the address. This field may, under certain circumstances, contain multiline information. For example,
it might contain care of information. *)
  region_code : string;
      (** Required. CLDR region code of the country/region of the address. This is never inferred and it is up to the user to
ensure the value is correct. See https://cldr.unicode.org/ and
https://www.unicode.org/cldr/charts/30/supplemental/territory_information.html for details. Example: CH for Switzerland. *)
}
[@@deriving yojson_of]
(** Required. Postal address of the contact. *)

type google_clouddomains_registration__contact_settings__technical_contact = {
  email : string;  (** Required. Email address of the contact. *)
  fax_number : string option; [@option]
      (** Fax number of the contact in international format. For example, +1-800-555-0123. *)
  phone_number : string;
      (** Required. Phone number of the contact in international format. For example, +1-800-555-0123. *)
  postal_address :
    google_clouddomains_registration__contact_settings__technical_contact__postal_address
    list;
}
[@@deriving yojson_of]
(** Caution: Anyone with access to this email address, phone number, and/or postal address can take control of the domain.

Warning: For new Registrations, the registrant receives an email confirmation that they must complete within 15 days to
avoid domain suspension. *)

type google_clouddomains_registration__contact_settings = {
  privacy : string;
      (** Required. Privacy setting for the contacts associated with the Registration.
Values are PUBLIC_CONTACT_DATA, PRIVATE_CONTACT_DATA, and REDACTED_CONTACT_DATA *)
  admin_contact :
    google_clouddomains_registration__contact_settings__admin_contact
    list;
  registrant_contact :
    google_clouddomains_registration__contact_settings__registrant_contact
    list;
  technical_contact :
    google_clouddomains_registration__contact_settings__technical_contact
    list;
}
[@@deriving yojson_of]
(** Required. Settings for contact information linked to the Registration. *)

type google_clouddomains_registration__dns_settings__custom_dns__ds_records = {
  algorithm : string option; [@option]
      (** The algorithm used to generate the referenced DNSKEY. *)
  digest : string option; [@option]
      (** The digest generated from the referenced DNSKEY. *)
  digest_type : string option; [@option]
      (** The hash function used to generate the digest of the referenced DNSKEY. *)
  key_tag : float option; [@option]
      (** The key tag of the record. Must be set in range 0 -- 65535. *)
}
[@@deriving yojson_of]
(** The list of DS records for this domain, which are used to enable DNSSEC. The domain's DNS provider can provide
the values to set here. If this field is empty, DNSSEC is disabled. *)

type google_clouddomains_registration__dns_settings__custom_dns = {
  name_servers : string list;
      (** Required. A list of name servers that store the DNS zone for this domain. Each name server is a domain
name, with Unicode domain names expressed in Punycode format. *)
  ds_records :
    google_clouddomains_registration__dns_settings__custom_dns__ds_records
    list;
}
[@@deriving yojson_of]
(** Configuration for an arbitrary DNS provider. *)

type google_clouddomains_registration__dns_settings__glue_records = {
  host_name : string;
      (** Required. Domain name of the host in Punycode format. *)
  ipv4_addresses : string list option; [@option]
      (** List of IPv4 addresses corresponding to this host in the standard decimal format (e.g. 198.51.100.1).
At least one of ipv4_address and ipv6_address must be set. *)
  ipv6_addresses : string list option; [@option]
      (** List of IPv4 addresses corresponding to this host in the standard decimal format (e.g. 198.51.100.1).
At least one of ipv4_address and ipv6_address must be set. *)
}
[@@deriving yojson_of]
(** The list of glue records for this Registration. Commonly empty. *)

type google_clouddomains_registration__dns_settings = {
  custom_dns :
    google_clouddomains_registration__dns_settings__custom_dns list;
  glue_records :
    google_clouddomains_registration__dns_settings__glue_records list;
}
[@@deriving yojson_of]
(** Settings controlling the DNS configuration of the Registration. *)

type google_clouddomains_registration__management_settings = {
  preferred_renewal_method : string option; [@option]
      (** The desired renewal method for this Registration. The actual renewalMethod is automatically updated to reflect this choice.
If unset or equal to RENEWAL_METHOD_UNSPECIFIED, the actual renewalMethod is treated as if it were set to AUTOMATIC_RENEWAL.
You cannot use RENEWAL_DISABLED during resource creation, and you can update the renewal status only when the Registration
resource has state ACTIVE or SUSPENDED.

When preferredRenewalMethod is set to AUTOMATIC_RENEWAL, the actual renewalMethod can be set to RENEWAL_DISABLED in case of
problems with the billing account or reported domain abuse. In such cases, check the issues field on the Registration. After
the problem is resolved, the renewalMethod is automatically updated to preferredRenewalMethod in a few hours. *)
  renewal_method : string;
      (** Output only. The actual renewal method for this Registration. When preferredRenewalMethod is set to AUTOMATIC_RENEWAL,
the actual renewalMethod can be equal to RENEWAL_DISABLED—for example, when there are problems with the billing account
or reported domain abuse. In such cases, check the issues field on the Registration. After the problem is resolved, the
renewalMethod is automatically updated to preferredRenewalMethod in a few hours. *)
  transfer_lock_state : string option; [@option]
      (** Controls whether the domain can be transferred to another registrar. Values are UNLOCKED or LOCKED. *)
}
[@@deriving yojson_of]
(** Settings for management of the Registration, including renewal, billing, and transfer *)

type google_clouddomains_registration__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_clouddomains_registration__timeouts *)

type google_clouddomains_registration__yearly_price = {
  currency_code : string option; [@option]
      (** The three-letter currency code defined in ISO 4217. *)
  units : string option; [@option]
      (** The whole units of the amount. For example if currencyCode is USD, then 1 unit is one US dollar. *)
}
[@@deriving yojson_of]
(** Required. Yearly price to register or renew the domain. The value that should be put here can be obtained from
registrations.retrieveRegisterParameters or registrations.searchDomains calls. *)

type google_clouddomains_registration = {
  contact_notices : string list option; [@option]
      (** The list of contact notices that the caller acknowledges. Possible value is PUBLIC_CONTACT_DATA_ACKNOWLEDGEMENT *)
  domain_name : string;
      (** Required. The domain name. Unicode domain names must be expressed in Punycode format. *)
  domain_notices : string list option; [@option]
      (** The list of domain notices that you acknowledge. Possible value is HSTS_PRELOADED *)
  labels : (string * string) list option; [@option]
      (** Set of labels associated with the Registration.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string;  (** The location for the resource *)
  contact_settings :
    google_clouddomains_registration__contact_settings list;
  dns_settings : google_clouddomains_registration__dns_settings list;
  management_settings :
    google_clouddomains_registration__management_settings list;
  timeouts : google_clouddomains_registration__timeouts option;
  yearly_price : google_clouddomains_registration__yearly_price list;
}
[@@deriving yojson_of]
(** google_clouddomains_registration *)

let google_clouddomains_registration ?contact_notices ?domain_notices
    ?labels ?timeouts ~domain_name ~location ~contact_settings
    ~dns_settings ~management_settings ~yearly_price __resource_id =
  let __resource_type = "google_clouddomains_registration" in
  let __resource =
    {
      contact_notices;
      domain_name;
      domain_notices;
      labels;
      location;
      contact_settings;
      dns_settings;
      management_settings;
      timeouts;
      yearly_price;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_clouddomains_registration __resource);
  ()
