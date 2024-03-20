(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_placement_group = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  partition_count : float prop option; [@option]
      (** partition_count *)
  spread_level : string prop option; [@option]  (** spread_level *)
  strategy : string prop;  (** strategy *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_placement_group *)

let aws_placement_group ?id ?partition_count ?spread_level ?tags
    ?tags_all ~name ~strategy () : aws_placement_group =
  {
    id;
    name;
    partition_count;
    spread_level;
    strategy;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  partition_count : float prop;
  placement_group_id : string prop;
  spread_level : string prop;
  strategy : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?partition_count ?spread_level ?tags ?tags_all ~name
    ~strategy __id =
  let __type = "aws_placement_group" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       partition_count = Prop.computed __type __id "partition_count";
       placement_group_id =
         Prop.computed __type __id "placement_group_id";
       spread_level = Prop.computed __type __id "spread_level";
       strategy = Prop.computed __type __id "strategy";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_placement_group
        (aws_placement_group ?id ?partition_count ?spread_level ?tags
           ?tags_all ~name ~strategy ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?partition_count ?spread_level ?tags
    ?tags_all ~name ~strategy __id =
  let (r : _ Tf_core.resource) =
    make ?id ?partition_count ?spread_level ?tags ?tags_all ~name
      ~strategy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
