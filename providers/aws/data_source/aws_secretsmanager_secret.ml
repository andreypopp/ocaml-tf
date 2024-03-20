(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_secretsmanager_secret = {
  arn : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_secretsmanager_secret) -> ()

let yojson_of_aws_secretsmanager_secret =
  (function
   | { arn = v_arn; id = v_id; name = v_name; tags = v_tags } ->
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
         match v_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_secretsmanager_secret -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_secretsmanager_secret

[@@@deriving.end]

let aws_secretsmanager_secret ?arn ?id ?name ?tags () :
    aws_secretsmanager_secret =
  { arn; id; name; tags }

type t = {
  arn : string prop;
  created_date : string prop;
  description : string prop;
  id : string prop;
  kms_key_id : string prop;
  last_changed_date : string prop;
  name : string prop;
  policy : string prop;
  tags : (string * string) list prop;
}

let make ?arn ?id ?name ?tags __id =
  let __type = "aws_secretsmanager_secret" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       created_date = Prop.computed __type __id "created_date";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       last_changed_date =
         Prop.computed __type __id "last_changed_date";
       name = Prop.computed __type __id "name";
       policy = Prop.computed __type __id "policy";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_secretsmanager_secret
        (aws_secretsmanager_secret ?arn ?id ?name ?tags ());
    attrs = __attrs;
  }

let register ?tf_module ?arn ?id ?name ?tags __id =
  let (r : _ Tf_core.resource) = make ?arn ?id ?name ?tags __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
