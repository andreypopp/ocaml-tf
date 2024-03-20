(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type s3_path = { bucket : string prop; key : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : s3_path) -> ()

let yojson_of_s3_path =
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
    : s3_path -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_s3_path

[@@@deriving.end]

type aws_kendra_faq = {
  faq_id : string prop;
  id : string prop option; [@option]
  index_id : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_kendra_faq) -> ()

let yojson_of_aws_kendra_faq =
  (function
   | {
       faq_id = v_faq_id;
       id = v_id;
       index_id = v_index_id;
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_faq_id in
         ("faq_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_kendra_faq -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_kendra_faq

[@@@deriving.end]

let aws_kendra_faq ?id ?tags ~faq_id ~index_id () : aws_kendra_faq =
  { faq_id; id; index_id; tags }

type t = {
  arn : string prop;
  created_at : string prop;
  description : string prop;
  error_message : string prop;
  faq_id : string prop;
  file_format : string prop;
  id : string prop;
  index_id : string prop;
  language_code : string prop;
  name : string prop;
  role_arn : string prop;
  s3_path : s3_path list prop;
  status : string prop;
  tags : (string * string) list prop;
  updated_at : string prop;
}

let make ?id ?tags ~faq_id ~index_id __id =
  let __type = "aws_kendra_faq" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       created_at = Prop.computed __type __id "created_at";
       description = Prop.computed __type __id "description";
       error_message = Prop.computed __type __id "error_message";
       faq_id = Prop.computed __type __id "faq_id";
       file_format = Prop.computed __type __id "file_format";
       id = Prop.computed __type __id "id";
       index_id = Prop.computed __type __id "index_id";
       language_code = Prop.computed __type __id "language_code";
       name = Prop.computed __type __id "name";
       role_arn = Prop.computed __type __id "role_arn";
       s3_path = Prop.computed __type __id "s3_path";
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
      yojson_of_aws_kendra_faq
        (aws_kendra_faq ?id ?tags ~faq_id ~index_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~faq_id ~index_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~faq_id ~index_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
