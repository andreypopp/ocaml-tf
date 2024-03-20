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
  auto_enable:bool prop ->
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
  auto_enable:bool prop -> unit -> datasources__s3_logs

type datasources

val datasources :
  kubernetes:datasources__kubernetes list ->
  malware_protection:datasources__malware_protection list ->
  s3_logs:datasources__s3_logs list ->
  unit ->
  datasources

type aws_guardduty_organization_configuration

val aws_guardduty_organization_configuration :
  ?auto_enable:bool prop ->
  ?auto_enable_organization_members:string prop ->
  ?id:string prop ->
  detector_id:string prop ->
  datasources:datasources list ->
  unit ->
  aws_guardduty_organization_configuration

val yojson_of_aws_guardduty_organization_configuration :
  aws_guardduty_organization_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  auto_enable : bool prop;
  auto_enable_organization_members : string prop;
  detector_id : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_enable:bool prop ->
  ?auto_enable_organization_members:string prop ->
  ?id:string prop ->
  detector_id:string prop ->
  datasources:datasources list ->
  string ->
  t

val make :
  ?auto_enable:bool prop ->
  ?auto_enable_organization_members:string prop ->
  ?id:string prop ->
  detector_id:string prop ->
  datasources:datasources list ->
  string ->
  t Tf_core.resource
