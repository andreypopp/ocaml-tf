(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_datasync_location_hdfs__name_node
type aws_datasync_location_hdfs__qop_configuration
type aws_datasync_location_hdfs

type t = private {
  agent_arns : string list prop;
  arn : string prop;
  authentication_type : string prop;
  block_size : float prop;
  id : string prop;
  kerberos_keytab : string prop;
  kerberos_krb5_conf : string prop;
  kerberos_principal : string prop;
  kms_key_provider_uri : string prop;
  replication_factor : float prop;
  simple_user : string prop;
  subdirectory : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  uri : string prop;
}

val aws_datasync_location_hdfs :
  ?authentication_type:string prop ->
  ?block_size:float prop ->
  ?id:string prop ->
  ?kerberos_keytab:string prop ->
  ?kerberos_krb5_conf:string prop ->
  ?kerberos_principal:string prop ->
  ?kms_key_provider_uri:string prop ->
  ?replication_factor:float prop ->
  ?simple_user:string prop ->
  ?subdirectory:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  agent_arns:string prop list ->
  name_node:aws_datasync_location_hdfs__name_node list ->
  qop_configuration:
    aws_datasync_location_hdfs__qop_configuration list ->
  string ->
  t
