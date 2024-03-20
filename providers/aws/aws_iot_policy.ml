(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_iot_policy = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  policy : string prop;  (** policy *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_iot_policy *)

let timeouts ?delete ?update () : timeouts = { delete; update }

let aws_iot_policy ?id ?tags ?tags_all ?timeouts ~name ~policy () :
    aws_iot_policy =
  { id; name; policy; tags; tags_all; timeouts }

type t = {
  arn : string prop;
  default_version_id : string prop;
  id : string prop;
  name : string prop;
  policy : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ?timeouts ~name ~policy __id =
  let __type = "aws_iot_policy" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       default_version_id =
         Prop.computed __type __id "default_version_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       policy = Prop.computed __type __id "policy";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iot_policy
        (aws_iot_policy ?id ?tags ?tags_all ?timeouts ~name ~policy
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?timeouts ~name ~policy
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ?timeouts ~name ~policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
