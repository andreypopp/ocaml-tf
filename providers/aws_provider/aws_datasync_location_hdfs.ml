(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_datasync_location_hdfs__name_node = {
  hostname : string;  (** hostname *)
  port : float;  (** port *)
}
[@@deriving yojson_of]
(** aws_datasync_location_hdfs__name_node *)

type aws_datasync_location_hdfs__qop_configuration = {
  data_transfer_protection : string option; [@option]
      (** data_transfer_protection *)
  rpc_protection : string option; [@option]  (** rpc_protection *)
}
[@@deriving yojson_of]
(** aws_datasync_location_hdfs__qop_configuration *)

type aws_datasync_location_hdfs = {
  agent_arns : string list;  (** agent_arns *)
  authentication_type : string option; [@option]
      (** authentication_type *)
  block_size : float option; [@option]  (** block_size *)
  kerberos_keytab : string option; [@option]  (** kerberos_keytab *)
  kerberos_krb5_conf : string option; [@option]
      (** kerberos_krb5_conf *)
  kerberos_principal : string option; [@option]
      (** kerberos_principal *)
  kms_key_provider_uri : string option; [@option]
      (** kms_key_provider_uri *)
  replication_factor : float option; [@option]
      (** replication_factor *)
  simple_user : string option; [@option]  (** simple_user *)
  subdirectory : string option; [@option]  (** subdirectory *)
  tags : (string * string) list option; [@option]  (** tags *)
  name_node : aws_datasync_location_hdfs__name_node list;
  qop_configuration :
    aws_datasync_location_hdfs__qop_configuration list;
}
[@@deriving yojson_of]
(** aws_datasync_location_hdfs *)

let aws_datasync_location_hdfs ?authentication_type ?block_size
    ?kerberos_keytab ?kerberos_krb5_conf ?kerberos_principal
    ?kms_key_provider_uri ?replication_factor ?simple_user
    ?subdirectory ?tags ~agent_arns ~name_node ~qop_configuration
    __resource_id =
  let __resource_type = "aws_datasync_location_hdfs" in
  let __resource =
    {
      agent_arns;
      authentication_type;
      block_size;
      kerberos_keytab;
      kerberos_krb5_conf;
      kerberos_principal;
      kms_key_provider_uri;
      replication_factor;
      simple_user;
      subdirectory;
      tags;
      name_node;
      qop_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_datasync_location_hdfs __resource);
  ()
