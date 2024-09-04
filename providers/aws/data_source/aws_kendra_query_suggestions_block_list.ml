(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type source_s3_path = { bucket : string prop; key : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : source_s3_path) -> ()

let yojson_of_source_s3_path =
  (function
   | { bucket = v_bucket; key = v_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : source_s3_path -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_s3_path

[@@@deriving.end]

type aws_kendra_query_suggestions_block_list = {
  id : string prop option; [@option]
  index_id : string prop;
  query_suggestions_block_list_id : string prop;
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_kendra_query_suggestions_block_list) -> ()

let yojson_of_aws_kendra_query_suggestions_block_list =
  (function
   | {
       id = v_id;
       index_id = v_index_id;
       query_suggestions_block_list_id =
         v_query_suggestions_block_list_id;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg =
           yojson_of_prop yojson_of_string
             v_query_suggestions_block_list_id
         in
         ("query_suggestions_block_list_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_index_id in
         ("index_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_kendra_query_suggestions_block_list ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_kendra_query_suggestions_block_list

[@@@deriving.end]

let aws_kendra_query_suggestions_block_list ?id ?tags ~index_id
    ~query_suggestions_block_list_id () :
    aws_kendra_query_suggestions_block_list =
  { id; index_id; query_suggestions_block_list_id; tags }

type t = {
  tf_name : string;
  arn : string prop;
  created_at : string prop;
  description : string prop;
  error_message : string prop;
  file_size_bytes : float prop;
  id : string prop;
  index_id : string prop;
  item_count : float prop;
  name : string prop;
  query_suggestions_block_list_id : string prop;
  role_arn : string prop;
  source_s3_path : source_s3_path list prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
  updated_at : string prop;
}

let make ?id ?tags ~index_id ~query_suggestions_block_list_id __id =
  let __type = "aws_kendra_query_suggestions_block_list" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       created_at = Prop.computed __type __id "created_at";
       description = Prop.computed __type __id "description";
       error_message = Prop.computed __type __id "error_message";
       file_size_bytes = Prop.computed __type __id "file_size_bytes";
       id = Prop.computed __type __id "id";
       index_id = Prop.computed __type __id "index_id";
       item_count = Prop.computed __type __id "item_count";
       name = Prop.computed __type __id "name";
       query_suggestions_block_list_id =
         Prop.computed __type __id "query_suggestions_block_list_id";
       role_arn = Prop.computed __type __id "role_arn";
       source_s3_path = Prop.computed __type __id "source_s3_path";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       updated_at = Prop.computed __type __id "updated_at";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_kendra_query_suggestions_block_list
        (aws_kendra_query_suggestions_block_list ?id ?tags ~index_id
           ~query_suggestions_block_list_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~index_id
    ~query_suggestions_block_list_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~index_id ~query_suggestions_block_list_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
