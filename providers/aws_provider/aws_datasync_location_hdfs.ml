(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_datasync_location_hdfs__name_node = {
  hostname : string prop;  (** hostname *)
  port : float prop;  (** port *)
}
[@@deriving yojson_of]
(** aws_datasync_location_hdfs__name_node *)

type aws_datasync_location_hdfs__qop_configuration = {
  data_transfer_protection : string prop option; [@option]
      (** data_transfer_protection *)
  rpc_protection : string prop option; [@option]
      (** rpc_protection *)
}
[@@deriving yojson_of]
(** aws_datasync_location_hdfs__qop_configuration *)

type aws_datasync_location_hdfs = {
  agent_arns : string prop list;  (** agent_arns *)
  authentication_type : string prop option; [@option]
      (** authentication_type *)
  block_size : float prop option; [@option]  (** block_size *)
  id : string prop option; [@option]  (** id *)
  kerberos_keytab : string prop option; [@option]
      (** kerberos_keytab *)
  kerberos_krb5_conf : string prop option; [@option]
      (** kerberos_krb5_conf *)
  kerberos_principal : string prop option; [@option]
      (** kerberos_principal *)
  kms_key_provider_uri : string prop option; [@option]
      (** kms_key_provider_uri *)
  replication_factor : float prop option; [@option]
      (** replication_factor *)
  simple_user : string prop option; [@option]  (** simple_user *)
  subdirectory : string prop option; [@option]  (** subdirectory *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  name_node : aws_datasync_location_hdfs__name_node list;
  qop_configuration :
    aws_datasync_location_hdfs__qop_configuration list;
}
[@@deriving yojson_of]
(** aws_datasync_location_hdfs *)

type t = {
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

let aws_datasync_location_hdfs ?authentication_type ?block_size ?id
    ?kerberos_keytab ?kerberos_krb5_conf ?kerberos_principal
    ?kms_key_provider_uri ?replication_factor ?simple_user
    ?subdirectory ?tags ?tags_all ~agent_arns ~name_node
    ~qop_configuration __resource_id =
  let __resource_type = "aws_datasync_location_hdfs" in
  let __resource =
    ({
       agent_arns;
       authentication_type;
       block_size;
       id;
       kerberos_keytab;
       kerberos_krb5_conf;
       kerberos_principal;
       kms_key_provider_uri;
       replication_factor;
       simple_user;
       subdirectory;
       tags;
       tags_all;
       name_node;
       qop_configuration;
     }
      : aws_datasync_location_hdfs)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_datasync_location_hdfs __resource);
  let __resource_attributes =
    ({
       agent_arns =
         Prop.computed __resource_type __resource_id "agent_arns";
       arn = Prop.computed __resource_type __resource_id "arn";
       authentication_type =
         Prop.computed __resource_type __resource_id
           "authentication_type";
       block_size =
         Prop.computed __resource_type __resource_id "block_size";
       id = Prop.computed __resource_type __resource_id "id";
       kerberos_keytab =
         Prop.computed __resource_type __resource_id
           "kerberos_keytab";
       kerberos_krb5_conf =
         Prop.computed __resource_type __resource_id
           "kerberos_krb5_conf";
       kerberos_principal =
         Prop.computed __resource_type __resource_id
           "kerberos_principal";
       kms_key_provider_uri =
         Prop.computed __resource_type __resource_id
           "kms_key_provider_uri";
       replication_factor =
         Prop.computed __resource_type __resource_id
           "replication_factor";
       simple_user =
         Prop.computed __resource_type __resource_id "simple_user";
       subdirectory =
         Prop.computed __resource_type __resource_id "subdirectory";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       uri = Prop.computed __resource_type __resource_id "uri";
     }
      : t)
  in
  __resource_attributes
