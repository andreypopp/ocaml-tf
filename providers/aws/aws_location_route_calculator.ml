(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_location_route_calculator = {
  calculator_name : string prop;  (** calculator_name *)
  data_source : string prop;  (** data_source *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_location_route_calculator *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_location_route_calculator ?description ?id ?tags ?tags_all
    ?timeouts ~calculator_name ~data_source () :
    aws_location_route_calculator =
  {
    calculator_name;
    data_source;
    description;
    id;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  calculator_arn : string prop;
  calculator_name : string prop;
  create_time : string prop;
  data_source : string prop;
  description : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  update_time : string prop;
}

let make ?description ?id ?tags ?tags_all ?timeouts ~calculator_name
    ~data_source __id =
  let __type = "aws_location_route_calculator" in
  let __attrs =
    ({
       calculator_arn = Prop.computed __type __id "calculator_arn";
       calculator_name = Prop.computed __type __id "calculator_name";
       create_time = Prop.computed __type __id "create_time";
       data_source = Prop.computed __type __id "data_source";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
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
      yojson_of_aws_location_route_calculator
        (aws_location_route_calculator ?description ?id ?tags
           ?tags_all ?timeouts ~calculator_name ~data_source ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ?timeouts
    ~calculator_name ~data_source __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ?timeouts ~calculator_name
      ~data_source __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
