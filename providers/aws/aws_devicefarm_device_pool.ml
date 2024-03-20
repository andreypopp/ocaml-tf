(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rule = {
  attribute : string prop option; [@option]  (** attribute *)
  operator : string prop option; [@option]  (** operator *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** rule *)

type aws_devicefarm_device_pool = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  max_devices : float prop option; [@option]  (** max_devices *)
  name : string prop;  (** name *)
  project_arn : string prop;  (** project_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  rule : rule list;
}
[@@deriving yojson_of]
(** aws_devicefarm_device_pool *)

let rule ?attribute ?operator ?value () : rule =
  { attribute; operator; value }

let aws_devicefarm_device_pool ?description ?id ?max_devices ?tags
    ?tags_all ~name ~project_arn ~rule () :
    aws_devicefarm_device_pool =
  {
    description;
    id;
    max_devices;
    name;
    project_arn;
    tags;
    tags_all;
    rule;
  }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  max_devices : float prop;
  name : string prop;
  project_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let make ?description ?id ?max_devices ?tags ?tags_all ~name
    ~project_arn ~rule __id =
  let __type = "aws_devicefarm_device_pool" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       max_devices = Prop.computed __type __id "max_devices";
       name = Prop.computed __type __id "name";
       project_arn = Prop.computed __type __id "project_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_devicefarm_device_pool
        (aws_devicefarm_device_pool ?description ?id ?max_devices
           ?tags ?tags_all ~name ~project_arn ~rule ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?max_devices ?tags ?tags_all
    ~name ~project_arn ~rule __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?max_devices ?tags ?tags_all ~name
      ~project_arn ~rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
