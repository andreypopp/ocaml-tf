(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_mq_configuration = {
  authentication_strategy : string prop option; [@option]
      (** authentication_strategy *)
  data : string prop;  (** data *)
  description : string prop option; [@option]  (** description *)
  engine_type : string prop;  (** engine_type *)
  engine_version : string prop;  (** engine_version *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_mq_configuration *)

let aws_mq_configuration ?authentication_strategy ?description ?id
    ?tags ?tags_all ~data ~engine_type ~engine_version ~name () :
    aws_mq_configuration =
  {
    authentication_strategy;
    data;
    description;
    engine_type;
    engine_version;
    id;
    name;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  authentication_strategy : string prop;
  data : string prop;
  description : string prop;
  engine_type : string prop;
  engine_version : string prop;
  id : string prop;
  latest_revision : float prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?authentication_strategy ?description ?id ?tags ?tags_all
    ~data ~engine_type ~engine_version ~name __id =
  let __type = "aws_mq_configuration" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       authentication_strategy =
         Prop.computed __type __id "authentication_strategy";
       data = Prop.computed __type __id "data";
       description = Prop.computed __type __id "description";
       engine_type = Prop.computed __type __id "engine_type";
       engine_version = Prop.computed __type __id "engine_version";
       id = Prop.computed __type __id "id";
       latest_revision = Prop.computed __type __id "latest_revision";
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
      yojson_of_aws_mq_configuration
        (aws_mq_configuration ?authentication_strategy ?description
           ?id ?tags ?tags_all ~data ~engine_type ~engine_version
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?authentication_strategy ?description ?id
    ?tags ?tags_all ~data ~engine_type ~engine_version ~name __id =
  let (r : _ Tf_core.resource) =
    make ?authentication_strategy ?description ?id ?tags ?tags_all
      ~data ~engine_type ~engine_version ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
