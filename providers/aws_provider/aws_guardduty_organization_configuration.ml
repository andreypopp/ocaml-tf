(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_guardduty_organization_configuration__datasources__kubernetes__audit_logs = {
  enable : bool;  (** enable *)
}
[@@deriving yojson_of]
(** aws_guardduty_organization_configuration__datasources__kubernetes__audit_logs *)

type aws_guardduty_organization_configuration__datasources__kubernetes = {
  audit_logs :
    aws_guardduty_organization_configuration__datasources__kubernetes__audit_logs
    list;
}
[@@deriving yojson_of]
(** aws_guardduty_organization_configuration__datasources__kubernetes *)

type aws_guardduty_organization_configuration__datasources__malware_protection__scan_ec2_instance_with_findings__ebs_volumes = {
  auto_enable : bool;  (** auto_enable *)
}
[@@deriving yojson_of]
(** aws_guardduty_organization_configuration__datasources__malware_protection__scan_ec2_instance_with_findings__ebs_volumes *)

type aws_guardduty_organization_configuration__datasources__malware_protection__scan_ec2_instance_with_findings = {
  ebs_volumes :
    aws_guardduty_organization_configuration__datasources__malware_protection__scan_ec2_instance_with_findings__ebs_volumes
    list;
}
[@@deriving yojson_of]
(** aws_guardduty_organization_configuration__datasources__malware_protection__scan_ec2_instance_with_findings *)

type aws_guardduty_organization_configuration__datasources__malware_protection = {
  scan_ec2_instance_with_findings :
    aws_guardduty_organization_configuration__datasources__malware_protection__scan_ec2_instance_with_findings
    list;
}
[@@deriving yojson_of]
(** aws_guardduty_organization_configuration__datasources__malware_protection *)

type aws_guardduty_organization_configuration__datasources__s3_logs = {
  auto_enable : bool;  (** auto_enable *)
}
[@@deriving yojson_of]
(** aws_guardduty_organization_configuration__datasources__s3_logs *)

type aws_guardduty_organization_configuration__datasources = {
  kubernetes :
    aws_guardduty_organization_configuration__datasources__kubernetes
    list;
  malware_protection :
    aws_guardduty_organization_configuration__datasources__malware_protection
    list;
  s3_logs :
    aws_guardduty_organization_configuration__datasources__s3_logs
    list;
}
[@@deriving yojson_of]
(** aws_guardduty_organization_configuration__datasources *)

type aws_guardduty_organization_configuration = {
  auto_enable : bool option; [@option]  (** auto_enable *)
  auto_enable_organization_members : string option; [@option]
      (** auto_enable_organization_members *)
  detector_id : string;  (** detector_id *)
  id : string option; [@option]  (** id *)
  datasources :
    aws_guardduty_organization_configuration__datasources list;
}
[@@deriving yojson_of]
(** aws_guardduty_organization_configuration *)

let aws_guardduty_organization_configuration ?auto_enable
    ?auto_enable_organization_members ?id ~detector_id ~datasources
    __resource_id =
  let __resource_type = "aws_guardduty_organization_configuration" in
  let __resource =
    {
      auto_enable;
      auto_enable_organization_members;
      detector_id;
      id;
      datasources;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_guardduty_organization_configuration __resource);
  ()
