(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_timestreamwrite_database = {
  database_name : string prop;
  id : string prop option; [@option]
  kms_key_id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_timestreamwrite_database) -> ()

let yojson_of_aws_timestreamwrite_database =
  (function
   | {
       database_name = v_database_name;
       id = v_id;
       kms_key_id = v_kms_key_id;
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
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
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
         let arg = yojson_of_prop yojson_of_string v_database_name in
         ("database_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_timestreamwrite_database ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_timestreamwrite_database

[@@@deriving.end]

let aws_timestreamwrite_database ?id ?kms_key_id ?tags ?tags_all
    ~database_name () : aws_timestreamwrite_database =
  { database_name; id; kms_key_id; tags; tags_all }

type t = {
  tf_name : string;
  arn : string prop;
  database_name : string prop;
  id : string prop;
  kms_key_id : string prop;
  table_count : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?kms_key_id ?tags ?tags_all ~database_name __id =
  let __type = "aws_timestreamwrite_database" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       database_name = Prop.computed __type __id "database_name";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       table_count = Prop.computed __type __id "table_count";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_timestreamwrite_database
        (aws_timestreamwrite_database ?id ?kms_key_id ?tags ?tags_all
           ~database_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?kms_key_id ?tags ?tags_all
    ~database_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?kms_key_id ?tags ?tags_all ~database_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
