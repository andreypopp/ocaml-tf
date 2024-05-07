(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type datasources__kubernetes__audit_logs

val datasources__kubernetes__audit_logs :
  enable:bool prop -> unit -> datasources__kubernetes__audit_logs

type datasources__kubernetes

val datasources__kubernetes :
  audit_logs:datasources__kubernetes__audit_logs list ->
  unit ->
  datasources__kubernetes

type datasources__malware_protection__scan_ec2_instance_with_findings__ebs_volumes

val datasources__malware_protection__scan_ec2_instance_with_findings__ebs_volumes :
  enable:bool prop ->
  unit ->
  datasources__malware_protection__scan_ec2_instance_with_findings__ebs_volumes

type datasources__malware_protection__scan_ec2_instance_with_findings

val datasources__malware_protection__scan_ec2_instance_with_findings :
  ebs_volumes:
    datasources__malware_protection__scan_ec2_instance_with_findings__ebs_volumes
    list ->
  unit ->
  datasources__malware_protection__scan_ec2_instance_with_findings

type datasources__malware_protection

val datasources__malware_protection :
  scan_ec2_instance_with_findings:
    datasources__malware_protection__scan_ec2_instance_with_findings
    list ->
  unit ->
  datasources__malware_protection

type datasources__s3_logs

val datasources__s3_logs :
  enable:bool prop -> unit -> datasources__s3_logs

type datasources

val datasources :
  ?kubernetes:datasources__kubernetes list ->
  ?malware_protection:datasources__malware_protection list ->
  ?s3_logs:datasources__s3_logs list ->
  unit ->
  datasources

type aws_guardduty_detector

val aws_guardduty_detector :
  ?enable:bool prop ->
  ?finding_publishing_frequency:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?datasources:datasources list ->
  unit ->
  aws_guardduty_detector

val yojson_of_aws_guardduty_detector : aws_guardduty_detector -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  arn : string prop;
  enable : bool prop;
  finding_publishing_frequency : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?enable:bool prop ->
  ?finding_publishing_frequency:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?datasources:datasources list ->
  string ->
  t

val make :
  ?enable:bool prop ->
  ?finding_publishing_frequency:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?datasources:datasources list ->
  string ->
  t Tf_core.resource
