(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_policy_mfa_default = {
  duo : (string * string prop) list option; [@option]
  external_idp : (string * string prop) list option; [@option]
  fido_u2f : (string * string prop) list option; [@option]
  fido_webauthn : (string * string prop) list option; [@option]
  google_otp : (string * string prop) list option; [@option]
  hotp : (string * string prop) list option; [@option]
  id : string prop option; [@option]
  is_oie : bool prop option; [@option]
  okta_call : (string * string prop) list option; [@option]
  okta_email : (string * string prop) list option; [@option]
  okta_otp : (string * string prop) list option; [@option]
  okta_password : (string * string prop) list option; [@option]
  okta_push : (string * string prop) list option; [@option]
  okta_question : (string * string prop) list option; [@option]
  okta_sms : (string * string prop) list option; [@option]
  okta_verify : (string * string prop) list option; [@option]
  onprem_mfa : (string * string prop) list option; [@option]
  phone_number : (string * string prop) list option; [@option]
  rsa_token : (string * string prop) list option; [@option]
  security_question : (string * string prop) list option; [@option]
  symantec_vip : (string * string prop) list option; [@option]
  webauthn : (string * string prop) list option; [@option]
  yubikey_token : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_policy_mfa_default) -> ()

let yojson_of_okta_policy_mfa_default =
  (function
   | {
       duo = v_duo;
       external_idp = v_external_idp;
       fido_u2f = v_fido_u2f;
       fido_webauthn = v_fido_webauthn;
       google_otp = v_google_otp;
       hotp = v_hotp;
       id = v_id;
       is_oie = v_is_oie;
       okta_call = v_okta_call;
       okta_email = v_okta_email;
       okta_otp = v_okta_otp;
       okta_password = v_okta_password;
       okta_push = v_okta_push;
       okta_question = v_okta_question;
       okta_sms = v_okta_sms;
       okta_verify = v_okta_verify;
       onprem_mfa = v_onprem_mfa;
       phone_number = v_phone_number;
       rsa_token = v_rsa_token;
       security_question = v_security_question;
       symantec_vip = v_symantec_vip;
       webauthn = v_webauthn;
       yubikey_token = v_yubikey_token;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_yubikey_token with
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
             let bnd = "yubikey_token", arg in
             bnd :: bnds
       in
       let bnds =
         match v_webauthn with
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
             let bnd = "webauthn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_symantec_vip with
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
             let bnd = "symantec_vip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_question with
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
             let bnd = "security_question", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rsa_token with
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
             let bnd = "rsa_token", arg in
             bnd :: bnds
       in
       let bnds =
         match v_phone_number with
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
             let bnd = "phone_number", arg in
             bnd :: bnds
       in
       let bnds =
         match v_onprem_mfa with
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
             let bnd = "onprem_mfa", arg in
             bnd :: bnds
       in
       let bnds =
         match v_okta_verify with
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
             let bnd = "okta_verify", arg in
             bnd :: bnds
       in
       let bnds =
         match v_okta_sms with
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
             let bnd = "okta_sms", arg in
             bnd :: bnds
       in
       let bnds =
         match v_okta_question with
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
             let bnd = "okta_question", arg in
             bnd :: bnds
       in
       let bnds =
         match v_okta_push with
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
             let bnd = "okta_push", arg in
             bnd :: bnds
       in
       let bnds =
         match v_okta_password with
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
             let bnd = "okta_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_okta_otp with
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
             let bnd = "okta_otp", arg in
             bnd :: bnds
       in
       let bnds =
         match v_okta_email with
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
             let bnd = "okta_email", arg in
             bnd :: bnds
       in
       let bnds =
         match v_okta_call with
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
             let bnd = "okta_call", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_oie with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_oie", arg in
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
         match v_hotp with
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
             let bnd = "hotp", arg in
             bnd :: bnds
       in
       let bnds =
         match v_google_otp with
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
             let bnd = "google_otp", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fido_webauthn with
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
             let bnd = "fido_webauthn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fido_u2f with
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
             let bnd = "fido_u2f", arg in
             bnd :: bnds
       in
       let bnds =
         match v_external_idp with
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
             let bnd = "external_idp", arg in
             bnd :: bnds
       in
       let bnds =
         match v_duo with
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
             let bnd = "duo", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_policy_mfa_default -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_policy_mfa_default

[@@@deriving.end]

let okta_policy_mfa_default ?duo ?external_idp ?fido_u2f
    ?fido_webauthn ?google_otp ?hotp ?id ?is_oie ?okta_call
    ?okta_email ?okta_otp ?okta_password ?okta_push ?okta_question
    ?okta_sms ?okta_verify ?onprem_mfa ?phone_number ?rsa_token
    ?security_question ?symantec_vip ?webauthn ?yubikey_token () :
    okta_policy_mfa_default =
  {
    duo;
    external_idp;
    fido_u2f;
    fido_webauthn;
    google_otp;
    hotp;
    id;
    is_oie;
    okta_call;
    okta_email;
    okta_otp;
    okta_password;
    okta_push;
    okta_question;
    okta_sms;
    okta_verify;
    onprem_mfa;
    phone_number;
    rsa_token;
    security_question;
    symantec_vip;
    webauthn;
    yubikey_token;
  }

type t = {
  tf_name : string;
  default_included_group_id : string prop;
  description : string prop;
  duo : (string * string) list prop;
  external_idp : (string * string) list prop;
  fido_u2f : (string * string) list prop;
  fido_webauthn : (string * string) list prop;
  google_otp : (string * string) list prop;
  hotp : (string * string) list prop;
  id : string prop;
  is_oie : bool prop;
  name : string prop;
  okta_call : (string * string) list prop;
  okta_email : (string * string) list prop;
  okta_otp : (string * string) list prop;
  okta_password : (string * string) list prop;
  okta_push : (string * string) list prop;
  okta_question : (string * string) list prop;
  okta_sms : (string * string) list prop;
  okta_verify : (string * string) list prop;
  onprem_mfa : (string * string) list prop;
  phone_number : (string * string) list prop;
  priority : float prop;
  rsa_token : (string * string) list prop;
  security_question : (string * string) list prop;
  status : string prop;
  symantec_vip : (string * string) list prop;
  webauthn : (string * string) list prop;
  yubikey_token : (string * string) list prop;
}

let make ?duo ?external_idp ?fido_u2f ?fido_webauthn ?google_otp
    ?hotp ?id ?is_oie ?okta_call ?okta_email ?okta_otp ?okta_password
    ?okta_push ?okta_question ?okta_sms ?okta_verify ?onprem_mfa
    ?phone_number ?rsa_token ?security_question ?symantec_vip
    ?webauthn ?yubikey_token __id =
  let __type = "okta_policy_mfa_default" in
  let __attrs =
    ({
       tf_name = __id;
       default_included_group_id =
         Prop.computed __type __id "default_included_group_id";
       description = Prop.computed __type __id "description";
       duo = Prop.computed __type __id "duo";
       external_idp = Prop.computed __type __id "external_idp";
       fido_u2f = Prop.computed __type __id "fido_u2f";
       fido_webauthn = Prop.computed __type __id "fido_webauthn";
       google_otp = Prop.computed __type __id "google_otp";
       hotp = Prop.computed __type __id "hotp";
       id = Prop.computed __type __id "id";
       is_oie = Prop.computed __type __id "is_oie";
       name = Prop.computed __type __id "name";
       okta_call = Prop.computed __type __id "okta_call";
       okta_email = Prop.computed __type __id "okta_email";
       okta_otp = Prop.computed __type __id "okta_otp";
       okta_password = Prop.computed __type __id "okta_password";
       okta_push = Prop.computed __type __id "okta_push";
       okta_question = Prop.computed __type __id "okta_question";
       okta_sms = Prop.computed __type __id "okta_sms";
       okta_verify = Prop.computed __type __id "okta_verify";
       onprem_mfa = Prop.computed __type __id "onprem_mfa";
       phone_number = Prop.computed __type __id "phone_number";
       priority = Prop.computed __type __id "priority";
       rsa_token = Prop.computed __type __id "rsa_token";
       security_question =
         Prop.computed __type __id "security_question";
       status = Prop.computed __type __id "status";
       symantec_vip = Prop.computed __type __id "symantec_vip";
       webauthn = Prop.computed __type __id "webauthn";
       yubikey_token = Prop.computed __type __id "yubikey_token";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_policy_mfa_default
        (okta_policy_mfa_default ?duo ?external_idp ?fido_u2f
           ?fido_webauthn ?google_otp ?hotp ?id ?is_oie ?okta_call
           ?okta_email ?okta_otp ?okta_password ?okta_push
           ?okta_question ?okta_sms ?okta_verify ?onprem_mfa
           ?phone_number ?rsa_token ?security_question ?symantec_vip
           ?webauthn ?yubikey_token ());
    attrs = __attrs;
  }

let register ?tf_module ?duo ?external_idp ?fido_u2f ?fido_webauthn
    ?google_otp ?hotp ?id ?is_oie ?okta_call ?okta_email ?okta_otp
    ?okta_password ?okta_push ?okta_question ?okta_sms ?okta_verify
    ?onprem_mfa ?phone_number ?rsa_token ?security_question
    ?symantec_vip ?webauthn ?yubikey_token __id =
  let (r : _ Tf_core.resource) =
    make ?duo ?external_idp ?fido_u2f ?fido_webauthn ?google_otp
      ?hotp ?id ?is_oie ?okta_call ?okta_email ?okta_otp
      ?okta_password ?okta_push ?okta_question ?okta_sms ?okta_verify
      ?onprem_mfa ?phone_number ?rsa_token ?security_question
      ?symantec_vip ?webauthn ?yubikey_token __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
