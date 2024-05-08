(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type kms_settings = {
  next_rotation_time : string prop;
  rotation_period : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kms_settings) -> ()

let yojson_of_kms_settings =
  (function
   | {
       next_rotation_time = v_next_rotation_time;
       rotation_period = v_rotation_period;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_rotation_period
         in
         ("rotation_period", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_next_rotation_time
         in
         ("next_rotation_time", arg) :: bnds
       in
       `Assoc bnds
    : kms_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kms_settings

[@@@deriving.end]

type partner_permissions = {
  assured_workloads_monitoring : bool prop option; [@option]
  data_logs_viewer : bool prop option; [@option]
  service_access_approver : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : partner_permissions) -> ()

let yojson_of_partner_permissions =
  (function
   | {
       assured_workloads_monitoring = v_assured_workloads_monitoring;
       data_logs_viewer = v_data_logs_viewer;
       service_access_approver = v_service_access_approver;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_service_access_approver with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "service_access_approver", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_logs_viewer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "data_logs_viewer", arg in
             bnd :: bnds
       in
       let bnds =
         match v_assured_workloads_monitoring with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "assured_workloads_monitoring", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : partner_permissions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_partner_permissions

[@@@deriving.end]

type resource_settings = {
  display_name : string prop option; [@option]
  resource_id : string prop option; [@option]
  resource_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : resource_settings) -> ()

let yojson_of_resource_settings =
  (function
   | {
       display_name = v_display_name;
       resource_id = v_resource_id;
       resource_type = v_resource_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_resource_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : resource_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_resource_settings

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

type compliance_status = {
  acknowledged_violation_count : float prop list;
      [@default []] [@yojson_drop_default ( = )]
  active_violation_count : float prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : compliance_status) -> ()

let yojson_of_compliance_status =
  (function
   | {
       acknowledged_violation_count = v_acknowledged_violation_count;
       active_violation_count = v_active_violation_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_active_violation_count then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_float))
               v_active_violation_count
           in
           let bnd = "active_violation_count", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_acknowledged_violation_count then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_float))
               v_acknowledged_violation_count
           in
           let bnd = "acknowledged_violation_count", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : compliance_status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_compliance_status

[@@@deriving.end]

type ekm_provisioning_response = {
  ekm_provisioning_error_domain : string prop;
  ekm_provisioning_error_mapping : string prop;
  ekm_provisioning_state : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ekm_provisioning_response) -> ()

let yojson_of_ekm_provisioning_response =
  (function
   | {
       ekm_provisioning_error_domain =
         v_ekm_provisioning_error_domain;
       ekm_provisioning_error_mapping =
         v_ekm_provisioning_error_mapping;
       ekm_provisioning_state = v_ekm_provisioning_state;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ekm_provisioning_state
         in
         ("ekm_provisioning_state", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_ekm_provisioning_error_mapping
         in
         ("ekm_provisioning_error_mapping", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_ekm_provisioning_error_domain
         in
         ("ekm_provisioning_error_domain", arg) :: bnds
       in
       `Assoc bnds
    : ekm_provisioning_response -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ekm_provisioning_response

[@@@deriving.end]

type resources = {
  resource_id : float prop;
  resource_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : resources) -> ()

let yojson_of_resources =
  (function
   | { resource_id = v_resource_id; resource_type = v_resource_type }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_type in
         ("resource_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_resource_id in
         ("resource_id", arg) :: bnds
       in
       `Assoc bnds
    : resources -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_resources

[@@@deriving.end]

type saa_enrollment_response = {
  setup_errors : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  setup_status : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : saa_enrollment_response) -> ()

let yojson_of_saa_enrollment_response =
  (function
   | { setup_errors = v_setup_errors; setup_status = v_setup_status }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_setup_status in
         ("setup_status", arg) :: bnds
       in
       let bnds =
         if [] = v_setup_errors then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_setup_errors
           in
           let bnd = "setup_errors", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : saa_enrollment_response -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_saa_enrollment_response

[@@@deriving.end]

type google_assured_workloads_workload = {
  billing_account : string prop option; [@option]
  compliance_regime : string prop;
  display_name : string prop;
  enable_sovereign_controls : bool prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop;
  organization : string prop;
  partner : string prop option; [@option]
  provisioned_resources_parent : string prop option; [@option]
  violation_notifications_enabled : bool prop option; [@option]
  kms_settings : kms_settings list;
      [@default []] [@yojson_drop_default ( = )]
  partner_permissions : partner_permissions list;
      [@default []] [@yojson_drop_default ( = )]
  resource_settings : resource_settings list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_assured_workloads_workload) -> ()

let yojson_of_google_assured_workloads_workload =
  (function
   | {
       billing_account = v_billing_account;
       compliance_regime = v_compliance_regime;
       display_name = v_display_name;
       enable_sovereign_controls = v_enable_sovereign_controls;
       id = v_id;
       labels = v_labels;
       location = v_location;
       organization = v_organization;
       partner = v_partner;
       provisioned_resources_parent = v_provisioned_resources_parent;
       violation_notifications_enabled =
         v_violation_notifications_enabled;
       kms_settings = v_kms_settings;
       partner_permissions = v_partner_permissions;
       resource_settings = v_resource_settings;
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
         if [] = v_resource_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_resource_settings)
               v_resource_settings
           in
           let bnd = "resource_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_partner_permissions then bnds
         else
           let arg =
             (yojson_of_list yojson_of_partner_permissions)
               v_partner_permissions
           in
           let bnd = "partner_permissions", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_kms_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_kms_settings) v_kms_settings
           in
           let bnd = "kms_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_violation_notifications_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "violation_notifications_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_provisioned_resources_parent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "provisioned_resources_parent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_partner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "partner", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_organization in
         ("organization", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_labels with
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
             let bnd = "labels", arg in
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
         match v_enable_sovereign_controls with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_sovereign_controls", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_compliance_regime
         in
         ("compliance_regime", arg) :: bnds
       in
       let bnds =
         match v_billing_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "billing_account", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_assured_workloads_workload ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_assured_workloads_workload

[@@@deriving.end]

let kms_settings ~next_rotation_time ~rotation_period () :
    kms_settings =
  { next_rotation_time; rotation_period }

let partner_permissions ?assured_workloads_monitoring
    ?data_logs_viewer ?service_access_approver () :
    partner_permissions =
  {
    assured_workloads_monitoring;
    data_logs_viewer;
    service_access_approver;
  }

let resource_settings ?display_name ?resource_id ?resource_type () :
    resource_settings =
  { display_name; resource_id; resource_type }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_assured_workloads_workload ?billing_account
    ?enable_sovereign_controls ?id ?labels ?partner
    ?provisioned_resources_parent ?violation_notifications_enabled
    ?(kms_settings = []) ?(partner_permissions = [])
    ?(resource_settings = []) ?timeouts ~compliance_regime
    ~display_name ~location ~organization () :
    google_assured_workloads_workload =
  {
    billing_account;
    compliance_regime;
    display_name;
    enable_sovereign_controls;
    id;
    labels;
    location;
    organization;
    partner;
    provisioned_resources_parent;
    violation_notifications_enabled;
    kms_settings;
    partner_permissions;
    resource_settings;
    timeouts;
  }

type t = {
  tf_name : string;
  billing_account : string prop;
  compliance_regime : string prop;
  compliance_status : compliance_status list prop;
  compliant_but_disallowed_services : string list prop;
  create_time : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  ekm_provisioning_response : ekm_provisioning_response list prop;
  enable_sovereign_controls : bool prop;
  id : string prop;
  kaj_enrollment_state : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  organization : string prop;
  partner : string prop;
  provisioned_resources_parent : string prop;
  resources : resources list prop;
  saa_enrollment_response : saa_enrollment_response list prop;
  terraform_labels : (string * string) list prop;
  violation_notifications_enabled : bool prop;
}

let make ?billing_account ?enable_sovereign_controls ?id ?labels
    ?partner ?provisioned_resources_parent
    ?violation_notifications_enabled ?(kms_settings = [])
    ?(partner_permissions = []) ?(resource_settings = []) ?timeouts
    ~compliance_regime ~display_name ~location ~organization __id =
  let __type = "google_assured_workloads_workload" in
  let __attrs =
    ({
       tf_name = __id;
       billing_account = Prop.computed __type __id "billing_account";
       compliance_regime =
         Prop.computed __type __id "compliance_regime";
       compliance_status =
         Prop.computed __type __id "compliance_status";
       compliant_but_disallowed_services =
         Prop.computed __type __id
           "compliant_but_disallowed_services";
       create_time = Prop.computed __type __id "create_time";
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       ekm_provisioning_response =
         Prop.computed __type __id "ekm_provisioning_response";
       enable_sovereign_controls =
         Prop.computed __type __id "enable_sovereign_controls";
       id = Prop.computed __type __id "id";
       kaj_enrollment_state =
         Prop.computed __type __id "kaj_enrollment_state";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       organization = Prop.computed __type __id "organization";
       partner = Prop.computed __type __id "partner";
       provisioned_resources_parent =
         Prop.computed __type __id "provisioned_resources_parent";
       resources = Prop.computed __type __id "resources";
       saa_enrollment_response =
         Prop.computed __type __id "saa_enrollment_response";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       violation_notifications_enabled =
         Prop.computed __type __id "violation_notifications_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_assured_workloads_workload
        (google_assured_workloads_workload ?billing_account
           ?enable_sovereign_controls ?id ?labels ?partner
           ?provisioned_resources_parent
           ?violation_notifications_enabled ~kms_settings
           ~partner_permissions ~resource_settings ?timeouts
           ~compliance_regime ~display_name ~location ~organization
           ());
    attrs = __attrs;
  }

let register ?tf_module ?billing_account ?enable_sovereign_controls
    ?id ?labels ?partner ?provisioned_resources_parent
    ?violation_notifications_enabled ?(kms_settings = [])
    ?(partner_permissions = []) ?(resource_settings = []) ?timeouts
    ~compliance_regime ~display_name ~location ~organization __id =
  let (r : _ Tf_core.resource) =
    make ?billing_account ?enable_sovereign_controls ?id ?labels
      ?partner ?provisioned_resources_parent
      ?violation_notifications_enabled ~kms_settings
      ~partner_permissions ~resource_settings ?timeouts
      ~compliance_regime ~display_name ~location ~organization __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
