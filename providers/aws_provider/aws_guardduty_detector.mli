(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_guardduty_detector__datasources__kubernetes__audit_logs
type aws_guardduty_detector__datasources__kubernetes

type aws_guardduty_detector__datasources__malware_protection__scan_ec2_instance_with_findings__ebs_volumes

type aws_guardduty_detector__datasources__malware_protection__scan_ec2_instance_with_findings

type aws_guardduty_detector__datasources__malware_protection
type aws_guardduty_detector__datasources__s3_logs
type aws_guardduty_detector__datasources
type aws_guardduty_detector

val aws_guardduty_detector :
  ?enable:bool ->
  ?finding_publishing_frequency:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  datasources:aws_guardduty_detector__datasources list ->
  string ->
  unit
