(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_appautoscaling_target = {
  id : string prop option; [@option]  (** id *)
  max_capacity : float prop;  (** max_capacity *)
  min_capacity : float prop;  (** min_capacity *)
  resource_id : string prop;  (** resource_id *)
  role_arn : string prop option; [@option]  (** role_arn *)
  scalable_dimension : string prop;  (** scalable_dimension *)
  service_namespace : string prop;  (** service_namespace *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_appautoscaling_target *)

let aws_appautoscaling_target ?id ?role_arn ?tags ?tags_all
    ~max_capacity ~min_capacity ~resource_id ~scalable_dimension
    ~service_namespace () : aws_appautoscaling_target =
  {
    id;
    max_capacity;
    min_capacity;
    resource_id;
    role_arn;
    scalable_dimension;
    service_namespace;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  id : string prop;
  max_capacity : float prop;
  min_capacity : float prop;
  resource_id : string prop;
  role_arn : string prop;
  scalable_dimension : string prop;
  service_namespace : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?role_arn ?tags ?tags_all ~max_capacity ~min_capacity
    ~resource_id ~scalable_dimension ~service_namespace __id =
  let __type = "aws_appautoscaling_target" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       max_capacity = Prop.computed __type __id "max_capacity";
       min_capacity = Prop.computed __type __id "min_capacity";
       resource_id = Prop.computed __type __id "resource_id";
       role_arn = Prop.computed __type __id "role_arn";
       scalable_dimension =
         Prop.computed __type __id "scalable_dimension";
       service_namespace =
         Prop.computed __type __id "service_namespace";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appautoscaling_target
        (aws_appautoscaling_target ?id ?role_arn ?tags ?tags_all
           ~max_capacity ~min_capacity ~resource_id
           ~scalable_dimension ~service_namespace ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?role_arn ?tags ?tags_all ~max_capacity
    ~min_capacity ~resource_id ~scalable_dimension ~service_namespace
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?role_arn ?tags ?tags_all ~max_capacity ~min_capacity
      ~resource_id ~scalable_dimension ~service_namespace __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
