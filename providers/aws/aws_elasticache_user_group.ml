(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_elasticache_user_group = {
  engine : string prop;  (** engine *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  user_group_id : string prop;  (** user_group_id *)
  user_ids : string prop list option; [@option]  (** user_ids *)
}
[@@deriving yojson_of]
(** aws_elasticache_user_group *)

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
