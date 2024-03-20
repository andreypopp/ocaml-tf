(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type schedule_config = {
  first_execution_from : string prop;  (** first_execution_from *)
  object_ : string prop; [@key "object"]  (** object *)
  schedule_expression : string prop;  (** schedule_expression *)
}
[@@deriving yojson_of]
(** schedule_config *)

type aws_appintegrations_data_integration = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  kms_key : string prop;  (** kms_key *)
  name : string prop;  (** name *)
  source_uri : string prop;  (** source_uri *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  schedule_config : schedule_config list;
}
[@@deriving yojson_of]
(** aws_appintegrations_data_integration *)

let schedule_config ~first_execution_from ~object_
    ~schedule_expression () : schedule_config =
  { first_execution_from; object_; schedule_expression }

let aws_appintegrations_data_integration ?description ?id ?tags
    ?tags_all ~kms_key ~name ~source_uri ~schedule_config () :
    aws_appintegrations_data_integration =
  {
    description;
    id;
    kms_key;
    name;
    source_uri;
    tags;
    tags_all;
    schedule_config;
  }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  kms_key : string prop;
  name : string prop;
  source_uri : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all ~kms_key ~name ~source_uri
    ~schedule_config __id =
  let __type = "aws_appintegrations_data_integration" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       kms_key = Prop.computed __type __id "kms_key";
       name = Prop.computed __type __id "name";
       source_uri = Prop.computed __type __id "source_uri";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appintegrations_data_integration
        (aws_appintegrations_data_integration ?description ?id ?tags
           ?tags_all ~kms_key ~name ~source_uri ~schedule_config ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ~kms_key
    ~name ~source_uri ~schedule_config __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~kms_key ~name ~source_uri
      ~schedule_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
