(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
  maximum_duration : string prop option; [@option]
  require_approval : bool prop option; [@option]
  require_justification : bool prop option; [@option]
  require_multifactor_authentication : bool prop option; [@option]
  require_ticket_info : bool prop option; [@option]
  required_conditional_access_authentication_context :
    string prop option;
      [@option]
  approval_stage : activation_rules__approval_stage list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : activation_rules) -> ()

let yojson_of_activation_rules =
  (function
   | {
       maximum_duration = v_maximum_duration;
       require_approval = v_require_approval;
       require_justification = v_require_justification;
       require_multifactor_authentication =
         v_require_multifactor_authentication;
       require_ticket_info = v_require_ticket_info;
       required_conditional_access_authentication_context =
         v_required_conditional_access_authentication_context;
       approval_stage = v_approval_stage;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       let bnds =
         match
           v_required_conditional_access_authentication_context
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               ( "required_conditional_access_authentication_context",
                 arg )
             in
             bnd :: bnds
       in
       let bnds =
         match v_require_ticket_info with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_ticket_info", arg in
             bnd :: bnds
       in
       let bnds =
         match v_require_multifactor_authentication with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_multifactor_authentication", arg in
             bnd :: bnds
       in
       let bnds =
         match v_require_justification with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_justification", arg in
             bnd :: bnds
       in
       let bnds =
         match v_require_approval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_approval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maximum_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "maximum_duration", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : activation_rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_activation_rules

[@@@deriving.end]

type active_assignment_rules = {
  expiration_required : bool prop option; [@option]
  expire_after : string prop option; [@option]
  require_justification : bool prop option; [@option]
  require_multifactor_authentication : bool prop option; [@option]
  require_ticket_info : bool prop option; [@option]
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
         match v_require_ticket_info with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_ticket_info", arg in
             bnd :: bnds
       in
       let bnds =
         match v_require_multifactor_authentication with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_multifactor_authentication", arg in
             bnd :: bnds
       in
       let bnds =
         match v_require_justification with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_justification", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expire_after with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expire_after", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expiration_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "expiration_required", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : active_assignment_rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_active_assignment_rules

[@@@deriving.end]

type eligible_assignment_rules = {
  expiration_required : bool prop option; [@option]
  expire_after : string prop option; [@option]
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
         match v_expire_after with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expire_after", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expiration_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "expiration_required", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : eligible_assignment_rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_eligible_assignment_rules

[@@@deriving.end]

type notification_rules__active_assignments__admin_notifications = {
  additional_recipients : string prop list option; [@option]
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
         match v_additional_recipients with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
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

type notification_rules__active_assignments__approver_notifications = {
  additional_recipients : string prop list option; [@option]
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
         match v_additional_recipients with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
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

type notification_rules__active_assignments__assignee_notifications = {
  additional_recipients : string prop list option; [@option]
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
         match v_additional_recipients with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
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

type notification_rules__eligible_activations__admin_notifications = {
  additional_recipients : string prop list option; [@option]
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
         match v_additional_recipients with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
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

type notification_rules__eligible_activations__approver_notifications = {
  additional_recipients : string prop list option; [@option]
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
         match v_additional_recipients with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
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

type notification_rules__eligible_activations__assignee_notifications = {
  additional_recipients : string prop list option; [@option]
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
         match v_additional_recipients with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
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

type notification_rules__eligible_assignments__admin_notifications = {
  additional_recipients : string prop list option; [@option]
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
         match v_additional_recipients with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
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

type notification_rules__eligible_assignments__approver_notifications = {
  additional_recipients : string prop list option; [@option]
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
         match v_additional_recipients with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
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

type notification_rules__eligible_assignments__assignee_notifications = {
  additional_recipients : string prop list option; [@option]
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
         match v_additional_recipients with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
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

type azurerm_role_management_policy = {
  id : string prop option; [@option]
  role_definition_id : string prop;
  scope : string prop;
  activation_rules : activation_rules list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  active_assignment_rules : active_assignment_rules list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  eligible_assignment_rules : eligible_assignment_rules list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  notification_rules : notification_rules list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
       activation_rules = v_activation_rules;
       active_assignment_rules = v_active_assignment_rules;
       eligible_assignment_rules = v_eligible_assignment_rules;
       notification_rules = v_notification_rules;
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
         if Stdlib.( = ) [] v_notification_rules then bnds
         else
           let arg =
             (yojson_of_list yojson_of_notification_rules)
               v_notification_rules
           in
           let bnd = "notification_rules", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_eligible_assignment_rules then bnds
         else
           let arg =
             (yojson_of_list yojson_of_eligible_assignment_rules)
               v_eligible_assignment_rules
           in
           let bnd = "eligible_assignment_rules", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_active_assignment_rules then bnds
         else
           let arg =
             (yojson_of_list yojson_of_active_assignment_rules)
               v_active_assignment_rules
           in
           let bnd = "active_assignment_rules", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_activation_rules then bnds
         else
           let arg =
             (yojson_of_list yojson_of_activation_rules)
               v_activation_rules
           in
           let bnd = "activation_rules", arg in
           bnd :: bnds
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

let activation_rules__approval_stage__primary_approver ~object_id
    ~type_ () : activation_rules__approval_stage__primary_approver =
  { object_id; type_ }

let activation_rules__approval_stage ~primary_approver () :
    activation_rules__approval_stage =
  { primary_approver }

let activation_rules ?maximum_duration ?require_approval
    ?require_justification ?require_multifactor_authentication
    ?require_ticket_info
    ?required_conditional_access_authentication_context
    ?(approval_stage = []) () : activation_rules =
  {
    maximum_duration;
    require_approval;
    require_justification;
    require_multifactor_authentication;
    require_ticket_info;
    required_conditional_access_authentication_context;
    approval_stage;
  }

let active_assignment_rules ?expiration_required ?expire_after
    ?require_justification ?require_multifactor_authentication
    ?require_ticket_info () : active_assignment_rules =
  {
    expiration_required;
    expire_after;
    require_justification;
    require_multifactor_authentication;
    require_ticket_info;
  }

let eligible_assignment_rules ?expiration_required ?expire_after () :
    eligible_assignment_rules =
  { expiration_required; expire_after }

let notification_rules__active_assignments__admin_notifications
    ?additional_recipients ~default_recipients ~notification_level ()
    : notification_rules__active_assignments__admin_notifications =
  { additional_recipients; default_recipients; notification_level }

let notification_rules__active_assignments__approver_notifications
    ?additional_recipients ~default_recipients ~notification_level ()
    : notification_rules__active_assignments__approver_notifications
    =
  { additional_recipients; default_recipients; notification_level }

let notification_rules__active_assignments__assignee_notifications
    ?additional_recipients ~default_recipients ~notification_level ()
    : notification_rules__active_assignments__assignee_notifications
    =
  { additional_recipients; default_recipients; notification_level }

let notification_rules__active_assignments
    ?(admin_notifications = []) ?(approver_notifications = [])
    ?(assignee_notifications = []) () :
    notification_rules__active_assignments =
  {
    admin_notifications;
    approver_notifications;
    assignee_notifications;
  }

let notification_rules__eligible_activations__admin_notifications
    ?additional_recipients ~default_recipients ~notification_level ()
    : notification_rules__eligible_activations__admin_notifications =
  { additional_recipients; default_recipients; notification_level }

let notification_rules__eligible_activations__approver_notifications
    ?additional_recipients ~default_recipients ~notification_level ()
    :
    notification_rules__eligible_activations__approver_notifications
    =
  { additional_recipients; default_recipients; notification_level }

let notification_rules__eligible_activations__assignee_notifications
    ?additional_recipients ~default_recipients ~notification_level ()
    :
    notification_rules__eligible_activations__assignee_notifications
    =
  { additional_recipients; default_recipients; notification_level }

let notification_rules__eligible_activations
    ?(admin_notifications = []) ?(approver_notifications = [])
    ?(assignee_notifications = []) () :
    notification_rules__eligible_activations =
  {
    admin_notifications;
    approver_notifications;
    assignee_notifications;
  }

let notification_rules__eligible_assignments__admin_notifications
    ?additional_recipients ~default_recipients ~notification_level ()
    : notification_rules__eligible_assignments__admin_notifications =
  { additional_recipients; default_recipients; notification_level }

let notification_rules__eligible_assignments__approver_notifications
    ?additional_recipients ~default_recipients ~notification_level ()
    :
    notification_rules__eligible_assignments__approver_notifications
    =
  { additional_recipients; default_recipients; notification_level }

let notification_rules__eligible_assignments__assignee_notifications
    ?additional_recipients ~default_recipients ~notification_level ()
    :
    notification_rules__eligible_assignments__assignee_notifications
    =
  { additional_recipients; default_recipients; notification_level }

let notification_rules__eligible_assignments
    ?(admin_notifications = []) ?(approver_notifications = [])
    ?(assignee_notifications = []) () :
    notification_rules__eligible_assignments =
  {
    admin_notifications;
    approver_notifications;
    assignee_notifications;
  }

let notification_rules ?(active_assignments = [])
    ?(eligible_activations = []) ?(eligible_assignments = []) () :
    notification_rules =
  { active_assignments; eligible_activations; eligible_assignments }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_role_management_policy ?id ?(activation_rules = [])
    ?(active_assignment_rules = []) ?(eligible_assignment_rules = [])
    ?(notification_rules = []) ?timeouts ~role_definition_id ~scope
    () : azurerm_role_management_policy =
  {
    id;
    role_definition_id;
    scope;
    activation_rules;
    active_assignment_rules;
    eligible_assignment_rules;
    notification_rules;
    timeouts;
  }

type t = {
  tf_name : string;
  description : string prop;
  id : string prop;
  name : string prop;
  role_definition_id : string prop;
  scope : string prop;
}

let make ?id ?(activation_rules = []) ?(active_assignment_rules = [])
    ?(eligible_assignment_rules = []) ?(notification_rules = [])
    ?timeouts ~role_definition_id ~scope __id =
  let __type = "azurerm_role_management_policy" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
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
        (azurerm_role_management_policy ?id ~activation_rules
           ~active_assignment_rules ~eligible_assignment_rules
           ~notification_rules ?timeouts ~role_definition_id ~scope
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(activation_rules = [])
    ?(active_assignment_rules = []) ?(eligible_assignment_rules = [])
    ?(notification_rules = []) ?timeouts ~role_definition_id ~scope
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ~activation_rules ~active_assignment_rules
      ~eligible_assignment_rules ~notification_rules ?timeouts
      ~role_definition_id ~scope __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
