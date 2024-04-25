(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type input = {
  active_threats : float prop option; [@option]
  certificate_id : string prop option; [@option]
  check_disks : string prop list option; [@option]
  cn : string prop option; [@option]
  compliance_status : string prop option; [@option]
  connection_id : string prop option; [@option]
  count_operator : string prop option; [@option]
  domain : string prop option; [@option]
  eid_last_seen : string prop option; [@option]
  enabled : bool prop option; [@option]
  exists : bool prop option; [@option]
  id : string prop option; [@option]
  infected : bool prop option; [@option]
  is_active : bool prop option; [@option]
  issue_count : string prop option; [@option]
  network_status : string prop option; [@option]
  operator : string prop option; [@option]
  os : string prop option; [@option]
  os_distro_name : string prop option; [@option]
  os_distro_revision : string prop option; [@option]
  overall : string prop option; [@option]
  path : string prop option; [@option]
  require_all : bool prop option; [@option]
  risk_level : string prop option; [@option]
  running : bool prop option; [@option]
  sensor_config : string prop option; [@option]
  sha256 : string prop option; [@option]
  thumbprint : string prop option; [@option]
  total_score : float prop option; [@option]
  version : string prop option; [@option]
  version_operator : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : input) -> ()

let yojson_of_input =
  (function
   | {
       active_threats = v_active_threats;
       certificate_id = v_certificate_id;
       check_disks = v_check_disks;
       cn = v_cn;
       compliance_status = v_compliance_status;
       connection_id = v_connection_id;
       count_operator = v_count_operator;
       domain = v_domain;
       eid_last_seen = v_eid_last_seen;
       enabled = v_enabled;
       exists = v_exists;
       id = v_id;
       infected = v_infected;
       is_active = v_is_active;
       issue_count = v_issue_count;
       network_status = v_network_status;
       operator = v_operator;
       os = v_os;
       os_distro_name = v_os_distro_name;
       os_distro_revision = v_os_distro_revision;
       overall = v_overall;
       path = v_path;
       require_all = v_require_all;
       risk_level = v_risk_level;
       running = v_running;
       sensor_config = v_sensor_config;
       sha256 = v_sha256;
       thumbprint = v_thumbprint;
       total_score = v_total_score;
       version = v_version;
       version_operator = v_version_operator;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_version_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version_operator", arg in
             bnd :: bnds
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
         match v_total_score with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "total_score", arg in
             bnd :: bnds
       in
       let bnds =
         match v_thumbprint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "thumbprint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sha256 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sha256", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sensor_config with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sensor_config", arg in
             bnd :: bnds
       in
       let bnds =
         match v_running with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "running", arg in
             bnd :: bnds
       in
       let bnds =
         match v_risk_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "risk_level", arg in
             bnd :: bnds
       in
       let bnds =
         match v_require_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_overall with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "overall", arg in
             bnd :: bnds
       in
       let bnds =
         match v_os_distro_revision with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "os_distro_revision", arg in
             bnd :: bnds
       in
       let bnds =
         match v_os_distro_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "os_distro_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_os with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "os", arg in
             bnd :: bnds
       in
       let bnds =
         match v_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_issue_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "issue_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_is_active with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_active", arg in
             bnd :: bnds
       in
       let bnds =
         match v_infected with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "infected", arg in
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
         match v_exists with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "exists", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_eid_last_seen with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "eid_last_seen", arg in
             bnd :: bnds
       in
       let bnds =
         match v_domain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain", arg in
             bnd :: bnds
       in
       let bnds =
         match v_count_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "count_operator", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connection_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connection_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compliance_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compliance_status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_check_disks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "check_disks", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_active_threats with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "active_threats", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : input -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_input

[@@@deriving.end]

type match_ = { platform : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : match_) -> ()

let yojson_of_match_ =
  (function
   | { platform = v_platform } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_platform with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "platform", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : match_ -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_match_

[@@@deriving.end]

type cloudflare_device_posture_rule = {
  account_id : string prop;
  description : string prop option; [@option]
  expiration : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
  schedule : string prop option; [@option]
  type_ : string prop; [@key "type"]
  input : input list;
  match_ : match_ list; [@key "match"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_device_posture_rule) -> ()

let yojson_of_cloudflare_device_posture_rule =
  (function
   | {
       account_id = v_account_id;
       description = v_description;
       expiration = v_expiration;
       id = v_id;
       name = v_name;
       schedule = v_schedule;
       type_ = v_type_;
       input = v_input;
       match_ = v_match_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_match_ v_match_ in
         ("match", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_input v_input in
         ("input", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_schedule with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schedule", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
         match v_expiration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expiration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_device_posture_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_device_posture_rule

[@@@deriving.end]

let input ?active_threats ?certificate_id ?check_disks ?cn
    ?compliance_status ?connection_id ?count_operator ?domain
    ?eid_last_seen ?enabled ?exists ?id ?infected ?is_active
    ?issue_count ?network_status ?operator ?os ?os_distro_name
    ?os_distro_revision ?overall ?path ?require_all ?risk_level
    ?running ?sensor_config ?sha256 ?thumbprint ?total_score ?version
    ?version_operator () : input =
  {
    active_threats;
    certificate_id;
    check_disks;
    cn;
    compliance_status;
    connection_id;
    count_operator;
    domain;
    eid_last_seen;
    enabled;
    exists;
    id;
    infected;
    is_active;
    issue_count;
    network_status;
    operator;
    os;
    os_distro_name;
    os_distro_revision;
    overall;
    path;
    require_all;
    risk_level;
    running;
    sensor_config;
    sha256;
    thumbprint;
    total_score;
    version;
    version_operator;
  }

let match_ ?platform () : match_ = { platform }

let cloudflare_device_posture_rule ?description ?expiration ?id ?name
    ?schedule ~account_id ~type_ ~input ~match_ () :
    cloudflare_device_posture_rule =
  {
    account_id;
    description;
    expiration;
    id;
    name;
    schedule;
    type_;
    input;
    match_;
  }

type t = {
  account_id : string prop;
  description : string prop;
  expiration : string prop;
  id : string prop;
  name : string prop;
  schedule : string prop;
  type_ : string prop;
}

let make ?description ?expiration ?id ?name ?schedule ~account_id
    ~type_ ~input ~match_ __id =
  let __type = "cloudflare_device_posture_rule" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       description = Prop.computed __type __id "description";
       expiration = Prop.computed __type __id "expiration";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       schedule = Prop.computed __type __id "schedule";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_device_posture_rule
        (cloudflare_device_posture_rule ?description ?expiration ?id
           ?name ?schedule ~account_id ~type_ ~input ~match_ ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?expiration ?id ?name ?schedule
    ~account_id ~type_ ~input ~match_ __id =
  let (r : _ Tf_core.resource) =
    make ?description ?expiration ?id ?name ?schedule ~account_id
      ~type_ ~input ~match_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
