(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_memorydb_acl = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  user_names : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_memorydb_acl) -> ()

let yojson_of_aws_memorydb_acl =
  (function
   | {
       id = v_id;
       name = v_name;
       name_prefix = v_name_prefix;
       tags = v_tags;
       tags_all = v_tags_all;
       user_names = v_user_names;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "user_names", arg in
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
       `Assoc bnds
    : aws_memorydb_acl -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_memorydb_acl

[@@@deriving.end]

let aws_memorydb_acl ?id ?name ?name_prefix ?tags ?tags_all
    ?user_names () : aws_memorydb_acl =
  { id; name; name_prefix; tags; tags_all; user_names }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  minimum_engine_version : string prop;
  name : string prop;
  name_prefix : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_names : string list prop;
}

let make ?id ?name ?name_prefix ?tags ?tags_all ?user_names __id =
  let __type = "aws_memorydb_acl" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       minimum_engine_version =
         Prop.computed __type __id "minimum_engine_version";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       user_names = Prop.computed __type __id "user_names";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_memorydb_acl
        (aws_memorydb_acl ?id ?name ?name_prefix ?tags ?tags_all
           ?user_names ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?name_prefix ?tags ?tags_all
    ?user_names __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?name_prefix ?tags ?tags_all ?user_names __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
