(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_appautoscaling_target = {
  id : string prop option; [@option]
  max_capacity : float prop;
  min_capacity : float prop;
  resource_id : string prop;
  role_arn : string prop option; [@option]
  scalable_dimension : string prop;
  service_namespace : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appautoscaling_target) -> ()

let yojson_of_aws_appautoscaling_target =
  (function
   | {
       id = v_id;
       max_capacity = v_max_capacity;
       min_capacity = v_min_capacity;
       resource_id = v_resource_id;
       role_arn = v_role_arn;
       scalable_dimension = v_scalable_dimension;
       service_namespace = v_service_namespace;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_namespace
         in
         ("service_namespace", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_scalable_dimension
         in
         ("scalable_dimension", arg) :: bnds
       in
       let bnds =
         match v_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_id in
         ("resource_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min_capacity in
         ("min_capacity", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_capacity in
         ("max_capacity", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_appautoscaling_target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appautoscaling_target

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
