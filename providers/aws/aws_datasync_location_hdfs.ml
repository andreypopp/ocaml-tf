(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type name_node = {
  hostname : string prop;  (** hostname *)
  port : float prop;  (** port *)
}
[@@deriving yojson_of]
(** name_node *)

type qop_configuration = {
  data_transfer_protection : string prop option; [@option]
      (** data_transfer_protection *)
  rpc_protection : string prop option; [@option]
      (** rpc_protection *)
}
[@@deriving yojson_of]
(** qop_configuration *)

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
  name_node : name_node list;
  qop_configuration : qop_configuration list;
}
[@@deriving yojson_of]
(** aws_datasync_location_hdfs *)

let name_node ~hostname ~port () : name_node = { hostname; port }

let qop_configuration ?data_transfer_protection ?rpc_protection () :
    qop_configuration =
  { data_transfer_protection; rpc_protection }

let aws_datasync_location_hdfs ?authentication_type ?block_size ?id
    ?kerberos_keytab ?kerberos_krb5_conf ?kerberos_principal
    ?kms_key_provider_uri ?replication_factor ?simple_user
    ?subdirectory ?tags ?tags_all ~agent_arns ~name_node
    ~qop_configuration () : aws_datasync_location_hdfs =
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

let make ?authentication_type ?block_size ?id ?kerberos_keytab
    ?kerberos_krb5_conf ?kerberos_principal ?kms_key_provider_uri
    ?replication_factor ?simple_user ?subdirectory ?tags ?tags_all
    ~agent_arns ~name_node ~qop_configuration __id =
  let __type = "aws_datasync_location_hdfs" in
  let __attrs =
    ({
       agent_arns = Prop.computed __type __id "agent_arns";
       arn = Prop.computed __type __id "arn";
       authentication_type =
         Prop.computed __type __id "authentication_type";
       block_size = Prop.computed __type __id "block_size";
       id = Prop.computed __type __id "id";
       kerberos_keytab = Prop.computed __type __id "kerberos_keytab";
       kerberos_krb5_conf =
         Prop.computed __type __id "kerberos_krb5_conf";
       kerberos_principal =
         Prop.computed __type __id "kerberos_principal";
       kms_key_provider_uri =
         Prop.computed __type __id "kms_key_provider_uri";
       replication_factor =
         Prop.computed __type __id "replication_factor";
       simple_user = Prop.computed __type __id "simple_user";
       subdirectory = Prop.computed __type __id "subdirectory";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       uri = Prop.computed __type __id "uri";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_datasync_location_hdfs
        (aws_datasync_location_hdfs ?authentication_type ?block_size
           ?id ?kerberos_keytab ?kerberos_krb5_conf
           ?kerberos_principal ?kms_key_provider_uri
           ?replication_factor ?simple_user ?subdirectory ?tags
           ?tags_all ~agent_arns ~name_node ~qop_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?authentication_type ?block_size ?id
    ?kerberos_keytab ?kerberos_krb5_conf ?kerberos_principal
    ?kms_key_provider_uri ?replication_factor ?simple_user
    ?subdirectory ?tags ?tags_all ~agent_arns ~name_node
    ~qop_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?authentication_type ?block_size ?id ?kerberos_keytab
      ?kerberos_krb5_conf ?kerberos_principal ?kms_key_provider_uri
      ?replication_factor ?simple_user ?subdirectory ?tags ?tags_all
      ~agent_arns ~name_node ~qop_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
