(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type datasources__kubernetes__audit_logs = { enable : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : datasources__kubernetes__audit_logs) -> ()

let yojson_of_datasources__kubernetes__audit_logs =
  (function
   | { enable = v_enable } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enable in
         ("enable", arg) :: bnds
       in
       `Assoc bnds
    : datasources__kubernetes__audit_logs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_datasources__kubernetes__audit_logs

[@@@deriving.end]

type datasources__kubernetes = {
  audit_logs : datasources__kubernetes__audit_logs list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : datasources__kubernetes) -> ()

let yojson_of_datasources__kubernetes =
  (function
   | { audit_logs = v_audit_logs } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_datasources__kubernetes__audit_logs
             v_audit_logs
         in
         ("audit_logs", arg) :: bnds
       in
       `Assoc bnds
    : datasources__kubernetes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_datasources__kubernetes

[@@@deriving.end]

type datasources__malware_protection__scan_ec2_instance_with_findings__ebs_volumes = {
  auto_enable : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       datasources__malware_protection__scan_ec2_instance_with_findings__ebs_volumes) ->
  ()

let yojson_of_datasources__malware_protection__scan_ec2_instance_with_findings__ebs_volumes
    =
  (function
   | { auto_enable = v_auto_enable } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_auto_enable in
         ("auto_enable", arg) :: bnds
       in
       `Assoc bnds
    : datasources__malware_protection__scan_ec2_instance_with_findings__ebs_volumes ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_datasources__malware_protection__scan_ec2_instance_with_findings__ebs_volumes

[@@@deriving.end]

type datasources__malware_protection__scan_ec2_instance_with_findings = {
  ebs_volumes :
    datasources__malware_protection__scan_ec2_instance_with_findings__ebs_volumes
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       datasources__malware_protection__scan_ec2_instance_with_findings) ->
  ()

let yojson_of_datasources__malware_protection__scan_ec2_instance_with_findings
    =
  (function
   | { ebs_volumes = v_ebs_volumes } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_datasources__malware_protection__scan_ec2_instance_with_findings__ebs_volumes
             v_ebs_volumes
         in
         ("ebs_volumes", arg) :: bnds
       in
       `Assoc bnds
    : datasources__malware_protection__scan_ec2_instance_with_findings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_datasources__malware_protection__scan_ec2_instance_with_findings

[@@@deriving.end]

type datasources__malware_protection = {
  scan_ec2_instance_with_findings :
    datasources__malware_protection__scan_ec2_instance_with_findings
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : datasources__malware_protection) -> ()

let yojson_of_datasources__malware_protection =
  (function
   | {
       scan_ec2_instance_with_findings =
         v_scan_ec2_instance_with_findings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_datasources__malware_protection__scan_ec2_instance_with_findings
             v_scan_ec2_instance_with_findings
         in
         ("scan_ec2_instance_with_findings", arg) :: bnds
       in
       `Assoc bnds
    : datasources__malware_protection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_datasources__malware_protection

[@@@deriving.end]

type datasources__s3_logs = { auto_enable : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : datasources__s3_logs) -> ()

let yojson_of_datasources__s3_logs =
  (function
   | { auto_enable = v_auto_enable } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_auto_enable in
         ("auto_enable", arg) :: bnds
       in
       `Assoc bnds
    : datasources__s3_logs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_datasources__s3_logs

[@@@deriving.end]

type datasources = {
  kubernetes : datasources__kubernetes list;
  malware_protection : datasources__malware_protection list;
  s3_logs : datasources__s3_logs list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : datasources) -> ()

let yojson_of_datasources =
  (function
   | {
       kubernetes = v_kubernetes;
       malware_protection = v_malware_protection;
       s3_logs = v_s3_logs;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_datasources__s3_logs v_s3_logs
         in
         ("s3_logs", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_datasources__malware_protection
             v_malware_protection
         in
         ("malware_protection", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_datasources__kubernetes
             v_kubernetes
         in
         ("kubernetes", arg) :: bnds
       in
       `Assoc bnds
    : datasources -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_datasources

[@@@deriving.end]

type aws_guardduty_organization_configuration = {
  auto_enable : bool prop option; [@option]
  auto_enable_organization_members : string prop option; [@option]
  detector_id : string prop;
  id : string prop option; [@option]
  datasources : datasources list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_guardduty_organization_configuration) -> ()

let yojson_of_aws_guardduty_organization_configuration =
  (function
   | {
       auto_enable = v_auto_enable;
       auto_enable_organization_members =
         v_auto_enable_organization_members;
       detector_id = v_detector_id;
       id = v_id;
       datasources = v_datasources;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_datasources v_datasources
         in
         ("datasources", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_detector_id in
         ("detector_id", arg) :: bnds
       in
       let bnds =
         match v_auto_enable_organization_members with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "auto_enable_organization_members", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_enable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_enable", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_guardduty_organization_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_guardduty_organization_configuration

[@@@deriving.end]

let datasources__kubernetes__audit_logs ~enable () :
    datasources__kubernetes__audit_logs =
  { enable }

let datasources__kubernetes ~audit_logs () : datasources__kubernetes
    =
  { audit_logs }

let datasources__malware_protection__scan_ec2_instance_with_findings__ebs_volumes
    ~auto_enable () :
    datasources__malware_protection__scan_ec2_instance_with_findings__ebs_volumes
    =
  { auto_enable }

let datasources__malware_protection__scan_ec2_instance_with_findings
    ~ebs_volumes () :
    datasources__malware_protection__scan_ec2_instance_with_findings
    =
  { ebs_volumes }

let datasources__malware_protection ~scan_ec2_instance_with_findings
    () : datasources__malware_protection =
  { scan_ec2_instance_with_findings }

let datasources__s3_logs ~auto_enable () : datasources__s3_logs =
  { auto_enable }

let datasources ?(kubernetes = []) ?(malware_protection = [])
    ?(s3_logs = []) () : datasources =
  { kubernetes; malware_protection; s3_logs }

let aws_guardduty_organization_configuration ?auto_enable
    ?auto_enable_organization_members ?id ?(datasources = [])
    ~detector_id () : aws_guardduty_organization_configuration =
  {
    auto_enable;
    auto_enable_organization_members;
    detector_id;
    id;
    datasources;
  }

type t = {
  auto_enable : bool prop;
  auto_enable_organization_members : string prop;
  detector_id : string prop;
  id : string prop;
}

let make ?auto_enable ?auto_enable_organization_members ?id
    ?(datasources = []) ~detector_id __id =
  let __type = "aws_guardduty_organization_configuration" in
  let __attrs =
    ({
       auto_enable = Prop.computed __type __id "auto_enable";
       auto_enable_organization_members =
         Prop.computed __type __id "auto_enable_organization_members";
       detector_id = Prop.computed __type __id "detector_id";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_guardduty_organization_configuration
        (aws_guardduty_organization_configuration ?auto_enable
           ?auto_enable_organization_members ?id ~datasources
           ~detector_id ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_enable
    ?auto_enable_organization_members ?id ?(datasources = [])
    ~detector_id __id =
  let (r : _ Tf_core.resource) =
    make ?auto_enable ?auto_enable_organization_members ?id
      ~datasources ~detector_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
