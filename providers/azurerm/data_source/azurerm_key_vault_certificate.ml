(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type certificate_policy__x509_certificate_properties__subject_alternative_names = {
  dns_names : string prop list;
  emails : string prop list;
  upns : string prop list;
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
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_upns
         in
         ("upns", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_emails
         in
         ("emails", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_dns_names
         in
         ("dns_names", arg) :: bnds
       in
       `Assoc bnds
    : certificate_policy__x509_certificate_properties__subject_alternative_names ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_certificate_policy__x509_certificate_properties__subject_alternative_names

[@@@deriving.end]

type certificate_policy__x509_certificate_properties = {
  extended_key_usage : string prop list;
  key_usage : string prop list;
  subject : string prop;
  subject_alternative_names :
    certificate_policy__x509_certificate_properties__subject_alternative_names
    list;
  validity_in_months : float prop;
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
       subject_alternative_names = v_subject_alternative_names;
       validity_in_months = v_validity_in_months;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_validity_in_months
         in
         ("validity_in_months", arg) :: bnds
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_extended_key_usage
         in
         ("extended_key_usage", arg) :: bnds
       in
       `Assoc bnds
    : certificate_policy__x509_certificate_properties ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificate_policy__x509_certificate_properties

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

type certificate_policy__lifetime_action__trigger = {
  days_before_expiry : float prop;
  lifetime_percentage : float prop;
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
         let arg =
           yojson_of_prop yojson_of_float v_lifetime_percentage
         in
         ("lifetime_percentage", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_days_before_expiry
         in
         ("days_before_expiry", arg) :: bnds
       in
       `Assoc bnds
    : certificate_policy__lifetime_action__trigger ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificate_policy__lifetime_action__trigger

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

type certificate_policy__key_properties = {
  curve : string prop;
  exportable : bool prop;
  key_size : float prop;
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
         let arg = yojson_of_prop yojson_of_float v_key_size in
         ("key_size", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_exportable in
         ("exportable", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_curve in
         ("curve", arg) :: bnds
       in
       `Assoc bnds
    : certificate_policy__key_properties ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificate_policy__key_properties

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

type azurerm_key_vault_certificate = {
  id : string prop option; [@option]
  key_vault_id : string prop;
  name : string prop;
  version : string prop option; [@option]
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
       version = v_version;
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
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
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

let timeouts ?read () : timeouts = { read }

let azurerm_key_vault_certificate ?id ?version ?timeouts
    ~key_vault_id ~name () : azurerm_key_vault_certificate =
  { id; key_vault_id; name; version; timeouts }

type t = {
  certificate_data : string prop;
  certificate_data_base64 : string prop;
  certificate_policy : certificate_policy list prop;
  expires : string prop;
  id : string prop;
  key_vault_id : string prop;
  name : string prop;
  not_before : string prop;
  resource_manager_id : string prop;
  resource_manager_versionless_id : string prop;
  secret_id : string prop;
  tags : (string * string) list prop;
  thumbprint : string prop;
  version : string prop;
  versionless_id : string prop;
  versionless_secret_id : string prop;
}

let make ?id ?version ?timeouts ~key_vault_id ~name __id =
  let __type = "azurerm_key_vault_certificate" in
  let __attrs =
    ({
       certificate_data =
         Prop.computed __type __id "certificate_data";
       certificate_data_base64 =
         Prop.computed __type __id "certificate_data_base64";
       certificate_policy =
         Prop.computed __type __id "certificate_policy";
       expires = Prop.computed __type __id "expires";
       id = Prop.computed __type __id "id";
       key_vault_id = Prop.computed __type __id "key_vault_id";
       name = Prop.computed __type __id "name";
       not_before = Prop.computed __type __id "not_before";
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
        (azurerm_key_vault_certificate ?id ?version ?timeouts
           ~key_vault_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?version ?timeouts ~key_vault_id ~name
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?version ?timeouts ~key_vault_id ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
