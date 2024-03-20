(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type parameter = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** parameter *)

type aws_elasticache_parameter_group = {
  description : string prop option; [@option]  (** description *)
  family : string prop;  (** family *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  parameter : parameter list;
}
[@@deriving yojson_of]
(** aws_elasticache_parameter_group *)

let parameter ~name ~value () : parameter = { name; value }

let aws_elasticache_parameter_group ?description ?id ?tags ?tags_all
    ~family ~name ~parameter () : aws_elasticache_parameter_group =
  { description; family; id; name; tags; tags_all; parameter }

type t = {
  arn : string prop;
  description : string prop;
  family : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all ~family ~name ~parameter
    __id =
  let __type = "aws_elasticache_parameter_group" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       family = Prop.computed __type __id "family";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_elasticache_parameter_group
        (aws_elasticache_parameter_group ?description ?id ?tags
           ?tags_all ~family ~name ~parameter ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ~family
    ~name ~parameter __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~family ~name ~parameter
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
