(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_datasync_location_hdfs__name_node
type aws_datasync_location_hdfs__qop_configuration
type aws_datasync_location_hdfs

val aws_datasync_location_hdfs :
  ?authentication_type:string ->
  ?block_size:float ->
  ?id:string ->
  ?kerberos_keytab:string ->
  ?kerberos_krb5_conf:string ->
  ?kerberos_principal:string ->
  ?kms_key_provider_uri:string ->
  ?replication_factor:float ->
  ?simple_user:string ->
  ?subdirectory:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  agent_arns:string list ->
  name_node:aws_datasync_location_hdfs__name_node list ->
  qop_configuration:
    aws_datasync_location_hdfs__qop_configuration list ->
  string ->
  unit
