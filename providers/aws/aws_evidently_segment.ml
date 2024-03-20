(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_evidently_segment = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  pattern : string prop;  (** pattern *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_evidently_segment *)

let aws_evidently_segment ?description ?id ?tags ?tags_all ~name
    ~pattern () : aws_evidently_segment =
  { description; id; name; pattern; tags; tags_all }

type t = {
  arn : string prop;
  created_time : string prop;
  description : string prop;
  experiment_count : float prop;
  id : string prop;
  last_updated_time : string prop;
  launch_count : float prop;
  name : string prop;
  pattern : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all ~name ~pattern __id =
  let __type = "aws_evidently_segment" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       created_time = Prop.computed __type __id "created_time";
       description = Prop.computed __type __id "description";
       experiment_count =
         Prop.computed __type __id "experiment_count";
       id = Prop.computed __type __id "id";
       last_updated_time =
         Prop.computed __type __id "last_updated_time";
       launch_count = Prop.computed __type __id "launch_count";
       name = Prop.computed __type __id "name";
       pattern = Prop.computed __type __id "pattern";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_evidently_segment
        (aws_evidently_segment ?description ?id ?tags ?tags_all ~name
           ~pattern ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ~name
    ~pattern __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~name ~pattern __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
