(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration = { style : string prop  (** style *) }
[@@deriving yojson_of]
(** configuration *)

type aws_location_map = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  map_name : string prop;  (** map_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  configuration : configuration list;
}
[@@deriving yojson_of]
(** aws_location_map *)

let configuration ~style () : configuration = { style }

let aws_location_map ?description ?id ?tags ?tags_all ~map_name
    ~configuration () : aws_location_map =
  { description; id; map_name; tags; tags_all; configuration }

type t = {
  create_time : string prop;
  description : string prop;
  id : string prop;
  map_arn : string prop;
  map_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  update_time : string prop;
}

let make ?description ?id ?tags ?tags_all ~map_name ~configuration
    __id =
  let __type = "aws_location_map" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       map_arn = Prop.computed __type __id "map_arn";
       map_name = Prop.computed __type __id "map_name";
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
      yojson_of_aws_location_map
        (aws_location_map ?description ?id ?tags ?tags_all ~map_name
           ~configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ~map_name
    ~configuration __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~map_name ~configuration
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
