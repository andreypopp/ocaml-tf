(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type additional_notification_targets = {
  admin_email_recipients : string prop list option; [@option]
  requester_email_recipients : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : additional_notification_targets) -> ()

let yojson_of_additional_notification_targets =
  (function
   | {
       admin_email_recipients = v_admin_email_recipients;
       requester_email_recipients = v_requester_email_recipients;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_requester_email_recipients with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "requester_email_recipients", arg in
             bnd :: bnds
       in
       let bnds =
         match v_admin_email_recipients with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "admin_email_recipients", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : additional_notification_targets ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_additional_notification_targets

[@@@deriving.end]

type approval_workflow__manual_approvals__steps__approvers = {
  principals : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : approval_workflow__manual_approvals__steps__approvers) ->
  ()

let yojson_of_approval_workflow__manual_approvals__steps__approvers =
  (function
   | { principals = v_principals } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_principals then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_principals
           in
           let bnd = "principals", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : approval_workflow__manual_approvals__steps__approvers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_approval_workflow__manual_approvals__steps__approvers

[@@@deriving.end]

type approval_workflow__manual_approvals__steps = {
  approvals_needed : float prop option; [@option]
  approver_email_recipients : string prop list option; [@option]
  approvers :
    approval_workflow__manual_approvals__steps__approvers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : approval_workflow__manual_approvals__steps) -> ()

let yojson_of_approval_workflow__manual_approvals__steps =
  (function
   | {
       approvals_needed = v_approvals_needed;
       approver_email_recipients = v_approver_email_recipients;
       approvers = v_approvers;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_approvers then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_approval_workflow__manual_approvals__steps__approvers)
               v_approvers
           in
           let bnd = "approvers", arg in
           bnd :: bnds
       in
       let bnds =
         match v_approver_email_recipients with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "approver_email_recipients", arg in
             bnd :: bnds
       in
       let bnds =
         match v_approvals_needed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "approvals_needed", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : approval_workflow__manual_approvals__steps ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_approval_workflow__manual_approvals__steps

[@@@deriving.end]

type approval_workflow__manual_approvals = {
  require_approver_justification : bool prop option; [@option]
  steps : approval_workflow__manual_approvals__steps list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : approval_workflow__manual_approvals) -> ()

let yojson_of_approval_workflow__manual_approvals =
  (function
   | {
       require_approver_justification =
         v_require_approver_justification;
       steps = v_steps;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_steps then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_approval_workflow__manual_approvals__steps)
               v_steps
           in
           let bnd = "steps", arg in
           bnd :: bnds
       in
       let bnds =
         match v_require_approver_justification with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_approver_justification", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : approval_workflow__manual_approvals ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_approval_workflow__manual_approvals

[@@@deriving.end]

type approval_workflow = {
  manual_approvals : approval_workflow__manual_approvals list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : approval_workflow) -> ()

let yojson_of_approval_workflow =
  (function
   | { manual_approvals = v_manual_approvals } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_manual_approvals then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_approval_workflow__manual_approvals)
               v_manual_approvals
           in
           let bnd = "manual_approvals", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : approval_workflow -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_approval_workflow

[@@@deriving.end]

type eligible_users = {
  principals : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : eligible_users) -> ()

let yojson_of_eligible_users =
  (function
   | { principals = v_principals } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_principals then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_principals
           in
           let bnd = "principals", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : eligible_users -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_eligible_users

[@@@deriving.end]

type privileged_access__gcp_iam_access__role_bindings = {
  condition_expression : string prop option; [@option]
  role : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : privileged_access__gcp_iam_access__role_bindings) -> ()

let yojson_of_privileged_access__gcp_iam_access__role_bindings =
  (function
   | { condition_expression = v_condition_expression; role = v_role }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role in
         ("role", arg) :: bnds
       in
       let bnds =
         match v_condition_expression with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "condition_expression", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : privileged_access__gcp_iam_access__role_bindings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_privileged_access__gcp_iam_access__role_bindings

[@@@deriving.end]

type privileged_access__gcp_iam_access = {
  resource : string prop;
  resource_type : string prop;
  role_bindings :
    privileged_access__gcp_iam_access__role_bindings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : privileged_access__gcp_iam_access) -> ()

let yojson_of_privileged_access__gcp_iam_access =
  (function
   | {
       resource = v_resource;
       resource_type = v_resource_type;
       role_bindings = v_role_bindings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_role_bindings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_privileged_access__gcp_iam_access__role_bindings)
               v_role_bindings
           in
           let bnd = "role_bindings", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_type in
         ("resource_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource in
         ("resource", arg) :: bnds
       in
       `Assoc bnds
    : privileged_access__gcp_iam_access ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_privileged_access__gcp_iam_access

[@@@deriving.end]

type privileged_access = {
  gcp_iam_access : privileged_access__gcp_iam_access list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : privileged_access) -> ()

let yojson_of_privileged_access =
  (function
   | { gcp_iam_access = v_gcp_iam_access } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_gcp_iam_access then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_privileged_access__gcp_iam_access)
               v_gcp_iam_access
           in
           let bnd = "gcp_iam_access", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : privileged_access -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_privileged_access

[@@@deriving.end]

type requester_justification_config__not_mandatory = unit
[@@deriving_inline yojson_of]

let _ = fun (_ : requester_justification_config__not_mandatory) -> ()

let yojson_of_requester_justification_config__not_mandatory =
  (yojson_of_unit
    : requester_justification_config__not_mandatory ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_requester_justification_config__not_mandatory

[@@@deriving.end]

type requester_justification_config__unstructured = unit
[@@deriving_inline yojson_of]

let _ = fun (_ : requester_justification_config__unstructured) -> ()

let yojson_of_requester_justification_config__unstructured =
  (yojson_of_unit
    : requester_justification_config__unstructured ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_requester_justification_config__unstructured

[@@@deriving.end]

type requester_justification_config = {
  not_mandatory : requester_justification_config__not_mandatory list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  unstructured : requester_justification_config__unstructured list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : requester_justification_config) -> ()

let yojson_of_requester_justification_config =
  (function
   | {
       not_mandatory = v_not_mandatory;
       unstructured = v_unstructured;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_unstructured then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_requester_justification_config__unstructured)
               v_unstructured
           in
           let bnd = "unstructured", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_not_mandatory then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_requester_justification_config__not_mandatory)
               v_not_mandatory
           in
           let bnd = "not_mandatory", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : requester_justification_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_requester_justification_config

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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

type google_privileged_access_manager_entitlement = {
  entitlement_id : string prop;
  id : string prop option; [@option]
  location : string prop;
  max_request_duration : string prop;
  parent : string prop;
  additional_notification_targets :
    additional_notification_targets list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  approval_workflow : approval_workflow list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  eligible_users : eligible_users list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  privileged_access : privileged_access list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  requester_justification_config :
    requester_justification_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_privileged_access_manager_entitlement) -> ()

let yojson_of_google_privileged_access_manager_entitlement =
  (function
   | {
       entitlement_id = v_entitlement_id;
       id = v_id;
       location = v_location;
       max_request_duration = v_max_request_duration;
       parent = v_parent;
       additional_notification_targets =
         v_additional_notification_targets;
       approval_workflow = v_approval_workflow;
       eligible_users = v_eligible_users;
       privileged_access = v_privileged_access;
       requester_justification_config =
         v_requester_justification_config;
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
         if Stdlib.( = ) [] v_requester_justification_config then
           bnds
         else
           let arg =
             (yojson_of_list yojson_of_requester_justification_config)
               v_requester_justification_config
           in
           let bnd = "requester_justification_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_privileged_access then bnds
         else
           let arg =
             (yojson_of_list yojson_of_privileged_access)
               v_privileged_access
           in
           let bnd = "privileged_access", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_eligible_users then bnds
         else
           let arg =
             (yojson_of_list yojson_of_eligible_users)
               v_eligible_users
           in
           let bnd = "eligible_users", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_approval_workflow then bnds
         else
           let arg =
             (yojson_of_list yojson_of_approval_workflow)
               v_approval_workflow
           in
           let bnd = "approval_workflow", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_additional_notification_targets then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_additional_notification_targets)
               v_additional_notification_targets
           in
           let bnd = "additional_notification_targets", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent in
         ("parent", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_max_request_duration
         in
         ("max_request_duration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_entitlement_id
         in
         ("entitlement_id", arg) :: bnds
       in
       `Assoc bnds
    : google_privileged_access_manager_entitlement ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_privileged_access_manager_entitlement

[@@@deriving.end]

let additional_notification_targets ?admin_email_recipients
    ?requester_email_recipients () : additional_notification_targets
    =
  { admin_email_recipients; requester_email_recipients }

let approval_workflow__manual_approvals__steps__approvers ~principals
    () : approval_workflow__manual_approvals__steps__approvers =
  { principals }

let approval_workflow__manual_approvals__steps ?approvals_needed
    ?approver_email_recipients ~approvers () :
    approval_workflow__manual_approvals__steps =
  { approvals_needed; approver_email_recipients; approvers }

let approval_workflow__manual_approvals
    ?require_approver_justification ~steps () :
    approval_workflow__manual_approvals =
  { require_approver_justification; steps }

let approval_workflow ~manual_approvals () : approval_workflow =
  { manual_approvals }

let eligible_users ~principals () : eligible_users = { principals }

let privileged_access__gcp_iam_access__role_bindings
    ?condition_expression ~role () :
    privileged_access__gcp_iam_access__role_bindings =
  { condition_expression; role }

let privileged_access__gcp_iam_access ~resource ~resource_type
    ~role_bindings () : privileged_access__gcp_iam_access =
  { resource; resource_type; role_bindings }

let privileged_access ~gcp_iam_access () : privileged_access =
  { gcp_iam_access }

let requester_justification_config__not_mandatory () = ()
let requester_justification_config__unstructured () = ()

let requester_justification_config ?(not_mandatory = [])
    ?(unstructured = []) () : requester_justification_config =
  { not_mandatory; unstructured }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_privileged_access_manager_entitlement ?id
    ?(additional_notification_targets = []) ?(approval_workflow = [])
    ?timeouts ~entitlement_id ~location ~max_request_duration ~parent
    ~eligible_users ~privileged_access
    ~requester_justification_config () :
    google_privileged_access_manager_entitlement =
  {
    entitlement_id;
    id;
    location;
    max_request_duration;
    parent;
    additional_notification_targets;
    approval_workflow;
    eligible_users;
    privileged_access;
    requester_justification_config;
    timeouts;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  entitlement_id : string prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  max_request_duration : string prop;
  name : string prop;
  parent : string prop;
  state : string prop;
  update_time : string prop;
}

let make ?id ?(additional_notification_targets = [])
    ?(approval_workflow = []) ?timeouts ~entitlement_id ~location
    ~max_request_duration ~parent ~eligible_users ~privileged_access
    ~requester_justification_config __id =
  let __type = "google_privileged_access_manager_entitlement" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       entitlement_id = Prop.computed __type __id "entitlement_id";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       max_request_duration =
         Prop.computed __type __id "max_request_duration";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       state = Prop.computed __type __id "state";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_privileged_access_manager_entitlement
        (google_privileged_access_manager_entitlement ?id
           ~additional_notification_targets ~approval_workflow
           ?timeouts ~entitlement_id ~location ~max_request_duration
           ~parent ~eligible_users ~privileged_access
           ~requester_justification_config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(additional_notification_targets = [])
    ?(approval_workflow = []) ?timeouts ~entitlement_id ~location
    ~max_request_duration ~parent ~eligible_users ~privileged_access
    ~requester_justification_config __id =
  let (r : _ Tf_core.resource) =
    make ?id ~additional_notification_targets ~approval_workflow
      ?timeouts ~entitlement_id ~location ~max_request_duration
      ~parent ~eligible_users ~privileged_access
      ~requester_justification_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
