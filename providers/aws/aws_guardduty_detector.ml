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
  enable : bool prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       datasources__malware_protection__scan_ec2_instance_with_findings__ebs_volumes) ->
  ()

let yojson_of_datasources__malware_protection__scan_ec2_instance_with_findings__ebs_volumes
    =
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

type datasources__s3_logs = { enable : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : datasources__s3_logs) -> ()

let yojson_of_datasources__s3_logs =
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

type aws_guardduty_detector = {
  enable : bool prop option; [@option]
  finding_publishing_frequency : string prop option; [@option]
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  datasources : datasources list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_guardduty_detector) -> ()

let yojson_of_aws_guardduty_detector =
  (function
   | {
       enable = v_enable;
       finding_publishing_frequency = v_finding_publishing_frequency;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
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
         match v_tags_all with
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
             let bnd = "tags_all", arg in
             bnd :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_finding_publishing_frequency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "finding_publishing_frequency", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_guardduty_detector -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_guardduty_detector

[@@@deriving.end]

let datasources__kubernetes__audit_logs ~enable () :
    datasources__kubernetes__audit_logs =
  { enable }

let datasources__kubernetes ~audit_logs () : datasources__kubernetes
    =
  { audit_logs }

let datasources__malware_protection__scan_ec2_instance_with_findings__ebs_volumes
    ~enable () :
    datasources__malware_protection__scan_ec2_instance_with_findings__ebs_volumes
    =
  { enable }

let datasources__malware_protection__scan_ec2_instance_with_findings
    ~ebs_volumes () :
    datasources__malware_protection__scan_ec2_instance_with_findings
    =
  { ebs_volumes }

let datasources__malware_protection ~scan_ec2_instance_with_findings
    () : datasources__malware_protection =
  { scan_ec2_instance_with_findings }

let datasources__s3_logs ~enable () : datasources__s3_logs =
  { enable }

let datasources ?(kubernetes = []) ?(malware_protection = [])
    ?(s3_logs = []) () : datasources =
  { kubernetes; malware_protection; s3_logs }

let aws_guardduty_detector ?enable ?finding_publishing_frequency ?id
    ?tags ?tags_all ?(datasources = []) () : aws_guardduty_detector =
  {
    enable;
    finding_publishing_frequency;
    id;
    tags;
    tags_all;
    datasources;
  }

type t = {
  account_id : string prop;
  arn : string prop;
  enable : bool prop;
  finding_publishing_frequency : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?enable ?finding_publishing_frequency ?id ?tags ?tags_all
    ?(datasources = []) __id =
  let __type = "aws_guardduty_detector" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       arn = Prop.computed __type __id "arn";
       enable = Prop.computed __type __id "enable";
       finding_publishing_frequency =
         Prop.computed __type __id "finding_publishing_frequency";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_guardduty_detector
        (aws_guardduty_detector ?enable ?finding_publishing_frequency
           ?id ?tags ?tags_all ~datasources ());
    attrs = __attrs;
  }

let register ?tf_module ?enable ?finding_publishing_frequency ?id
    ?tags ?tags_all ?(datasources = []) __id =
  let (r : _ Tf_core.resource) =
    make ?enable ?finding_publishing_frequency ?id ?tags ?tags_all
      ~datasources __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
