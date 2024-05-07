(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_instance_profile = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  path : string prop option; [@option]
  role : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_instance_profile) -> ()

let yojson_of_aws_iam_instance_profile =
  (function
   | {
       id = v_id;
       name = v_name;
       name_prefix = v_name_prefix;
       path = v_path;
       role = v_role;
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
         match v_role with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role", arg in
             bnd :: bnds
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
       `Assoc bnds
    : aws_iam_instance_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_instance_profile

[@@@deriving.end]

let aws_iam_instance_profile ?id ?name ?name_prefix ?path ?role ?tags
    ?tags_all () : aws_iam_instance_profile =
  { id; name; name_prefix; path; role; tags; tags_all }

type t = {
  tf_name : string;
  arn : string prop;
  create_date : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  path : string prop;
  role : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  unique_id : string prop;
}

let make ?id ?name ?name_prefix ?path ?role ?tags ?tags_all __id =
  let __type = "aws_iam_instance_profile" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       create_date = Prop.computed __type __id "create_date";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       path = Prop.computed __type __id "path";
       role = Prop.computed __type __id "role";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       unique_id = Prop.computed __type __id "unique_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_instance_profile
        (aws_iam_instance_profile ?id ?name ?name_prefix ?path ?role
           ?tags ?tags_all ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?name_prefix ?path ?role ?tags
    ?tags_all __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?name_prefix ?path ?role ?tags ?tags_all __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
