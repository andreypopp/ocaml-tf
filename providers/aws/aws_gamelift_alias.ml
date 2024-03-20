(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type routing_strategy = {
  fleet_id : string prop option; [@option]  (** fleet_id *)
  message : string prop option; [@option]  (** message *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** routing_strategy *)

type aws_gamelift_alias = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  routing_strategy : routing_strategy list;
}
[@@deriving yojson_of]
(** aws_gamelift_alias *)

let routing_strategy ?fleet_id ?message ~type_ () : routing_strategy
    =
  { fleet_id; message; type_ }

let aws_gamelift_alias ?description ?id ?tags ?tags_all ~name
    ~routing_strategy () : aws_gamelift_alias =
  { description; id; name; tags; tags_all; routing_strategy }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all ~name ~routing_strategy
    __id =
  let __type = "aws_gamelift_alias" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
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
      yojson_of_aws_gamelift_alias
        (aws_gamelift_alias ?description ?id ?tags ?tags_all ~name
           ~routing_strategy ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ~name
    ~routing_strategy __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~name ~routing_strategy
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
