(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_elasticache_user_group_association = {
  id : string prop option; [@option]  (** id *)
  user_group_id : string prop;  (** user_group_id *)
  user_id : string prop;  (** user_id *)
}
[@@deriving yojson_of]
(** aws_elasticache_user_group_association *)

let aws_elasticache_user_group_association ?id ~user_group_id
    ~user_id () : aws_elasticache_user_group_association =
  { id; user_group_id; user_id }

type t = {
  id : string prop;
  user_group_id : string prop;
  user_id : string prop;
}

let make ?id ~user_group_id ~user_id __id =
  let __type = "aws_elasticache_user_group_association" in
  let __attrs =
    ({
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
