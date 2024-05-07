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

type aws_kendra_thesaurus = {
  id : string prop option; [@option]
  index_id : string prop;
  tags : (string * string prop) list option; [@option]
  thesaurus_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_kendra_thesaurus) -> ()

let yojson_of_aws_kendra_thesaurus =
  (function
   | {
       id = v_id;
       index_id = v_index_id;
       tags = v_tags;
       thesaurus_id = v_thesaurus_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_thesaurus_id in
         ("thesaurus_id", arg) :: bnds
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
    : aws_kendra_thesaurus -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_kendra_thesaurus

[@@@deriving.end]

let aws_kendra_thesaurus ?id ?tags ~index_id ~thesaurus_id () :
    aws_kendra_thesaurus =
  { id; index_id; tags; thesaurus_id }

type t = {
  tf_name : string;
  arn : string prop;
  created_at : string prop;
  description : string prop;
  error_message : string prop;
  file_size_bytes : float prop;
  id : string prop;
  index_id : string prop;
  name : string prop;
  role_arn : string prop;
  source_s3_path : source_s3_path list prop;
  status : string prop;
  synonym_rule_count : float prop;
  tags : (string * string) list prop;
  term_count : float prop;
  thesaurus_id : string prop;
  updated_at : string prop;
}

let make ?id ?tags ~index_id ~thesaurus_id __id =
  let __type = "aws_kendra_thesaurus" in
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
       name = Prop.computed __type __id "name";
       role_arn = Prop.computed __type __id "role_arn";
       source_s3_path = Prop.computed __type __id "source_s3_path";
       status = Prop.computed __type __id "status";
       synonym_rule_count =
         Prop.computed __type __id "synonym_rule_count";
       tags = Prop.computed __type __id "tags";
       term_count = Prop.computed __type __id "term_count";
       thesaurus_id = Prop.computed __type __id "thesaurus_id";
       updated_at = Prop.computed __type __id "updated_at";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_kendra_thesaurus
        (aws_kendra_thesaurus ?id ?tags ~index_id ~thesaurus_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~index_id ~thesaurus_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~index_id ~thesaurus_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
