(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_key_vault_certificate__certificate = {
  contents : string;  (** contents *)
  password : string option; [@option]  (** password *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_certificate__certificate *)

type azurerm_key_vault_certificate__certificate_policy__issuer_parameters = {
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_certificate__certificate_policy__issuer_parameters *)

type azurerm_key_vault_certificate__certificate_policy__key_properties = {
  curve : string option; [@option]  (** curve *)
  exportable : bool;  (** exportable *)
  key_size : float option; [@option]  (** key_size *)
  key_type : string;  (** key_type *)
  reuse_key : bool;  (** reuse_key *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_certificate__certificate_policy__key_properties *)

type azurerm_key_vault_certificate__certificate_policy__lifetime_action__action = {
  action_type : string;  (** action_type *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_certificate__certificate_policy__lifetime_action__action *)

type azurerm_key_vault_certificate__certificate_policy__lifetime_action__trigger = {
  days_before_expiry : float option; [@option]
      (** days_before_expiry *)
  lifetime_percentage : float option; [@option]
      (** lifetime_percentage *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_certificate__certificate_policy__lifetime_action__trigger *)

type azurerm_key_vault_certificate__certificate_policy__lifetime_action = {
  action :
    azurerm_key_vault_certificate__certificate_policy__lifetime_action__action
    list;
  trigger :
    azurerm_key_vault_certificate__certificate_policy__lifetime_action__trigger
    list;
}
[@@deriving yojson_of]
(** azurerm_key_vault_certificate__certificate_policy__lifetime_action *)

type azurerm_key_vault_certificate__certificate_policy__secret_properties = {
  content_type : string;  (** content_type *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_certificate__certificate_policy__secret_properties *)

type azurerm_key_vault_certificate__certificate_policy__x509_certificate_properties__subject_alternative_names = {
  dns_names : string list option; [@option]  (** dns_names *)
  emails : string list option; [@option]  (** emails *)
  upns : string list option; [@option]  (** upns *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_certificate__certificate_policy__x509_certificate_properties__subject_alternative_names *)

type azurerm_key_vault_certificate__certificate_policy__x509_certificate_properties = {
  extended_key_usage : string list option; [@option]
      (** extended_key_usage *)
  key_usage : string list;  (** key_usage *)
  subject : string;  (** subject *)
  validity_in_months : float;  (** validity_in_months *)
  subject_alternative_names :
    azurerm_key_vault_certificate__certificate_policy__x509_certificate_properties__subject_alternative_names
    list;
}
[@@deriving yojson_of]
(** azurerm_key_vault_certificate__certificate_policy__x509_certificate_properties *)

type azurerm_key_vault_certificate__certificate_policy = {
  issuer_parameters :
    azurerm_key_vault_certificate__certificate_policy__issuer_parameters
    list;
  key_properties :
    azurerm_key_vault_certificate__certificate_policy__key_properties
    list;
  lifetime_action :
    azurerm_key_vault_certificate__certificate_policy__lifetime_action
    list;
  secret_properties :
    azurerm_key_vault_certificate__certificate_policy__secret_properties
    list;
  x509_certificate_properties :
    azurerm_key_vault_certificate__certificate_policy__x509_certificate_properties
    list;
}
[@@deriving yojson_of]
(** azurerm_key_vault_certificate__certificate_policy *)

type azurerm_key_vault_certificate__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_certificate__timeouts *)

type azurerm_key_vault_certificate__certificate_attribute = {
  created : string;  (** created *)
  enabled : bool;  (** enabled *)
  expires : string;  (** expires *)
  not_before : string;  (** not_before *)
  recovery_level : string;  (** recovery_level *)
  updated : string;  (** updated *)
}
[@@deriving yojson_of]

type azurerm_key_vault_certificate = {
  id : string option; [@option]  (** id *)
  key_vault_id : string;  (** key_vault_id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  certificate : azurerm_key_vault_certificate__certificate list;
  certificate_policy :
    azurerm_key_vault_certificate__certificate_policy list;
  timeouts : azurerm_key_vault_certificate__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_key_vault_certificate *)

let azurerm_key_vault_certificate ?id ?tags ?timeouts ~key_vault_id
    ~name ~certificate ~certificate_policy __resource_id =
  let __resource_type = "azurerm_key_vault_certificate" in
  let __resource =
    {
      id;
      key_vault_id;
      name;
      tags;
      certificate;
      certificate_policy;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_key_vault_certificate __resource);
  ()
