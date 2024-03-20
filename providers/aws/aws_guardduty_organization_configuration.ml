(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type datasources__kubernetes__audit_logs = {
  enable : bool prop;  (** enable *)
}
[@@deriving yojson_of]
(** datasources__kubernetes__audit_logs *)

type datasources__kubernetes = {
  audit_logs : datasources__kubernetes__audit_logs list;
}
[@@deriving yojson_of]
(** datasources__kubernetes *)

type datasources__malware_protection__scan_ec2_instance_with_findings__ebs_volumes = {
  auto_enable : bool prop;  (** auto_enable *)
}
[@@deriving yojson_of]
(** datasources__malware_protection__scan_ec2_instance_with_findings__ebs_volumes *)

type datasources__malware_protection__scan_ec2_instance_with_findings = {
  ebs_volumes :
    datasources__malware_protection__scan_ec2_instance_with_findings__ebs_volumes
    list;
}
[@@deriving yojson_of]
(** datasources__malware_protection__scan_ec2_instance_with_findings *)

type datasources__malware_protection = {
  scan_ec2_instance_with_findings :
    datasources__malware_protection__scan_ec2_instance_with_findings
    list;
}
[@@deriving yojson_of]
(** datasources__malware_protection *)

type datasources__s3_logs = {
  auto_enable : bool prop;  (** auto_enable *)
}
[@@deriving yojson_of]
(** datasources__s3_logs *)

type datasources = {
  kubernetes : datasources__kubernetes list;
  malware_protection : datasources__malware_protection list;
  s3_logs : datasources__s3_logs list;
}
[@@deriving yojson_of]
(** datasources *)

type aws_guardduty_organization_configuration = {
  auto_enable : bool prop option; [@option]  (** auto_enable *)
  auto_enable_organization_members : string prop option; [@option]
      (** auto_enable_organization_members *)
  detector_id : string prop;  (** detector_id *)
  id : string prop option; [@option]  (** id *)
  datasources : datasources list;
}
[@@deriving yojson_of]
(** aws_guardduty_organization_configuration *)

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

let datasources ~kubernetes ~malware_protection ~s3_logs () :
    datasources =
  { kubernetes; malware_protection; s3_logs }

let aws_guardduty_organization_configuration ?auto_enable
    ?auto_enable_organization_members ?id ~detector_id ~datasources
    () : aws_guardduty_organization_configuration =
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
    ~detector_id ~datasources __id =
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
           ?auto_enable_organization_members ?id ~detector_id
           ~datasources ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_enable
    ?auto_enable_organization_members ?id ~detector_id ~datasources
    __id =
  let (r : _ Tf_core.resource) =
    make ?auto_enable ?auto_enable_organization_members ?id
      ~detector_id ~datasources __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
