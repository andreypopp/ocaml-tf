(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_key_vault_certificate__certificate = {
  contents : string prop;  (** contents *)
  password : string prop option; [@option]  (** password *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_certificate__certificate *)

type azurerm_key_vault_certificate__certificate_policy__issuer_parameters = {
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_certificate__certificate_policy__issuer_parameters *)

type azurerm_key_vault_certificate__certificate_policy__key_properties = {
  curve : string prop option; [@option]  (** curve *)
  exportable : bool prop;  (** exportable *)
  key_size : float prop option; [@option]  (** key_size *)
  key_type : string prop;  (** key_type *)
  reuse_key : bool prop;  (** reuse_key *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_certificate__certificate_policy__key_properties *)

type azurerm_key_vault_certificate__certificate_policy__lifetime_action__action = {
  action_type : string prop;  (** action_type *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_certificate__certificate_policy__lifetime_action__action *)

type azurerm_key_vault_certificate__certificate_policy__lifetime_action__trigger = {
  days_before_expiry : float prop option; [@option]
      (** days_before_expiry *)
  lifetime_percentage : float prop option; [@option]
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
  content_type : string prop;  (** content_type *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_certificate__certificate_policy__secret_properties *)

type azurerm_key_vault_certificate__certificate_policy__x509_certificate_properties__subject_alternative_names = {
  dns_names : string prop list option; [@option]  (** dns_names *)
  emails : string prop list option; [@option]  (** emails *)
  upns : string prop list option; [@option]  (** upns *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_certificate__certificate_policy__x509_certificate_properties__subject_alternative_names *)

type azurerm_key_vault_certificate__certificate_policy__x509_certificate_properties = {
  extended_key_usage : string prop list option; [@option]
      (** extended_key_usage *)
  key_usage : string prop list;  (** key_usage *)
  subject : string prop;  (** subject *)
  validity_in_months : float prop;  (** validity_in_months *)
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
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_certificate__timeouts *)

type azurerm_key_vault_certificate__certificate_attribute = {
  created : string prop;  (** created *)
  enabled : bool prop;  (** enabled *)
  expires : string prop;  (** expires *)
  not_before : string prop;  (** not_before *)
  recovery_level : string prop;  (** recovery_level *)
  updated : string prop;  (** updated *)
}
[@@deriving yojson_of]

type azurerm_key_vault_certificate = {
  id : string prop option; [@option]  (** id *)
  key_vault_id : string prop;  (** key_vault_id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
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
