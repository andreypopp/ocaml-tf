(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_guardduty_detector__datasources__kubernetes__audit_logs = {
  enable : bool;  (** enable *)
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
  enable : bool;  (** enable *)
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
  enable : bool;  (** enable *)
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
  enable : bool option; [@option]  (** enable *)
  tags : (string * string) list option; [@option]  (** tags *)
  datasources : aws_guardduty_detector__datasources list;
}
[@@deriving yojson_of]
(** aws_guardduty_detector *)

let aws_guardduty_detector ?enable ?tags ~datasources __resource_id =
  let __resource_type = "aws_guardduty_detector" in
  let __resource = { enable; tags; datasources } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_guardduty_detector __resource);
  ()
