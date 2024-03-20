(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_elasticache_user_group = {
  engine : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  user_group_id : string prop;
  user_ids : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_elasticache_user_group) -> ()

let yojson_of_aws_elasticache_user_group =
  (function
   | {
       engine = v_engine;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
       user_group_id = v_user_group_id;
       user_ids = v_user_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "user_ids", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_group_id in
         ("user_group_id", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_engine in
         ("engine", arg) :: bnds
       in
       `Assoc bnds
    : aws_elasticache_user_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_elasticache_user_group

[@@@deriving.end]

let aws_elasticache_user_group ?id ?tags ?tags_all ?user_ids ~engine
    ~user_group_id () : aws_elasticache_user_group =
  { engine; id; tags; tags_all; user_group_id; user_ids }

type t = {
  arn : string prop;
  engine : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_group_id : string prop;
  user_ids : string list prop;
}

let make ?id ?tags ?tags_all ?user_ids ~engine ~user_group_id __id =
  let __type = "aws_elasticache_user_group" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       engine = Prop.computed __type __id "engine";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       user_group_id = Prop.computed __type __id "user_group_id";
       user_ids = Prop.computed __type __id "user_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_elasticache_user_group
        (aws_elasticache_user_group ?id ?tags ?tags_all ?user_ids
           ~engine ~user_group_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?user_ids ~engine
    ~user_group_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ?user_ids ~engine ~user_group_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
