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

let aws_datasync_location_hdfs ?authentication_type ?block_size ?id
    ?kerberos_keytab ?kerberos_krb5_conf ?kerberos_principal
    ?kms_key_provider_uri ?replication_factor ?simple_user
    ?subdirectory ?tags ?tags_all ~agent_arns ~name_node
    ~qop_configuration __resource_id =
  let __resource_type = "aws_datasync_location_hdfs" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_datasync_location_hdfs __resource);
  ()
