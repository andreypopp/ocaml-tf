(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type data_source_configuration = {
  intended_use : string prop option; [@option]  (** intended_use *)
}
[@@deriving yojson_of]
(** data_source_configuration *)

type aws_location_place_index = {
  data_source : string prop;  (** data_source *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  index_name : string prop;  (** index_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  data_source_configuration : data_source_configuration list;
}
[@@deriving yojson_of]
(** aws_location_place_index *)

let data_source_configuration ?intended_use () :
    data_source_configuration =
  { intended_use }

let aws_location_place_index ?description ?id ?tags ?tags_all
    ~data_source ~index_name ~data_source_configuration () :
    aws_location_place_index =
  {
    data_source;
    description;
    id;
    index_name;
    tags;
    tags_all;
    data_source_configuration;
  }

type t = {
  create_time : string prop;
  data_source : string prop;
  description : string prop;
  id : string prop;
  index_arn : string prop;
  index_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  update_time : string prop;
}

let make ?description ?id ?tags ?tags_all ~data_source ~index_name
    ~data_source_configuration __id =
  let __type = "aws_location_place_index" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       data_source = Prop.computed __type __id "data_source";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       index_arn = Prop.computed __type __id "index_arn";
       index_name = Prop.computed __type __id "index_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_location_place_index
        (aws_location_place_index ?description ?id ?tags ?tags_all
           ~data_source ~index_name ~data_source_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ~data_source
    ~index_name ~data_source_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~data_source ~index_name
      ~data_source_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
