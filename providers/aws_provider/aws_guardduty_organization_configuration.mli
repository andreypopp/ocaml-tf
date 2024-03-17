(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_guardduty_organization_configuration__datasources__kubernetes__audit_logs

type aws_guardduty_organization_configuration__datasources__kubernetes

type aws_guardduty_organization_configuration__datasources__malware_protection__scan_ec2_instance_with_findings__ebs_volumes

type aws_guardduty_organization_configuration__datasources__malware_protection__scan_ec2_instance_with_findings

type aws_guardduty_organization_configuration__datasources__malware_protection

type aws_guardduty_organization_configuration__datasources__s3_logs
type aws_guardduty_organization_configuration__datasources
type aws_guardduty_organization_configuration

val aws_guardduty_organization_configuration :
  ?auto_enable:bool ->
  ?auto_enable_organization_members:string ->
  ?id:string ->
  detector_id:string ->
  datasources:
    aws_guardduty_organization_configuration__datasources list ->
  string ->
  unit
