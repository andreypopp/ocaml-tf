(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type variations__value = {
  bool_value : string prop option; [@option]  (** bool_value *)
  double_value : string prop option; [@option]  (** double_value *)
  long_value : string prop option; [@option]  (** long_value *)
  string_value : string prop option; [@option]  (** string_value *)
}
[@@deriving yojson_of]
(** variations__value *)

type variations = {
  name : string prop;  (** name *)
  value : variations__value list;
}
[@@deriving yojson_of]
(** variations *)

type evaluation_rules = {
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type aws_evidently_feature = {
  default_variation : string prop option; [@option]
      (** default_variation *)
  description : string prop option; [@option]  (** description *)
  entity_overrides : (string * string prop) list option; [@option]
      (** entity_overrides *)
  evaluation_strategy : string prop option; [@option]
      (** evaluation_strategy *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  project : string prop;  (** project *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
  variations : variations list;
}
[@@deriving yojson_of]
(** aws_evidently_feature *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let variations__value ?bool_value ?double_value ?long_value
    ?string_value () : variations__value =
  { bool_value; double_value; long_value; string_value }

let variations ~name ~value () : variations = { name; value }

let aws_evidently_feature ?default_variation ?description
    ?entity_overrides ?evaluation_strategy ?id ?tags ?tags_all
    ?timeouts ~name ~project ~variations () : aws_evidently_feature =
  {
    default_variation;
    description;
    entity_overrides;
    evaluation_strategy;
    id;
    name;
    project;
    tags;
    tags_all;
    timeouts;
    variations;
  }

type t = {
  arn : string prop;
  created_time : string prop;
  default_variation : string prop;
  description : string prop;
  entity_overrides : (string * string) list prop;
  evaluation_rules : evaluation_rules list prop;
  evaluation_strategy : string prop;
  id : string prop;
  last_updated_time : string prop;
  name : string prop;
  project : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  value_type : string prop;
}

let make ?default_variation ?description ?entity_overrides
    ?evaluation_strategy ?id ?tags ?tags_all ?timeouts ~name ~project
    ~variations __id =
  let __type = "aws_evidently_feature" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       created_time = Prop.computed __type __id "created_time";
       default_variation =
         Prop.computed __type __id "default_variation";
       description = Prop.computed __type __id "description";
       entity_overrides =
         Prop.computed __type __id "entity_overrides";
       evaluation_rules =
         Prop.computed __type __id "evaluation_rules";
       evaluation_strategy =
         Prop.computed __type __id "evaluation_strategy";
       id = Prop.computed __type __id "id";
       last_updated_time =
         Prop.computed __type __id "last_updated_time";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       value_type = Prop.computed __type __id "value_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_evidently_feature
        (aws_evidently_feature ?default_variation ?description
           ?entity_overrides ?evaluation_strategy ?id ?tags ?tags_all
           ?timeouts ~name ~project ~variations ());
    attrs = __attrs;
  }

let register ?tf_module ?default_variation ?description
    ?entity_overrides ?evaluation_strategy ?id ?tags ?tags_all
    ?timeouts ~name ~project ~variations __id =
  let (r : _ Tf_core.resource) =
    make ?default_variation ?description ?entity_overrides
      ?evaluation_strategy ?id ?tags ?tags_all ?timeouts ~name
      ~project ~variations __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
