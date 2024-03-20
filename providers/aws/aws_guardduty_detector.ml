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
  enable : bool prop;  (** enable *)
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

type datasources__s3_logs = { enable : bool prop  (** enable *) }
[@@deriving yojson_of]
(** datasources__s3_logs *)

type datasources = {
  kubernetes : datasources__kubernetes list;
  malware_protection : datasources__malware_protection list;
  s3_logs : datasources__s3_logs list;
}
[@@deriving yojson_of]
(** datasources *)

type aws_guardduty_detector = {
  enable : bool prop option; [@option]  (** enable *)
  finding_publishing_frequency : string prop option; [@option]
      (** finding_publishing_frequency *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  datasources : datasources list;
}
[@@deriving yojson_of]
(** aws_guardduty_detector *)

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

let datasources ~kubernetes ~malware_protection ~s3_logs () :
    datasources =
  { kubernetes; malware_protection; s3_logs }

let aws_guardduty_detector ?enable ?finding_publishing_frequency ?id
    ?tags ?tags_all ~datasources () : aws_guardduty_detector =
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
    ~datasources __id =
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
    ?tags ?tags_all ~datasources __id =
  let (r : _ Tf_core.resource) =
    make ?enable ?finding_publishing_frequency ?id ?tags ?tags_all
      ~datasources __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
