(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_server_certificate = {
  certificate_body : string prop;
  certificate_chain : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  path : string prop option; [@option]
  private_key : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_server_certificate) -> ()

let yojson_of_aws_iam_server_certificate =
  (function
   | {
       certificate_body = v_certificate_body;
       certificate_chain = v_certificate_chain;
       id = v_id;
       name = v_name;
       name_prefix = v_name_prefix;
       path = v_path;
       private_key = v_private_key;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_private_key in
         ("private_key", arg) :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
         match v_certificate_chain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_chain", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_body
         in
         ("certificate_body", arg) :: bnds
       in
       `Assoc bnds
    : aws_iam_server_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_server_certificate

[@@@deriving.end]

let aws_iam_server_certificate ?certificate_chain ?id ?name
    ?name_prefix ?path ?tags ?tags_all ~certificate_body ~private_key
    () : aws_iam_server_certificate =
  {
    certificate_body;
    certificate_chain;
    id;
    name;
    name_prefix;
    path;
    private_key;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  certificate_body : string prop;
  certificate_chain : string prop;
  expiration : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  path : string prop;
  private_key : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  upload_date : string prop;
}

let make ?certificate_chain ?id ?name ?name_prefix ?path ?tags
    ?tags_all ~certificate_body ~private_key __id =
  let __type = "aws_iam_server_certificate" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       certificate_body =
         Prop.computed __type __id "certificate_body";
       certificate_chain =
         Prop.computed __type __id "certificate_chain";
       expiration = Prop.computed __type __id "expiration";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       path = Prop.computed __type __id "path";
       private_key = Prop.computed __type __id "private_key";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       upload_date = Prop.computed __type __id "upload_date";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_server_certificate
        (aws_iam_server_certificate ?certificate_chain ?id ?name
           ?name_prefix ?path ?tags ?tags_all ~certificate_body
           ~private_key ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_chain ?id ?name ?name_prefix
    ?path ?tags ?tags_all ~certificate_body ~private_key __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_chain ?id ?name ?name_prefix ?path ?tags
      ?tags_all ~certificate_body ~private_key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
