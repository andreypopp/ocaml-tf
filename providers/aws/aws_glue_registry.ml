(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_glue_registry = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  registry_name : string prop;  (** registry_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_glue_registry *)

let aws_glue_registry ?description ?id ?tags ?tags_all ~registry_name
    () : aws_glue_registry =
  { description; id; registry_name; tags; tags_all }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  registry_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all ~registry_name __id =
  let __type = "aws_glue_registry" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       registry_name = Prop.computed __type __id "registry_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_glue_registry
        (aws_glue_registry ?description ?id ?tags ?tags_all
           ~registry_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all
    ~registry_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~registry_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
