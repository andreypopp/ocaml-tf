(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_guardduty_detector__datasources__kubernetes__audit_logs = {
  enable : bool prop;  (** enable *)
}
[@@deriving yojson_of]
(** aws_guardduty_detector__datasources__kubernetes__audit_logs *)

type aws_guardduty_detector__datasources__kubernetes = {
  audit_logs :
    aws_guardduty_detector__datasources__kubernetes__audit_logs list;
}
[@@deriving yojson_of]
(** aws_guardduty_detector__datasources__kubernetes *)

type aws_guardduty_detector__datasources__malware_protection__scan_ec2_instance_with_findings__ebs_volumes = {
  enable : bool prop;  (** enable *)
}
[@@deriving yojson_of]
(** aws_guardduty_detector__datasources__malware_protection__scan_ec2_instance_with_findings__ebs_volumes *)

type aws_guardduty_detector__datasources__malware_protection__scan_ec2_instance_with_findings = {
  ebs_volumes :
    aws_guardduty_detector__datasources__malware_protection__scan_ec2_instance_with_findings__ebs_volumes
    list;
}
[@@deriving yojson_of]
(** aws_guardduty_detector__datasources__malware_protection__scan_ec2_instance_with_findings *)

type aws_guardduty_detector__datasources__malware_protection = {
  scan_ec2_instance_with_findings :
    aws_guardduty_detector__datasources__malware_protection__scan_ec2_instance_with_findings
    list;
}
[@@deriving yojson_of]
(** aws_guardduty_detector__datasources__malware_protection *)

type aws_guardduty_detector__datasources__s3_logs = {
  enable : bool prop;  (** enable *)
}
[@@deriving yojson_of]
(** aws_guardduty_detector__datasources__s3_logs *)

type aws_guardduty_detector__datasources = {
  kubernetes : aws_guardduty_detector__datasources__kubernetes list;
  malware_protection :
    aws_guardduty_detector__datasources__malware_protection list;
  s3_logs : aws_guardduty_detector__datasources__s3_logs list;
}
[@@deriving yojson_of]
(** aws_guardduty_detector__datasources *)

type aws_guardduty_detector = {
  enable : bool prop option; [@option]  (** enable *)
  finding_publishing_frequency : string prop option; [@option]
      (** finding_publishing_frequency *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  datasources : aws_guardduty_detector__datasources list;
}
[@@deriving yojson_of]
(** aws_guardduty_detector *)

type t = {
  account_id : string prop;
  arn : string prop;
  enable : bool prop;
  finding_publishing_frequency : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_guardduty_detector ?enable ?finding_publishing_frequency ?id
    ?tags ?tags_all ~datasources __resource_id =
  let __resource_type = "aws_guardduty_detector" in
  let __resource =
    ({
       enable;
       finding_publishing_frequency;
       id;
       tags;
       tags_all;
       datasources;
     }
      : aws_guardduty_detector)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_guardduty_detector __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       arn = Prop.computed __resource_type __resource_id "arn";
       enable = Prop.computed __resource_type __resource_id "enable";
       finding_publishing_frequency =
         Prop.computed __resource_type __resource_id
           "finding_publishing_frequency";
       id = Prop.computed __resource_type __resource_id "id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
