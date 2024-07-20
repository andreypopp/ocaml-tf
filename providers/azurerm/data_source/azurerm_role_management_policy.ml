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

type activation_rules__approval_stage__primary_approver = {
  object_id : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : activation_rules__approval_stage__primary_approver) -> ()

let yojson_of_activation_rules__approval_stage__primary_approver =
  (function
   | { object_id = v_object_id; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_id in
         ("object_id", arg) :: bnds
       in
       `Assoc bnds
    : activation_rules__approval_stage__primary_approver ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_activation_rules__approval_stage__primary_approver

[@@@deriving.end]

type activation_rules__approval_stage = {
  primary_approver :
    activation_rules__approval_stage__primary_approver list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : activation_rules__approval_stage) -> ()

let yojson_of_activation_rules__approval_stage =
  (function
   | { primary_approver = v_primary_approver } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_primary_approver then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_activation_rules__approval_stage__primary_approver)
               v_primary_approver
           in
           let bnd = "primary_approver", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : activation_rules__approval_stage ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_activation_rules__approval_stage

[@@@deriving.end]

type activation_rules = {
  approval_stage : activation_rules__approval_stage list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  maximum_duration : string prop;
  require_approval : bool prop;
  require_justification : bool prop;
  require_multifactor_authentication : bool prop;
  require_ticket_info : bool prop;
  required_conditional_access_authentication_context : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : activation_rules) -> ()

let yojson_of_activation_rules =
  (function
   | {
       approval_stage = v_approval_stage;
       maximum_duration = v_maximum_duration;
       require_approval = v_require_approval;
       require_justification = v_require_justification;
       require_multifactor_authentication =
         v_require_multifactor_authentication;
       require_ticket_info = v_require_ticket_info;
       required_conditional_access_authentication_context =
         v_required_conditional_access_authentication_context;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_required_conditional_access_authentication_context
         in
         ("required_conditional_access_authentication_context", arg)
         :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_require_ticket_info
         in
         ("require_ticket_info", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_require_multifactor_authentication
         in
         ("require_multifactor_authentication", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_require_justification
         in
         ("require_justification", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_require_approval
         in
         ("require_approval", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_maximum_duration
         in
         ("maximum_duration", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_approval_stage then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_activation_rules__approval_stage)
               v_approval_stage
           in
           let bnd = "approval_stage", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : activation_rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_activation_rules

[@@@deriving.end]

type active_assignment_rules = {
  expiration_required : bool prop;
  expire_after : string prop;
  require_justification : bool prop;
  require_multifactor_authentication : bool prop;
  require_ticket_info : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : active_assignment_rules) -> ()

let yojson_of_active_assignment_rules =
  (function
   | {
       expiration_required = v_expiration_required;
       expire_after = v_expire_after;
       require_justification = v_require_justification;
       require_multifactor_authentication =
         v_require_multifactor_authentication;
       require_ticket_info = v_require_ticket_info;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_require_ticket_info
         in
         ("require_ticket_info", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_require_multifactor_authentication
         in
         ("require_multifactor_authentication", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_require_justification
         in
         ("require_justification", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_expire_after in
         ("expire_after", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_expiration_required
         in
         ("expiration_required", arg) :: bnds
       in
       `Assoc bnds
    : active_assignment_rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_active_assignment_rules

[@@@deriving.end]

type eligible_assignment_rules = {
  expiration_required : bool prop;
  expire_after : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : eligible_assignment_rules) -> ()

let yojson_of_eligible_assignment_rules =
  (function
   | {
       expiration_required = v_expiration_required;
       expire_after = v_expire_after;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_expire_after in
         ("expire_after", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_expiration_required
         in
         ("expiration_required", arg) :: bnds
       in
       `Assoc bnds
    : eligible_assignment_rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_eligible_assignment_rules

[@@@deriving.end]

type notification_rules__eligible_assignments__assignee_notifications = {
  additional_recipients : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  default_recipients : bool prop;
  notification_level : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       notification_rules__eligible_assignments__assignee_notifications) ->
  ()

let yojson_of_notification_rules__eligible_assignments__assignee_notifications
    =
  (function
   | {
       additional_recipients = v_additional_recipients;
       default_recipients = v_default_recipients;
       notification_level = v_notification_level;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_notification_level
         in
         ("notification_level", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_default_recipients
         in
         ("default_recipients", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_additional_recipients then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_additional_recipients
           in
           let bnd = "additional_recipients", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : notification_rules__eligible_assignments__assignee_notifications ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_notification_rules__eligible_assignments__assignee_notifications

[@@@deriving.end]

type notification_rules__eligible_assignments__approver_notifications = {
  additional_recipients : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  default_recipients : bool prop;
  notification_level : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       notification_rules__eligible_assignments__approver_notifications) ->
  ()

let yojson_of_notification_rules__eligible_assignments__approver_notifications
    =
  (function
   | {
       additional_recipients = v_additional_recipients;
       default_recipients = v_default_recipients;
       notification_level = v_notification_level;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_notification_level
         in
         ("notification_level", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_default_recipients
         in
         ("default_recipients", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_additional_recipients then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_additional_recipients
           in
           let bnd = "additional_recipients", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : notification_rules__eligible_assignments__approver_notifications ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_notification_rules__eligible_assignments__approver_notifications

[@@@deriving.end]

type notification_rules__eligible_assignments__admin_notifications = {
  additional_recipients : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  default_recipients : bool prop;
  notification_level : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       notification_rules__eligible_assignments__admin_notifications) ->
  ()

let yojson_of_notification_rules__eligible_assignments__admin_notifications
    =
  (function
   | {
       additional_recipients = v_additional_recipients;
       default_recipients = v_default_recipients;
       notification_level = v_notification_level;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_notification_level
         in
         ("notification_level", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_default_recipients
         in
         ("default_recipients", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_additional_recipients then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_additional_recipients
           in
           let bnd = "additional_recipients", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : notification_rules__eligible_assignments__admin_notifications ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_notification_rules__eligible_assignments__admin_notifications

[@@@deriving.end]

type notification_rules__eligible_assignments = {
  admin_notifications :
    notification_rules__eligible_assignments__admin_notifications
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  approver_notifications :
    notification_rules__eligible_assignments__approver_notifications
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  assignee_notifications :
    notification_rules__eligible_assignments__assignee_notifications
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : notification_rules__eligible_assignments) -> ()

let yojson_of_notification_rules__eligible_assignments =
  (function
   | {
       admin_notifications = v_admin_notifications;
       approver_notifications = v_approver_notifications;
       assignee_notifications = v_assignee_notifications;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_assignee_notifications then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_notification_rules__eligible_assignments__assignee_notifications)
               v_assignee_notifications
           in
           let bnd = "assignee_notifications", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_approver_notifications then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_notification_rules__eligible_assignments__approver_notifications)
               v_approver_notifications
           in
           let bnd = "approver_notifications", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_admin_notifications then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_notification_rules__eligible_assignments__admin_notifications)
               v_admin_notifications
           in
           let bnd = "admin_notifications", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : notification_rules__eligible_assignments ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_notification_rules__eligible_assignments

[@@@deriving.end]

type notification_rules__eligible_activations__assignee_notifications = {
  additional_recipients : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  default_recipients : bool prop;
  notification_level : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       notification_rules__eligible_activations__assignee_notifications) ->
  ()

let yojson_of_notification_rules__eligible_activations__assignee_notifications
    =
  (function
   | {
       additional_recipients = v_additional_recipients;
       default_recipients = v_default_recipients;
       notification_level = v_notification_level;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_notification_level
         in
         ("notification_level", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_default_recipients
         in
         ("default_recipients", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_additional_recipients then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_additional_recipients
           in
           let bnd = "additional_recipients", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : notification_rules__eligible_activations__assignee_notifications ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_notification_rules__eligible_activations__assignee_notifications

[@@@deriving.end]

type notification_rules__eligible_activations__approver_notifications = {
  additional_recipients : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  default_recipients : bool prop;
  notification_level : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       notification_rules__eligible_activations__approver_notifications) ->
  ()

let yojson_of_notification_rules__eligible_activations__approver_notifications
    =
  (function
   | {
       additional_recipients = v_additional_recipients;
       default_recipients = v_default_recipients;
       notification_level = v_notification_level;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_notification_level
         in
         ("notification_level", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_default_recipients
         in
         ("default_recipients", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_additional_recipients then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_additional_recipients
           in
           let bnd = "additional_recipients", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : notification_rules__eligible_activations__approver_notifications ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_notification_rules__eligible_activations__approver_notifications

[@@@deriving.end]

type notification_rules__eligible_activations__admin_notifications = {
  additional_recipients : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  default_recipients : bool prop;
  notification_level : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       notification_rules__eligible_activations__admin_notifications) ->
  ()

let yojson_of_notification_rules__eligible_activations__admin_notifications
    =
  (function
   | {
       additional_recipients = v_additional_recipients;
       default_recipients = v_default_recipients;
       notification_level = v_notification_level;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_notification_level
         in
         ("notification_level", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_default_recipients
         in
         ("default_recipients", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_additional_recipients then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_additional_recipients
           in
           let bnd = "additional_recipients", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : notification_rules__eligible_activations__admin_notifications ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_notification_rules__eligible_activations__admin_notifications

[@@@deriving.end]

type notification_rules__eligible_activations = {
  admin_notifications :
    notification_rules__eligible_activations__admin_notifications
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  approver_notifications :
    notification_rules__eligible_activations__approver_notifications
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  assignee_notifications :
    notification_rules__eligible_activations__assignee_notifications
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : notification_rules__eligible_activations) -> ()

let yojson_of_notification_rules__eligible_activations =
  (function
   | {
       admin_notifications = v_admin_notifications;
       approver_notifications = v_approver_notifications;
       assignee_notifications = v_assignee_notifications;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_assignee_notifications then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_notification_rules__eligible_activations__assignee_notifications)
               v_assignee_notifications
           in
           let bnd = "assignee_notifications", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_approver_notifications then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_notification_rules__eligible_activations__approver_notifications)
               v_approver_notifications
           in
           let bnd = "approver_notifications", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_admin_notifications then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_notification_rules__eligible_activations__admin_notifications)
               v_admin_notifications
           in
           let bnd = "admin_notifications", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : notification_rules__eligible_activations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_notification_rules__eligible_activations

[@@@deriving.end]

type notification_rules__active_assignments__assignee_notifications = {
  additional_recipients : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  default_recipients : bool prop;
  notification_level : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       notification_rules__active_assignments__assignee_notifications) ->
  ()

let yojson_of_notification_rules__active_assignments__assignee_notifications
    =
  (function
   | {
       additional_recipients = v_additional_recipients;
       default_recipients = v_default_recipients;
       notification_level = v_notification_level;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_notification_level
         in
         ("notification_level", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_default_recipients
         in
         ("default_recipients", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_additional_recipients then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_additional_recipients
           in
           let bnd = "additional_recipients", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : notification_rules__active_assignments__assignee_notifications ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_notification_rules__active_assignments__assignee_notifications

[@@@deriving.end]

type notification_rules__active_assignments__approver_notifications = {
  additional_recipients : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  default_recipients : bool prop;
  notification_level : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       notification_rules__active_assignments__approver_notifications) ->
  ()

let yojson_of_notification_rules__active_assignments__approver_notifications
    =
  (function
   | {
       additional_recipients = v_additional_recipients;
       default_recipients = v_default_recipients;
       notification_level = v_notification_level;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_notification_level
         in
         ("notification_level", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_default_recipients
         in
         ("default_recipients", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_additional_recipients then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_additional_recipients
           in
           let bnd = "additional_recipients", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : notification_rules__active_assignments__approver_notifications ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_notification_rules__active_assignments__approver_notifications

[@@@deriving.end]

type notification_rules__active_assignments__admin_notifications = {
  additional_recipients : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  default_recipients : bool prop;
  notification_level : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       notification_rules__active_assignments__admin_notifications) ->
  ()

let yojson_of_notification_rules__active_assignments__admin_notifications
    =
  (function
   | {
       additional_recipients = v_additional_recipients;
       default_recipients = v_default_recipients;
       notification_level = v_notification_level;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_notification_level
         in
         ("notification_level", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_default_recipients
         in
         ("default_recipients", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_additional_recipients then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_additional_recipients
           in
           let bnd = "additional_recipients", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : notification_rules__active_assignments__admin_notifications ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_notification_rules__active_assignments__admin_notifications

[@@@deriving.end]

type notification_rules__active_assignments = {
  admin_notifications :
    notification_rules__active_assignments__admin_notifications list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  approver_notifications :
    notification_rules__active_assignments__approver_notifications
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  assignee_notifications :
    notification_rules__active_assignments__assignee_notifications
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : notification_rules__active_assignments) -> ()

let yojson_of_notification_rules__active_assignments =
  (function
   | {
       admin_notifications = v_admin_notifications;
       approver_notifications = v_approver_notifications;
       assignee_notifications = v_assignee_notifications;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_assignee_notifications then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_notification_rules__active_assignments__assignee_notifications)
               v_assignee_notifications
           in
           let bnd = "assignee_notifications", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_approver_notifications then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_notification_rules__active_assignments__approver_notifications)
               v_approver_notifications
           in
           let bnd = "approver_notifications", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_admin_notifications then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_notification_rules__active_assignments__admin_notifications)
               v_admin_notifications
           in
           let bnd = "admin_notifications", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : notification_rules__active_assignments ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_notification_rules__active_assignments

[@@@deriving.end]

type notification_rules = {
  active_assignments : notification_rules__active_assignments list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  eligible_activations :
    notification_rules__eligible_activations list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  eligible_assignments :
    notification_rules__eligible_assignments list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : notification_rules) -> ()

let yojson_of_notification_rules =
  (function
   | {
       active_assignments = v_active_assignments;
       eligible_activations = v_eligible_activations;
       eligible_assignments = v_eligible_assignments;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_eligible_assignments then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_notification_rules__eligible_assignments)
               v_eligible_assignments
           in
           let bnd = "eligible_assignments", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_eligible_activations then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_notification_rules__eligible_activations)
               v_eligible_activations
           in
           let bnd = "eligible_activations", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_active_assignments then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_notification_rules__active_assignments)
               v_active_assignments
           in
           let bnd = "active_assignments", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : notification_rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_notification_rules

[@@@deriving.end]

type azurerm_role_management_policy = {
  id : string prop option; [@option]
  role_definition_id : string prop;
  scope : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_role_management_policy) -> ()

let yojson_of_azurerm_role_management_policy =
  (function
   | {
       id = v_id;
       role_definition_id = v_role_definition_id;
       scope = v_scope;
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
         let arg = yojson_of_prop yojson_of_string v_scope in
         ("scope", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_role_definition_id
         in
         ("role_definition_id", arg) :: bnds
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
    : azurerm_role_management_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_role_management_policy

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_role_management_policy ?id ?timeouts ~role_definition_id
    ~scope () : azurerm_role_management_policy =
  { id; role_definition_id; scope; timeouts }

type t = {
  tf_name : string;
  activation_rules : activation_rules list prop;
  active_assignment_rules : active_assignment_rules list prop;
  description : string prop;
  eligible_assignment_rules : eligible_assignment_rules list prop;
  id : string prop;
  name : string prop;
  notification_rules : notification_rules list prop;
  role_definition_id : string prop;
  scope : string prop;
}

let make ?id ?timeouts ~role_definition_id ~scope __id =
  let __type = "azurerm_role_management_policy" in
  let __attrs =
    ({
       tf_name = __id;
       activation_rules =
         Prop.computed __type __id "activation_rules";
       active_assignment_rules =
         Prop.computed __type __id "active_assignment_rules";
       description = Prop.computed __type __id "description";
       eligible_assignment_rules =
         Prop.computed __type __id "eligible_assignment_rules";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       notification_rules =
         Prop.computed __type __id "notification_rules";
       role_definition_id =
         Prop.computed __type __id "role_definition_id";
       scope = Prop.computed __type __id "scope";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_role_management_policy
        (azurerm_role_management_policy ?id ?timeouts
           ~role_definition_id ~scope ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~role_definition_id ~scope __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~role_definition_id ~scope __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
