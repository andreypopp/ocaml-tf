(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type knowledge_base_configuration__vector_knowledge_base_configuration = {
  embedding_model_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       knowledge_base_configuration__vector_knowledge_base_configuration) ->
  ()

let yojson_of_knowledge_base_configuration__vector_knowledge_base_configuration
    =
  (function
   | { embedding_model_arn = v_embedding_model_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_embedding_model_arn
         in
         ("embedding_model_arn", arg) :: bnds
       in
       `Assoc bnds
    : knowledge_base_configuration__vector_knowledge_base_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_knowledge_base_configuration__vector_knowledge_base_configuration

[@@@deriving.end]

type knowledge_base_configuration = {
  type_ : string prop; [@key "type"]
  vector_knowledge_base_configuration :
    knowledge_base_configuration__vector_knowledge_base_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : knowledge_base_configuration) -> ()

let yojson_of_knowledge_base_configuration =
  (function
   | {
       type_ = v_type_;
       vector_knowledge_base_configuration =
         v_vector_knowledge_base_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_vector_knowledge_base_configuration
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_knowledge_base_configuration__vector_knowledge_base_configuration)
               v_vector_knowledge_base_configuration
           in
           let bnd = "vector_knowledge_base_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : knowledge_base_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_knowledge_base_configuration

[@@@deriving.end]

type storage_configuration__opensearch_serverless_configuration__field_mapping = {
  metadata_field : string prop option; [@option]
  text_field : string prop option; [@option]
  vector_field : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       storage_configuration__opensearch_serverless_configuration__field_mapping) ->
  ()

let yojson_of_storage_configuration__opensearch_serverless_configuration__field_mapping
    =
  (function
   | {
       metadata_field = v_metadata_field;
       text_field = v_text_field;
       vector_field = v_vector_field;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vector_field with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vector_field", arg in
             bnd :: bnds
       in
       let bnds =
         match v_text_field with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "text_field", arg in
             bnd :: bnds
       in
       let bnds =
         match v_metadata_field with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metadata_field", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : storage_configuration__opensearch_serverless_configuration__field_mapping ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_storage_configuration__opensearch_serverless_configuration__field_mapping

[@@@deriving.end]

type storage_configuration__opensearch_serverless_configuration = {
  collection_arn : string prop;
  vector_index_name : string prop;
  field_mapping :
    storage_configuration__opensearch_serverless_configuration__field_mapping
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : storage_configuration__opensearch_serverless_configuration) ->
  ()

let yojson_of_storage_configuration__opensearch_serverless_configuration
    =
  (function
   | {
       collection_arn = v_collection_arn;
       vector_index_name = v_vector_index_name;
       field_mapping = v_field_mapping;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_field_mapping then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_storage_configuration__opensearch_serverless_configuration__field_mapping)
               v_field_mapping
           in
           let bnd = "field_mapping", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_vector_index_name
         in
         ("vector_index_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_collection_arn
         in
         ("collection_arn", arg) :: bnds
       in
       `Assoc bnds
    : storage_configuration__opensearch_serverless_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_storage_configuration__opensearch_serverless_configuration

[@@@deriving.end]

type storage_configuration__pinecone_configuration__field_mapping = {
  metadata_field : string prop option; [@option]
  text_field : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       storage_configuration__pinecone_configuration__field_mapping) ->
  ()

let yojson_of_storage_configuration__pinecone_configuration__field_mapping
    =
  (function
   | { metadata_field = v_metadata_field; text_field = v_text_field }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_text_field with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "text_field", arg in
             bnd :: bnds
       in
       let bnds =
         match v_metadata_field with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metadata_field", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : storage_configuration__pinecone_configuration__field_mapping ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_storage_configuration__pinecone_configuration__field_mapping

[@@@deriving.end]

type storage_configuration__pinecone_configuration = {
  connection_string : string prop;
  credentials_secret_arn : string prop;
  namespace : string prop option; [@option]
  field_mapping :
    storage_configuration__pinecone_configuration__field_mapping list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_configuration__pinecone_configuration) -> ()

let yojson_of_storage_configuration__pinecone_configuration =
  (function
   | {
       connection_string = v_connection_string;
       credentials_secret_arn = v_credentials_secret_arn;
       namespace = v_namespace;
       field_mapping = v_field_mapping;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_field_mapping then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_storage_configuration__pinecone_configuration__field_mapping)
               v_field_mapping
           in
           let bnd = "field_mapping", arg in
           bnd :: bnds
       in
       let bnds =
         match v_namespace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "namespace", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_credentials_secret_arn
         in
         ("credentials_secret_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_connection_string
         in
         ("connection_string", arg) :: bnds
       in
       `Assoc bnds
    : storage_configuration__pinecone_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_configuration__pinecone_configuration

[@@@deriving.end]

type storage_configuration__rds_configuration__field_mapping = {
  metadata_field : string prop;
  primary_key_field : string prop;
  text_field : string prop;
  vector_field : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : storage_configuration__rds_configuration__field_mapping) ->
  ()

let yojson_of_storage_configuration__rds_configuration__field_mapping
    =
  (function
   | {
       metadata_field = v_metadata_field;
       primary_key_field = v_primary_key_field;
       text_field = v_text_field;
       vector_field = v_vector_field;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vector_field in
         ("vector_field", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_text_field in
         ("text_field", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_primary_key_field
         in
         ("primary_key_field", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_metadata_field
         in
         ("metadata_field", arg) :: bnds
       in
       `Assoc bnds
    : storage_configuration__rds_configuration__field_mapping ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_storage_configuration__rds_configuration__field_mapping

[@@@deriving.end]

type storage_configuration__rds_configuration = {
  credentials_secret_arn : string prop;
  database_name : string prop;
  resource_arn : string prop;
  table_name : string prop;
  field_mapping :
    storage_configuration__rds_configuration__field_mapping list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_configuration__rds_configuration) -> ()

let yojson_of_storage_configuration__rds_configuration =
  (function
   | {
       credentials_secret_arn = v_credentials_secret_arn;
       database_name = v_database_name;
       resource_arn = v_resource_arn;
       table_name = v_table_name;
       field_mapping = v_field_mapping;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_field_mapping then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_storage_configuration__rds_configuration__field_mapping)
               v_field_mapping
           in
           let bnd = "field_mapping", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table_name in
         ("table_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_arn in
         ("resource_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database_name in
         ("database_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_credentials_secret_arn
         in
         ("credentials_secret_arn", arg) :: bnds
       in
       `Assoc bnds
    : storage_configuration__rds_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_configuration__rds_configuration

[@@@deriving.end]

type storage_configuration__redis_enterprise_cloud_configuration__field_mapping = {
  metadata_field : string prop option; [@option]
  text_field : string prop option; [@option]
  vector_field : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       storage_configuration__redis_enterprise_cloud_configuration__field_mapping) ->
  ()

let yojson_of_storage_configuration__redis_enterprise_cloud_configuration__field_mapping
    =
  (function
   | {
       metadata_field = v_metadata_field;
       text_field = v_text_field;
       vector_field = v_vector_field;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vector_field with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vector_field", arg in
             bnd :: bnds
       in
       let bnds =
         match v_text_field with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "text_field", arg in
             bnd :: bnds
       in
       let bnds =
         match v_metadata_field with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metadata_field", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : storage_configuration__redis_enterprise_cloud_configuration__field_mapping ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_storage_configuration__redis_enterprise_cloud_configuration__field_mapping

[@@@deriving.end]

type storage_configuration__redis_enterprise_cloud_configuration = {
  credentials_secret_arn : string prop;
  endpoint : string prop;
  vector_index_name : string prop;
  field_mapping :
    storage_configuration__redis_enterprise_cloud_configuration__field_mapping
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       storage_configuration__redis_enterprise_cloud_configuration) ->
  ()

let yojson_of_storage_configuration__redis_enterprise_cloud_configuration
    =
  (function
   | {
       credentials_secret_arn = v_credentials_secret_arn;
       endpoint = v_endpoint;
       vector_index_name = v_vector_index_name;
       field_mapping = v_field_mapping;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_field_mapping then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_storage_configuration__redis_enterprise_cloud_configuration__field_mapping)
               v_field_mapping
           in
           let bnd = "field_mapping", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_vector_index_name
         in
         ("vector_index_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint in
         ("endpoint", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_credentials_secret_arn
         in
         ("credentials_secret_arn", arg) :: bnds
       in
       `Assoc bnds
    : storage_configuration__redis_enterprise_cloud_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_storage_configuration__redis_enterprise_cloud_configuration

[@@@deriving.end]

type storage_configuration = {
  type_ : string prop; [@key "type"]
  opensearch_serverless_configuration :
    storage_configuration__opensearch_serverless_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  pinecone_configuration :
    storage_configuration__pinecone_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  rds_configuration : storage_configuration__rds_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  redis_enterprise_cloud_configuration :
    storage_configuration__redis_enterprise_cloud_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_configuration) -> ()

let yojson_of_storage_configuration =
  (function
   | {
       type_ = v_type_;
       opensearch_serverless_configuration =
         v_opensearch_serverless_configuration;
       pinecone_configuration = v_pinecone_configuration;
       rds_configuration = v_rds_configuration;
       redis_enterprise_cloud_configuration =
         v_redis_enterprise_cloud_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_redis_enterprise_cloud_configuration
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_storage_configuration__redis_enterprise_cloud_configuration)
               v_redis_enterprise_cloud_configuration
           in
           let bnd = "redis_enterprise_cloud_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_rds_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_storage_configuration__rds_configuration)
               v_rds_configuration
           in
           let bnd = "rds_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_pinecone_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_storage_configuration__pinecone_configuration)
               v_pinecone_configuration
           in
           let bnd = "pinecone_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_opensearch_serverless_configuration
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_storage_configuration__opensearch_serverless_configuration)
               v_opensearch_serverless_configuration
           in
           let bnd = "opensearch_serverless_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : storage_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_configuration

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_bedrockagent_knowledge_base = {
  description : string prop option; [@option]
  name : string prop;
  role_arn : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  knowledge_base_configuration : knowledge_base_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  storage_configuration : storage_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_bedrockagent_knowledge_base) -> ()

let yojson_of_aws_bedrockagent_knowledge_base =
  (function
   | {
       description = v_description;
       name = v_name;
       role_arn = v_role_arn;
       tags = v_tags;
       knowledge_base_configuration = v_knowledge_base_configuration;
       storage_configuration = v_storage_configuration;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_storage_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_storage_configuration)
               v_storage_configuration
           in
           let bnd = "storage_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_knowledge_base_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_knowledge_base_configuration)
               v_knowledge_base_configuration
           in
           let bnd = "knowledge_base_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_bedrockagent_knowledge_base ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_bedrockagent_knowledge_base

[@@@deriving.end]

let knowledge_base_configuration__vector_knowledge_base_configuration
    ~embedding_model_arn () :
    knowledge_base_configuration__vector_knowledge_base_configuration
    =
  { embedding_model_arn }

let knowledge_base_configuration
    ?(vector_knowledge_base_configuration = []) ~type_ () :
    knowledge_base_configuration =
  { type_; vector_knowledge_base_configuration }

let storage_configuration__opensearch_serverless_configuration__field_mapping
    ?metadata_field ?text_field ?vector_field () :
    storage_configuration__opensearch_serverless_configuration__field_mapping
    =
  { metadata_field; text_field; vector_field }

let storage_configuration__opensearch_serverless_configuration
    ?(field_mapping = []) ~collection_arn ~vector_index_name () :
    storage_configuration__opensearch_serverless_configuration =
  { collection_arn; vector_index_name; field_mapping }

let storage_configuration__pinecone_configuration__field_mapping
    ?metadata_field ?text_field () :
    storage_configuration__pinecone_configuration__field_mapping =
  { metadata_field; text_field }

let storage_configuration__pinecone_configuration ?namespace
    ?(field_mapping = []) ~connection_string ~credentials_secret_arn
    () : storage_configuration__pinecone_configuration =
  {
    connection_string;
    credentials_secret_arn;
    namespace;
    field_mapping;
  }

let storage_configuration__rds_configuration__field_mapping
    ~metadata_field ~primary_key_field ~text_field ~vector_field () :
    storage_configuration__rds_configuration__field_mapping =
  { metadata_field; primary_key_field; text_field; vector_field }

let storage_configuration__rds_configuration ?(field_mapping = [])
    ~credentials_secret_arn ~database_name ~resource_arn ~table_name
    () : storage_configuration__rds_configuration =
  {
    credentials_secret_arn;
    database_name;
    resource_arn;
    table_name;
    field_mapping;
  }

let storage_configuration__redis_enterprise_cloud_configuration__field_mapping
    ?metadata_field ?text_field ?vector_field () :
    storage_configuration__redis_enterprise_cloud_configuration__field_mapping
    =
  { metadata_field; text_field; vector_field }

let storage_configuration__redis_enterprise_cloud_configuration
    ?(field_mapping = []) ~credentials_secret_arn ~endpoint
    ~vector_index_name () :
    storage_configuration__redis_enterprise_cloud_configuration =
  {
    credentials_secret_arn;
    endpoint;
    vector_index_name;
    field_mapping;
  }

let storage_configuration ?(opensearch_serverless_configuration = [])
    ?(pinecone_configuration = []) ?(rds_configuration = [])
    ?(redis_enterprise_cloud_configuration = []) ~type_ () :
    storage_configuration =
  {
    type_;
    opensearch_serverless_configuration;
    pinecone_configuration;
    rds_configuration;
    redis_enterprise_cloud_configuration;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_bedrockagent_knowledge_base ?description ?tags
    ?(knowledge_base_configuration = [])
    ?(storage_configuration = []) ?timeouts ~name ~role_arn () :
    aws_bedrockagent_knowledge_base =
  {
    description;
    name;
    role_arn;
    tags;
    knowledge_base_configuration;
    storage_configuration;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  created_at : string prop;
  description : string prop;
  failure_reasons : string list prop;
  id : string prop;
  name : string prop;
  role_arn : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  updated_at : string prop;
}

let make ?description ?tags ?(knowledge_base_configuration = [])
    ?(storage_configuration = []) ?timeouts ~name ~role_arn __id =
  let __type = "aws_bedrockagent_knowledge_base" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       created_at = Prop.computed __type __id "created_at";
       description = Prop.computed __type __id "description";
       failure_reasons = Prop.computed __type __id "failure_reasons";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       role_arn = Prop.computed __type __id "role_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       updated_at = Prop.computed __type __id "updated_at";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_bedrockagent_knowledge_base
        (aws_bedrockagent_knowledge_base ?description ?tags
           ~knowledge_base_configuration ~storage_configuration
           ?timeouts ~name ~role_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?tags
    ?(knowledge_base_configuration = [])
    ?(storage_configuration = []) ?timeouts ~name ~role_arn __id =
  let (r : _ Tf_core.resource) =
    make ?description ?tags ~knowledge_base_configuration
      ~storage_configuration ?timeouts ~name ~role_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
