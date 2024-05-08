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

type aws_kendra_faq = {
  description : string prop option; [@option]
  file_format : string prop option; [@option]
  id : string prop option; [@option]
  index_id : string prop;
  language_code : string prop option; [@option]
  name : string prop;
  role_arn : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  s3_path : s3_path list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_kendra_faq) -> ()

let yojson_of_aws_kendra_faq =
  (function
   | {
       description = v_description;
       file_format = v_file_format;
       id = v_id;
       index_id = v_index_id;
       language_code = v_language_code;
       name = v_name;
       role_arn = v_role_arn;
       tags = v_tags;
       tags_all = v_tags_all;
       s3_path = v_s3_path;
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
         if Stdlib.( = ) [] v_s3_path then bnds
         else
           let arg = (yojson_of_list yojson_of_s3_path) v_s3_path in
           let bnd = "s3_path", arg in
           bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_language_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "language_code", arg in
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
         match v_file_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_format", arg in
             bnd :: bnds
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
    : aws_kendra_faq -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_kendra_faq

[@@@deriving.end]

let s3_path ~bucket ~key () : s3_path = { bucket; key }
let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_kendra_faq ?description ?file_format ?id ?language_code ?tags
    ?tags_all ?timeouts ~index_id ~name ~role_arn ~s3_path () :
    aws_kendra_faq =
  {
    description;
    file_format;
    id;
    index_id;
    language_code;
    name;
    role_arn;
    tags;
    tags_all;
    s3_path;
    timeouts;
  }

type t = {
  tf_name : string;
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
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  updated_at : string prop;
}

let make ?description ?file_format ?id ?language_code ?tags ?tags_all
    ?timeouts ~index_id ~name ~role_arn ~s3_path __id =
  let __type = "aws_kendra_faq" in
  let __attrs =
    ({
       tf_name = __id;
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
       status = Prop.computed __type __id "status";
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
      yojson_of_aws_kendra_faq
        (aws_kendra_faq ?description ?file_format ?id ?language_code
           ?tags ?tags_all ?timeouts ~index_id ~name ~role_arn
           ~s3_path ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?file_format ?id ?language_code
    ?tags ?tags_all ?timeouts ~index_id ~name ~role_arn ~s3_path __id
    =
  let (r : _ Tf_core.resource) =
    make ?description ?file_format ?id ?language_code ?tags ?tags_all
      ?timeouts ~index_id ~name ~role_arn ~s3_path __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
