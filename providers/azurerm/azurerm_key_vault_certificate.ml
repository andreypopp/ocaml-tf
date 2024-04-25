(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type certificate = {
  contents : string prop;
  password : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : certificate) -> ()

let yojson_of_certificate =
  (function
   | { contents = v_contents; password = v_password } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_contents in
         ("contents", arg) :: bnds
       in
       `Assoc bnds
    : certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificate

[@@@deriving.end]

type certificate_policy__issuer_parameters = { name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : certificate_policy__issuer_parameters) -> ()

let yojson_of_certificate_policy__issuer_parameters =
  (function
   | { name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : certificate_policy__issuer_parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificate_policy__issuer_parameters

[@@@deriving.end]

type certificate_policy__key_properties = {
  curve : string prop option; [@option]
  exportable : bool prop;
  key_size : float prop option; [@option]
  key_type : string prop;
  reuse_key : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : certificate_policy__key_properties) -> ()

let yojson_of_certificate_policy__key_properties =
  (function
   | {
       curve = v_curve;
       exportable = v_exportable;
       key_size = v_key_size;
       key_type = v_key_type;
       reuse_key = v_reuse_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_reuse_key in
         ("reuse_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_type in
         ("key_type", arg) :: bnds
       in
       let bnds =
         match v_key_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "key_size", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_exportable in
         ("exportable", arg) :: bnds
       in
       let bnds =
         match v_curve with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "curve", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : certificate_policy__key_properties ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificate_policy__key_properties

[@@@deriving.end]

type certificate_policy__lifetime_action__action = {
  action_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : certificate_policy__lifetime_action__action) -> ()

let yojson_of_certificate_policy__lifetime_action__action =
  (function
   | { action_type = v_action_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action_type in
         ("action_type", arg) :: bnds
       in
       `Assoc bnds
    : certificate_policy__lifetime_action__action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificate_policy__lifetime_action__action

[@@@deriving.end]

type certificate_policy__lifetime_action__trigger = {
  days_before_expiry : float prop option; [@option]
  lifetime_percentage : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : certificate_policy__lifetime_action__trigger) -> ()

let yojson_of_certificate_policy__lifetime_action__trigger =
  (function
   | {
       days_before_expiry = v_days_before_expiry;
       lifetime_percentage = v_lifetime_percentage;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_lifetime_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "lifetime_percentage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_days_before_expiry with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "days_before_expiry", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : certificate_policy__lifetime_action__trigger ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificate_policy__lifetime_action__trigger

[@@@deriving.end]

type certificate_policy__lifetime_action = {
  action : certificate_policy__lifetime_action__action list;
  trigger : certificate_policy__lifetime_action__trigger list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : certificate_policy__lifetime_action) -> ()

let yojson_of_certificate_policy__lifetime_action =
  (function
   | { action = v_action; trigger = v_trigger } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_certificate_policy__lifetime_action__trigger
             v_trigger
         in
         ("trigger", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_certificate_policy__lifetime_action__action
             v_action
         in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : certificate_policy__lifetime_action ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificate_policy__lifetime_action

[@@@deriving.end]

type certificate_policy__secret_properties = {
  content_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : certificate_policy__secret_properties) -> ()

let yojson_of_certificate_policy__secret_properties =
  (function
   | { content_type = v_content_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content_type in
         ("content_type", arg) :: bnds
       in
       `Assoc bnds
    : certificate_policy__secret_properties ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificate_policy__secret_properties

[@@@deriving.end]

type certificate_policy__x509_certificate_properties__subject_alternative_names = {
  dns_names : string prop list option; [@option]
  emails : string prop list option; [@option]
  upns : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       certificate_policy__x509_certificate_properties__subject_alternative_names) ->
  ()

let yojson_of_certificate_policy__x509_certificate_properties__subject_alternative_names
    =
  (function
   | { dns_names = v_dns_names; emails = v_emails; upns = v_upns } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_upns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "upns", arg in
             bnd :: bnds
       in
       let bnds =
         match v_emails with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "emails", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dns_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "dns_names", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : certificate_policy__x509_certificate_properties__subject_alternative_names ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_certificate_policy__x509_certificate_properties__subject_alternative_names

[@@@deriving.end]

type certificate_policy__x509_certificate_properties = {
  extended_key_usage : string prop list option; [@option]
  key_usage : string prop list;
  subject : string prop;
  validity_in_months : float prop;
  subject_alternative_names :
    certificate_policy__x509_certificate_properties__subject_alternative_names
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : certificate_policy__x509_certificate_properties) -> ()

let yojson_of_certificate_policy__x509_certificate_properties =
  (function
   | {
       extended_key_usage = v_extended_key_usage;
       key_usage = v_key_usage;
       subject = v_subject;
       validity_in_months = v_validity_in_months;
       subject_alternative_names = v_subject_alternative_names;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_certificate_policy__x509_certificate_properties__subject_alternative_names
             v_subject_alternative_names
         in
         ("subject_alternative_names", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_validity_in_months
         in
         ("validity_in_months", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subject in
         ("subject", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_key_usage
         in
         ("key_usage", arg) :: bnds
       in
       let bnds =
         match v_extended_key_usage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "extended_key_usage", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : certificate_policy__x509_certificate_properties ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificate_policy__x509_certificate_properties

[@@@deriving.end]

type certificate_policy = {
  issuer_parameters : certificate_policy__issuer_parameters list;
  key_properties : certificate_policy__key_properties list;
  lifetime_action : certificate_policy__lifetime_action list;
  secret_properties : certificate_policy__secret_properties list;
  x509_certificate_properties :
    certificate_policy__x509_certificate_properties list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : certificate_policy) -> ()

let yojson_of_certificate_policy =
  (function
   | {
       issuer_parameters = v_issuer_parameters;
       key_properties = v_key_properties;
       lifetime_action = v_lifetime_action;
       secret_properties = v_secret_properties;
       x509_certificate_properties = v_x509_certificate_properties;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_certificate_policy__x509_certificate_properties
             v_x509_certificate_properties
         in
         ("x509_certificate_properties", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_certificate_policy__secret_properties
             v_secret_properties
         in
         ("secret_properties", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_certificate_policy__lifetime_action
             v_lifetime_action
         in
         ("lifetime_action", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_certificate_policy__key_properties
             v_key_properties
         in
         ("key_properties", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_certificate_policy__issuer_parameters
             v_issuer_parameters
         in
         ("issuer_parameters", arg) :: bnds
       in
       `Assoc bnds
    : certificate_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificate_policy

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
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
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type certificate_attribute = {
  created : string prop;
  enabled : bool prop;
  expires : string prop;
  not_before : string prop;
  recovery_level : string prop;
  updated : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : certificate_attribute) -> ()

let yojson_of_certificate_attribute =
  (function
   | {
       created = v_created;
       enabled = v_enabled;
       expires = v_expires;
       not_before = v_not_before;
       recovery_level = v_recovery_level;
       updated = v_updated;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_updated in
         ("updated", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_recovery_level
         in
         ("recovery_level", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_not_before in
         ("not_before", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_expires in
         ("expires", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_created in
         ("created", arg) :: bnds
       in
       `Assoc bnds
    : certificate_attribute -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificate_attribute

[@@@deriving.end]

type azurerm_key_vault_certificate = {
  id : string prop option; [@option]
  key_vault_id : string prop;
  name : string prop;
  tags : (string * string prop) list option; [@option]
  certificate : certificate list;
  certificate_policy : certificate_policy list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_key_vault_certificate) -> ()

let yojson_of_azurerm_key_vault_certificate =
  (function
   | {
       id = v_id;
       key_vault_id = v_key_vault_id;
       name = v_name;
       tags = v_tags;
       certificate = v_certificate;
       certificate_policy = v_certificate_policy;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_certificate_policy
             v_certificate_policy
         in
         ("certificate_policy", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_certificate v_certificate
         in
         ("certificate", arg) :: bnds
       in
       let bnds =
         match v_tags with
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
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_vault_id in
         ("key_vault_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_key_vault_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_key_vault_certificate

[@@@deriving.end]

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
    ?extended_key_usage ?(subject_alternative_names = []) ~key_usage
    ~subject ~validity_in_months () :
    certificate_policy__x509_certificate_properties =
  {
    extended_key_usage;
    key_usage;
    subject;
    validity_in_months;
    subject_alternative_names;
  }

let certificate_policy ?(lifetime_action = [])
    ?(x509_certificate_properties = []) ~issuer_parameters
    ~key_properties ~secret_properties () : certificate_policy =
  {
    issuer_parameters;
    key_properties;
    lifetime_action;
    secret_properties;
    x509_certificate_properties;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_key_vault_certificate ?id ?tags ?(certificate = [])
    ?(certificate_policy = []) ?timeouts ~key_vault_id ~name () :
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

let make ?id ?tags ?(certificate = []) ?(certificate_policy = [])
    ?timeouts ~key_vault_id ~name __id =
  let __type = "azurerm_key_vault_certificate" in
  let __attrs =
    ({
       certificate_attribute =
         Prop.computed __type __id "certificate_attribute";
       certificate_data =
         Prop.computed __type __id "certificate_data";
       certificate_data_base64 =
         Prop.computed __type __id "certificate_data_base64";
       id = Prop.computed __type __id "id";
       key_vault_id = Prop.computed __type __id "key_vault_id";
       name = Prop.computed __type __id "name";
       resource_manager_id =
         Prop.computed __type __id "resource_manager_id";
       resource_manager_versionless_id =
         Prop.computed __type __id "resource_manager_versionless_id";
       secret_id = Prop.computed __type __id "secret_id";
       tags = Prop.computed __type __id "tags";
       thumbprint = Prop.computed __type __id "thumbprint";
       version = Prop.computed __type __id "version";
       versionless_id = Prop.computed __type __id "versionless_id";
       versionless_secret_id =
         Prop.computed __type __id "versionless_secret_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_key_vault_certificate
        (azurerm_key_vault_certificate ?id ?tags ~certificate
           ~certificate_policy ?timeouts ~key_vault_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?(certificate = [])
    ?(certificate_policy = []) ?timeouts ~key_vault_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~certificate ~certificate_policy ?timeouts
      ~key_vault_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
