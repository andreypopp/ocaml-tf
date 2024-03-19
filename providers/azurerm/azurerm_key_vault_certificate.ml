(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type certificate = {
  contents : string prop;  (** contents *)
  password : string prop option; [@option]  (** password *)
}
[@@deriving yojson_of]
(** certificate *)

type certificate_policy__issuer_parameters = {
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** certificate_policy__issuer_parameters *)

type certificate_policy__key_properties = {
  curve : string prop option; [@option]  (** curve *)
  exportable : bool prop;  (** exportable *)
  key_size : float prop option; [@option]  (** key_size *)
  key_type : string prop;  (** key_type *)
  reuse_key : bool prop;  (** reuse_key *)
}
[@@deriving yojson_of]
(** certificate_policy__key_properties *)

type certificate_policy__lifetime_action__action = {
  action_type : string prop;  (** action_type *)
}
[@@deriving yojson_of]
(** certificate_policy__lifetime_action__action *)

type certificate_policy__lifetime_action__trigger = {
  days_before_expiry : float prop option; [@option]
      (** days_before_expiry *)
  lifetime_percentage : float prop option; [@option]
      (** lifetime_percentage *)
}
[@@deriving yojson_of]
(** certificate_policy__lifetime_action__trigger *)

type certificate_policy__lifetime_action = {
  action : certificate_policy__lifetime_action__action list;
  trigger : certificate_policy__lifetime_action__trigger list;
}
[@@deriving yojson_of]
(** certificate_policy__lifetime_action *)

type certificate_policy__secret_properties = {
  content_type : string prop;  (** content_type *)
}
[@@deriving yojson_of]
(** certificate_policy__secret_properties *)

type certificate_policy__x509_certificate_properties__subject_alternative_names = {
  dns_names : string prop list option; [@option]  (** dns_names *)
  emails : string prop list option; [@option]  (** emails *)
  upns : string prop list option; [@option]  (** upns *)
}
[@@deriving yojson_of]
(** certificate_policy__x509_certificate_properties__subject_alternative_names *)

type certificate_policy__x509_certificate_properties = {
  extended_key_usage : string prop list option; [@option]
      (** extended_key_usage *)
  key_usage : string prop list;  (** key_usage *)
  subject : string prop;  (** subject *)
  validity_in_months : float prop;  (** validity_in_months *)
  subject_alternative_names :
    certificate_policy__x509_certificate_properties__subject_alternative_names
    list;
}
[@@deriving yojson_of]
(** certificate_policy__x509_certificate_properties *)

type certificate_policy = {
  issuer_parameters : certificate_policy__issuer_parameters list;
  key_properties : certificate_policy__key_properties list;
  lifetime_action : certificate_policy__lifetime_action list;
  secret_properties : certificate_policy__secret_properties list;
  x509_certificate_properties :
    certificate_policy__x509_certificate_properties list;
}
[@@deriving yojson_of]
(** certificate_policy *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type certificate_attribute = {
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
  certificate : certificate list;
  certificate_policy : certificate_policy list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_key_vault_certificate *)

let certificate ?password ~contents () : certificate =
  { contents; password }

let certificate_policy__issuer_parameters ~name () :
    certificate_policy__issuer_parameters =
  { name }

let certificate_policy__key_properties ?curve ?key_size ~exportable
    ~key_type ~reuse_key () : certificate_policy__key_properties =
  { curve; exportable; key_size; key_type; reuse_key }

let certificate_policy__lifetime_action__action ~action_type () :
    certificate_policy__lifetime_action__action =
  { action_type }

let certificate_policy__lifetime_action__trigger ?days_before_expiry
    ?lifetime_percentage () :
    certificate_policy__lifetime_action__trigger =
  { days_before_expiry; lifetime_percentage }

let certificate_policy__lifetime_action ~action ~trigger () :
    certificate_policy__lifetime_action =
  { action; trigger }

let certificate_policy__secret_properties ~content_type () :
    certificate_policy__secret_properties =
  { content_type }

let certificate_policy__x509_certificate_properties__subject_alternative_names
    ?dns_names ?emails ?upns () :
    certificate_policy__x509_certificate_properties__subject_alternative_names
    =
  { dns_names; emails; upns }

let certificate_policy__x509_certificate_properties
    ?extended_key_usage ~key_usage ~subject ~validity_in_months
    ~subject_alternative_names () :
    certificate_policy__x509_certificate_properties =
  {
    extended_key_usage;
    key_usage;
    subject;
    validity_in_months;
    subject_alternative_names;
  }

let certificate_policy ~issuer_parameters ~key_properties
    ~lifetime_action ~secret_properties ~x509_certificate_properties
    () : certificate_policy =
  {
    issuer_parameters;
    key_properties;
    lifetime_action;
    secret_properties;
    x509_certificate_properties;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_key_vault_certificate ?id ?tags ?timeouts ~key_vault_id
    ~name ~certificate ~certificate_policy () :
    azurerm_key_vault_certificate =
  {
    id;
    key_vault_id;
    name;
    tags;
    certificate;
    certificate_policy;
    timeouts;
  }

type t = {
  certificate_attribute : certificate_attribute list prop;
  certificate_data : string prop;
  certificate_data_base64 : string prop;
  id : string prop;
  key_vault_id : string prop;
  name : string prop;
  resource_manager_id : string prop;
  resource_manager_versionless_id : string prop;
  secret_id : string prop;
  tags : (string * string) list prop;
  thumbprint : string prop;
  version : string prop;
  versionless_id : string prop;
  versionless_secret_id : string prop;
}

let register ?tf_module ?id ?tags ?timeouts ~key_vault_id ~name
    ~certificate ~certificate_policy __resource_id =
  let __resource_type = "azurerm_key_vault_certificate" in
  let __resource =
    azurerm_key_vault_certificate ?id ?tags ?timeouts ~key_vault_id
      ~name ~certificate ~certificate_policy ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_key_vault_certificate __resource);
  let __resource_attributes =
    ({
       certificate_attribute =
         Prop.computed __resource_type __resource_id
           "certificate_attribute";
       certificate_data =
         Prop.computed __resource_type __resource_id
           "certificate_data";
       certificate_data_base64 =
         Prop.computed __resource_type __resource_id
           "certificate_data_base64";
       id = Prop.computed __resource_type __resource_id "id";
       key_vault_id =
         Prop.computed __resource_type __resource_id "key_vault_id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_manager_id =
         Prop.computed __resource_type __resource_id
           "resource_manager_id";
       resource_manager_versionless_id =
         Prop.computed __resource_type __resource_id
           "resource_manager_versionless_id";
       secret_id =
         Prop.computed __resource_type __resource_id "secret_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       thumbprint =
         Prop.computed __resource_type __resource_id "thumbprint";
       version =
         Prop.computed __resource_type __resource_id "version";
       versionless_id =
         Prop.computed __resource_type __resource_id "versionless_id";
       versionless_secret_id =
         Prop.computed __resource_type __resource_id
           "versionless_secret_id";
     }
      : t)
  in
  __resource_attributes
