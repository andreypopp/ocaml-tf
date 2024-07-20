(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type data_source_configuration__s3_configuration = {
  bucket_arn : string prop;
  bucket_owner_account_id : string prop option; [@option]
  inclusion_prefixes : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_source_configuration__s3_configuration) -> ()

let yojson_of_data_source_configuration__s3_configuration =
  (function
   | {
       bucket_arn = v_bucket_arn;
       bucket_owner_account_id = v_bucket_owner_account_id;
       inclusion_prefixes = v_inclusion_prefixes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_inclusion_prefixes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "inclusion_prefixes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_owner_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_owner_account_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_arn in
         ("bucket_arn", arg) :: bnds
       in
       `Assoc bnds
    : data_source_configuration__s3_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_source_configuration__s3_configuration

[@@@deriving.end]

type data_source_configuration = {
  type_ : string prop; [@key "type"]
  s3_configuration : data_source_configuration__s3_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : data_source_configuration) -> ()

let yojson_of_data_source_configuration =
  (function
   | { type_ = v_type_; s3_configuration = v_s3_configuration } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_s3_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_data_source_configuration__s3_configuration)
               v_s3_configuration
           in
           let bnd = "s3_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : data_source_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_data_source_configuration

[@@@deriving.end]

type server_side_encryption_configuration = {
  kms_key_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : server_side_encryption_configuration) -> ()

let yojson_of_server_side_encryption_configuration =
  (function
   | { kms_key_arn = v_kms_key_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : server_side_encryption_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_server_side_encryption_configuration

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type vector_ingestion_configuration__chunking_configuration__fixed_size_chunking_configuration = {
  max_tokens : float prop;
  overlap_percentage : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       vector_ingestion_configuration__chunking_configuration__fixed_size_chunking_configuration) ->
  ()

let yojson_of_vector_ingestion_configuration__chunking_configuration__fixed_size_chunking_configuration
    =
  (function
   | {
       max_tokens = v_max_tokens;
       overlap_percentage = v_overlap_percentage;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_overlap_percentage
         in
         ("overlap_percentage", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_tokens in
         ("max_tokens", arg) :: bnds
       in
       `Assoc bnds
    : vector_ingestion_configuration__chunking_configuration__fixed_size_chunking_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_vector_ingestion_configuration__chunking_configuration__fixed_size_chunking_configuration

[@@@deriving.end]

type vector_ingestion_configuration__chunking_configuration = {
  chunking_strategy : string prop;
  fixed_size_chunking_configuration :
    vector_ingestion_configuration__chunking_configuration__fixed_size_chunking_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : vector_ingestion_configuration__chunking_configuration) ->
  ()

let yojson_of_vector_ingestion_configuration__chunking_configuration
    =
  (function
   | {
       chunking_strategy = v_chunking_strategy;
       fixed_size_chunking_configuration =
         v_fixed_size_chunking_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_fixed_size_chunking_configuration then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_vector_ingestion_configuration__chunking_configuration__fixed_size_chunking_configuration)
               v_fixed_size_chunking_configuration
           in
           let bnd = "fixed_size_chunking_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_chunking_strategy
         in
         ("chunking_strategy", arg) :: bnds
       in
       `Assoc bnds
    : vector_ingestion_configuration__chunking_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_vector_ingestion_configuration__chunking_configuration

[@@@deriving.end]

type vector_ingestion_configuration = {
  chunking_configuration :
    vector_ingestion_configuration__chunking_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vector_ingestion_configuration) -> ()

let yojson_of_vector_ingestion_configuration =
  (function
   | { chunking_configuration = v_chunking_configuration } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_chunking_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_vector_ingestion_configuration__chunking_configuration)
               v_chunking_configuration
           in
           let bnd = "chunking_configuration", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : vector_ingestion_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vector_ingestion_configuration

[@@@deriving.end]

type aws_bedrockagent_data_source = {
  data_deletion_policy : string prop option; [@option]
  description : string prop option; [@option]
  knowledge_base_id : string prop;
  name : string prop;
  data_source_configuration : data_source_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  server_side_encryption_configuration :
    server_side_encryption_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  vector_ingestion_configuration :
    vector_ingestion_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_bedrockagent_data_source) -> ()

let yojson_of_aws_bedrockagent_data_source =
  (function
   | {
       data_deletion_policy = v_data_deletion_policy;
       description = v_description;
       knowledge_base_id = v_knowledge_base_id;
       name = v_name;
       data_source_configuration = v_data_source_configuration;
       server_side_encryption_configuration =
         v_server_side_encryption_configuration;
       timeouts = v_timeouts;
       vector_ingestion_configuration =
         v_vector_ingestion_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_vector_ingestion_configuration then
           bnds
         else
           let arg =
             (yojson_of_list yojson_of_vector_ingestion_configuration)
               v_vector_ingestion_configuration
           in
           let bnd = "vector_ingestion_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_server_side_encryption_configuration
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_server_side_encryption_configuration)
               v_server_side_encryption_configuration
           in
           let bnd = "server_side_encryption_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_data_source_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_data_source_configuration)
               v_data_source_configuration
           in
           let bnd = "data_source_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_knowledge_base_id
         in
         ("knowledge_base_id", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_deletion_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_deletion_policy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_bedrockagent_data_source ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_bedrockagent_data_source

[@@@deriving.end]

let data_source_configuration__s3_configuration
    ?bucket_owner_account_id ?inclusion_prefixes ~bucket_arn () :
    data_source_configuration__s3_configuration =
  { bucket_arn; bucket_owner_account_id; inclusion_prefixes }

let data_source_configuration ?(s3_configuration = []) ~type_ () :
    data_source_configuration =
  { type_; s3_configuration }

let server_side_encryption_configuration ?kms_key_arn () :
    server_side_encryption_configuration =
  { kms_key_arn }

let timeouts ?create ?delete () : timeouts = { create; delete }

let vector_ingestion_configuration__chunking_configuration__fixed_size_chunking_configuration
    ~max_tokens ~overlap_percentage () :
    vector_ingestion_configuration__chunking_configuration__fixed_size_chunking_configuration
    =
  { max_tokens; overlap_percentage }

let vector_ingestion_configuration__chunking_configuration
    ?(fixed_size_chunking_configuration = []) ~chunking_strategy () :
    vector_ingestion_configuration__chunking_configuration =
  { chunking_strategy; fixed_size_chunking_configuration }

let vector_ingestion_configuration ?(chunking_configuration = []) ()
    : vector_ingestion_configuration =
  { chunking_configuration }

let aws_bedrockagent_data_source ?data_deletion_policy ?description
    ?(data_source_configuration = [])
    ?(server_side_encryption_configuration = []) ?timeouts
    ?(vector_ingestion_configuration = []) ~knowledge_base_id ~name
    () : aws_bedrockagent_data_source =
  {
    data_deletion_policy;
    description;
    knowledge_base_id;
    name;
    data_source_configuration;
    server_side_encryption_configuration;
    timeouts;
    vector_ingestion_configuration;
  }

type t = {
  tf_name : string;
  data_deletion_policy : string prop;
  data_source_id : string prop;
  description : string prop;
  id : string prop;
  knowledge_base_id : string prop;
  name : string prop;
}

let make ?data_deletion_policy ?description
    ?(data_source_configuration = [])
    ?(server_side_encryption_configuration = []) ?timeouts
    ?(vector_ingestion_configuration = []) ~knowledge_base_id ~name
    __id =
  let __type = "aws_bedrockagent_data_source" in
  let __attrs =
    ({
       tf_name = __id;
       data_deletion_policy =
         Prop.computed __type __id "data_deletion_policy";
       data_source_id = Prop.computed __type __id "data_source_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       knowledge_base_id =
         Prop.computed __type __id "knowledge_base_id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_bedrockagent_data_source
        (aws_bedrockagent_data_source ?data_deletion_policy
           ?description ~data_source_configuration
           ~server_side_encryption_configuration ?timeouts
           ~vector_ingestion_configuration ~knowledge_base_id ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?data_deletion_policy ?description
    ?(data_source_configuration = [])
    ?(server_side_encryption_configuration = []) ?timeouts
    ?(vector_ingestion_configuration = []) ~knowledge_base_id ~name
    __id =
  let (r : _ Tf_core.resource) =
    make ?data_deletion_policy ?description
      ~data_source_configuration
      ~server_side_encryption_configuration ?timeouts
      ~vector_ingestion_configuration ~knowledge_base_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
