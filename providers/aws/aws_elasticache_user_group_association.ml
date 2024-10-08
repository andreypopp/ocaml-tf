(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_elasticache_user_group_association = {
  id : string prop option; [@option]
  user_group_id : string prop;
  user_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_elasticache_user_group_association) -> ()

let yojson_of_aws_elasticache_user_group_association =
  (function
   | {
       id = v_id;
       user_group_id = v_user_group_id;
       user_id = v_user_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_id in
         ("user_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_group_id in
         ("user_group_id", arg) :: bnds
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
    : aws_elasticache_user_group_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_elasticache_user_group_association

[@@@deriving.end]

let aws_elasticache_user_group_association ?id ~user_group_id
    ~user_id () : aws_elasticache_user_group_association =
  { id; user_group_id; user_id }

type t = {
  tf_name : string;
  id : string prop;
  user_group_id : string prop;
  user_id : string prop;
}

let make ?id ~user_group_id ~user_id __id =
  let __type = "aws_elasticache_user_group_association" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       user_group_id = Prop.computed __type __id "user_group_id";
       user_id = Prop.computed __type __id "user_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_elasticache_user_group_association
        (aws_elasticache_user_group_association ?id ~user_group_id
           ~user_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~user_group_id ~user_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~user_group_id ~user_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
