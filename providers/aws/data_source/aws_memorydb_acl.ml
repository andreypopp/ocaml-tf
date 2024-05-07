(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_memorydb_acl = {
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_memorydb_acl) -> ()

let yojson_of_aws_memorydb_acl =
  (function
   | { id = v_id; name = v_name; tags = v_tags } ->
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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

let aws_memorydb_acl ?id ?tags ~name () : aws_memorydb_acl =
  { id; name; tags }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  minimum_engine_version : string prop;
  name : string prop;
  tags : (string * string) list prop;
  user_names : string list prop;
}

let make ?id ?tags ~name __id =
  let __type = "aws_memorydb_acl" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       minimum_engine_version =
         Prop.computed __type __id "minimum_engine_version";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       user_names = Prop.computed __type __id "user_names";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_memorydb_acl
        (aws_memorydb_acl ?id ?tags ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
