(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_memorydb_acl = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  user_names : string prop list option; [@option]  (** user_names *)
}
[@@deriving yojson_of]
(** aws_memorydb_acl *)

let aws_memorydb_acl ?id ?name ?name_prefix ?tags ?tags_all
    ?user_names () : aws_memorydb_acl =
  { id; name; name_prefix; tags; tags_all; user_names }

type t = {
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
