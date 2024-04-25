(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type name_node = { hostname : string prop; port : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : name_node) -> ()

let yojson_of_name_node =
  (function
   | { hostname = v_hostname; port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_hostname in
         ("hostname", arg) :: bnds
       in
       `Assoc bnds
    : name_node -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_name_node

[@@@deriving.end]

type qop_configuration = {
  data_transfer_protection : string prop option; [@option]
  rpc_protection : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : qop_configuration) -> ()

let yojson_of_qop_configuration =
  (function
   | {
       data_transfer_protection = v_data_transfer_protection;
       rpc_protection = v_rpc_protection;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_rpc_protection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rpc_protection", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_transfer_protection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_transfer_protection", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : qop_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_qop_configuration

[@@@deriving.end]

type aws_datasync_location_hdfs = {
  agent_arns : string prop list;
  authentication_type : string prop option; [@option]
  block_size : float prop option; [@option]
  id : string prop option; [@option]
  kerberos_keytab : string prop option; [@option]
  kerberos_krb5_conf : string prop option; [@option]
  kerberos_principal : string prop option; [@option]
  kms_key_provider_uri : string prop option; [@option]
  replication_factor : float prop option; [@option]
  simple_user : string prop option; [@option]
  subdirectory : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  name_node : name_node list;
  qop_configuration : qop_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_datasync_location_hdfs) -> ()

let yojson_of_aws_datasync_location_hdfs =
  (function
   | {
       agent_arns = v_agent_arns;
       authentication_type = v_authentication_type;
       block_size = v_block_size;
       id = v_id;
       kerberos_keytab = v_kerberos_keytab;
       kerberos_krb5_conf = v_kerberos_krb5_conf;
       kerberos_principal = v_kerberos_principal;
       kms_key_provider_uri = v_kms_key_provider_uri;
       replication_factor = v_replication_factor;
       simple_user = v_simple_user;
       subdirectory = v_subdirectory;
       tags = v_tags;
       tags_all = v_tags_all;
       name_node = v_name_node;
       qop_configuration = v_qop_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_qop_configuration
             v_qop_configuration
         in
         ("qop_configuration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_name_node v_name_node in
         ("name_node", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subdirectory with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subdirectory", arg in
             bnd :: bnds
       in
       let bnds =
         match v_simple_user with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "simple_user", arg in
             bnd :: bnds
       in
       let bnds =
         match v_replication_factor with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "replication_factor", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_provider_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_provider_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kerberos_principal with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kerberos_principal", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kerberos_krb5_conf with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kerberos_krb5_conf", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kerberos_keytab with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kerberos_keytab", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_block_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "block_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_authentication_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authentication_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_agent_arns
         in
         ("agent_arns", arg) :: bnds
       in
       `Assoc bnds
    : aws_datasync_location_hdfs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_datasync_location_hdfs

[@@@deriving.end]

let name_node ~hostname ~port () : name_node = { hostname; port }

let qop_configuration ?data_transfer_protection ?rpc_protection () :
    qop_configuration =
  { data_transfer_protection; rpc_protection }

let aws_datasync_location_hdfs ?authentication_type ?block_size ?id
    ?kerberos_keytab ?kerberos_krb5_conf ?kerberos_principal
    ?kms_key_provider_uri ?replication_factor ?simple_user
    ?subdirectory ?tags ?tags_all ?(qop_configuration = [])
    ~agent_arns ~name_node () : aws_datasync_location_hdfs =
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
    ?(qop_configuration = []) ~agent_arns ~name_node __id =
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
           ?tags_all ~qop_configuration ~agent_arns ~name_node ());
    attrs = __attrs;
  }

let register ?tf_module ?authentication_type ?block_size ?id
    ?kerberos_keytab ?kerberos_krb5_conf ?kerberos_principal
    ?kms_key_provider_uri ?replication_factor ?simple_user
    ?subdirectory ?tags ?tags_all ?(qop_configuration = [])
    ~agent_arns ~name_node __id =
  let (r : _ Tf_core.resource) =
    make ?authentication_type ?block_size ?id ?kerberos_keytab
      ?kerberos_krb5_conf ?kerberos_principal ?kms_key_provider_uri
      ?replication_factor ?simple_user ?subdirectory ?tags ?tags_all
      ~qop_configuration ~agent_arns ~name_node __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
