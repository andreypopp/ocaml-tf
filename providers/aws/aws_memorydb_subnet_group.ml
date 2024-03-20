(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_memorydb_subnet_group = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  subnet_ids : string prop list;  (** subnet_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_memorydb_subnet_group *)

let aws_memorydb_subnet_group ?description ?id ?name ?name_prefix
    ?tags ?tags_all ~subnet_ids () : aws_memorydb_subnet_group =
  { description; id; name; name_prefix; subnet_ids; tags; tags_all }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

let make ?description ?id ?name ?name_prefix ?tags ?tags_all
    ~subnet_ids __id =
  let __type = "aws_memorydb_subnet_group" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_memorydb_subnet_group
        (aws_memorydb_subnet_group ?description ?id ?name
           ?name_prefix ?tags ?tags_all ~subnet_ids ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?name ?name_prefix ?tags
    ?tags_all ~subnet_ids __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?name ?name_prefix ?tags ?tags_all
      ~subnet_ids __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
