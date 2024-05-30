(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_security_notification_emails = {
  id : string prop option; [@option]
  report_suspicious_activity_enabled : bool prop option; [@option]
  send_email_for_factor_enrollment_enabled : bool prop option;
      [@option]
  send_email_for_factor_reset_enabled : bool prop option; [@option]
  send_email_for_new_device_enabled : bool prop option; [@option]
  send_email_for_password_changed_enabled : bool prop option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_security_notification_emails) -> ()

let yojson_of_okta_security_notification_emails =
  (function
   | {
       id = v_id;
       report_suspicious_activity_enabled =
         v_report_suspicious_activity_enabled;
       send_email_for_factor_enrollment_enabled =
         v_send_email_for_factor_enrollment_enabled;
       send_email_for_factor_reset_enabled =
         v_send_email_for_factor_reset_enabled;
       send_email_for_new_device_enabled =
         v_send_email_for_new_device_enabled;
       send_email_for_password_changed_enabled =
         v_send_email_for_password_changed_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_send_email_for_password_changed_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "send_email_for_password_changed_enabled", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_send_email_for_new_device_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "send_email_for_new_device_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_send_email_for_factor_reset_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "send_email_for_factor_reset_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_send_email_for_factor_enrollment_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "send_email_for_factor_enrollment_enabled", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_report_suspicious_activity_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "report_suspicious_activity_enabled", arg in
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
       `Assoc bnds
    : okta_security_notification_emails ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_security_notification_emails

[@@@deriving.end]

let okta_security_notification_emails ?id
    ?report_suspicious_activity_enabled
    ?send_email_for_factor_enrollment_enabled
    ?send_email_for_factor_reset_enabled
    ?send_email_for_new_device_enabled
    ?send_email_for_password_changed_enabled () :
    okta_security_notification_emails =
  {
    id;
    report_suspicious_activity_enabled;
    send_email_for_factor_enrollment_enabled;
    send_email_for_factor_reset_enabled;
    send_email_for_new_device_enabled;
    send_email_for_password_changed_enabled;
  }

type t = {
  tf_name : string;
  id : string prop;
  report_suspicious_activity_enabled : bool prop;
  send_email_for_factor_enrollment_enabled : bool prop;
  send_email_for_factor_reset_enabled : bool prop;
  send_email_for_new_device_enabled : bool prop;
  send_email_for_password_changed_enabled : bool prop;
}

let make ?id ?report_suspicious_activity_enabled
    ?send_email_for_factor_enrollment_enabled
    ?send_email_for_factor_reset_enabled
    ?send_email_for_new_device_enabled
    ?send_email_for_password_changed_enabled __id =
  let __type = "okta_security_notification_emails" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       report_suspicious_activity_enabled =
         Prop.computed __type __id
           "report_suspicious_activity_enabled";
       send_email_for_factor_enrollment_enabled =
         Prop.computed __type __id
           "send_email_for_factor_enrollment_enabled";
       send_email_for_factor_reset_enabled =
         Prop.computed __type __id
           "send_email_for_factor_reset_enabled";
       send_email_for_new_device_enabled =
         Prop.computed __type __id
           "send_email_for_new_device_enabled";
       send_email_for_password_changed_enabled =
         Prop.computed __type __id
           "send_email_for_password_changed_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_security_notification_emails
        (okta_security_notification_emails ?id
           ?report_suspicious_activity_enabled
           ?send_email_for_factor_enrollment_enabled
           ?send_email_for_factor_reset_enabled
           ?send_email_for_new_device_enabled
           ?send_email_for_password_changed_enabled ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?report_suspicious_activity_enabled
    ?send_email_for_factor_enrollment_enabled
    ?send_email_for_factor_reset_enabled
    ?send_email_for_new_device_enabled
    ?send_email_for_password_changed_enabled __id =
  let (r : _ Tf_core.resource) =
    make ?id ?report_suspicious_activity_enabled
      ?send_email_for_factor_enrollment_enabled
      ?send_email_for_factor_reset_enabled
      ?send_email_for_new_device_enabled
      ?send_email_for_password_changed_enabled __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
