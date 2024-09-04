(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type name_node

val name_node :
  hostname:string prop -> port:float prop -> unit -> name_node

type qop_configuration

val qop_configuration :
  ?data_transfer_protection:string prop ->
  ?rpc_protection:string prop ->
  unit ->
  qop_configuration

type aws_datasync_location_hdfs

val aws_datasync_location_hdfs :
  ?authentication_type:string prop ->
  ?block_size:float prop ->
  ?id:string prop ->
  ?kerberos_keytab:string prop ->
  ?kerberos_keytab_base64:string prop ->
  ?kerberos_krb5_conf:string prop ->
  ?kerberos_krb5_conf_base64:string prop ->
  ?kerberos_principal:string prop ->
  ?kms_key_provider_uri:string prop ->
  ?replication_factor:float prop ->
  ?simple_user:string prop ->
  ?subdirectory:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?qop_configuration:qop_configuration list ->
  agent_arns:string prop list ->
  name_node:name_node list ->
  unit ->
  aws_datasync_location_hdfs

val yojson_of_aws_datasync_location_hdfs :
  aws_datasync_location_hdfs -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  agent_arns : string list prop;
  arn : string prop;
  authentication_type : string prop;
  block_size : float prop;
  id : string prop;
  kerberos_keytab : string prop;
  kerberos_keytab_base64 : string prop;
  kerberos_krb5_conf : string prop;
  kerberos_krb5_conf_base64 : string prop;
  kerberos_principal : string prop;
  kms_key_provider_uri : string prop;
  replication_factor : float prop;
  simple_user : string prop;
  subdirectory : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  uri : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?authentication_type:string prop ->
  ?block_size:float prop ->
  ?id:string prop ->
  ?kerberos_keytab:string prop ->
  ?kerberos_keytab_base64:string prop ->
  ?kerberos_krb5_conf:string prop ->
  ?kerberos_krb5_conf_base64:string prop ->
  ?kerberos_principal:string prop ->
  ?kms_key_provider_uri:string prop ->
  ?replication_factor:float prop ->
  ?simple_user:string prop ->
  ?subdirectory:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?qop_configuration:qop_configuration list ->
  agent_arns:string prop list ->
  name_node:name_node list ->
  string ->
  t

val make :
  ?authentication_type:string prop ->
  ?block_size:float prop ->
  ?id:string prop ->
  ?kerberos_keytab:string prop ->
  ?kerberos_keytab_base64:string prop ->
  ?kerberos_krb5_conf:string prop ->
  ?kerberos_krb5_conf_base64:string prop ->
  ?kerberos_principal:string prop ->
  ?kms_key_provider_uri:string prop ->
  ?replication_factor:float prop ->
  ?simple_user:string prop ->
  ?subdirectory:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?qop_configuration:qop_configuration list ->
  agent_arns:string prop list ->
  name_node:name_node list ->
  string ->
  t Tf_core.resource
