(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_route53recoveryreadiness_readiness_check = {
  id : string prop option; [@option]  (** id *)
  readiness_check_name : string prop;  (** readiness_check_name *)
  resource_set_name : string prop;  (** resource_set_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_route53recoveryreadiness_readiness_check *)

let timeouts ?delete () : timeouts = { delete }

let aws_route53recoveryreadiness_readiness_check ?id ?tags ?tags_all
    ?timeouts ~readiness_check_name ~resource_set_name () :
    aws_route53recoveryreadiness_readiness_check =
  {
    id;
    readiness_check_name;
    resource_set_name;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  arn : string prop;
  id : string prop;
  readiness_check_name : string prop;
  resource_set_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ?timeouts ~readiness_check_name
    ~resource_set_name __id =
  let __type = "aws_route53recoveryreadiness_readiness_check" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       readiness_check_name =
         Prop.computed __type __id "readiness_check_name";
       resource_set_name =
         Prop.computed __type __id "resource_set_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53recoveryreadiness_readiness_check
        (aws_route53recoveryreadiness_readiness_check ?id ?tags
           ?tags_all ?timeouts ~readiness_check_name
           ~resource_set_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?timeouts
    ~readiness_check_name ~resource_set_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ?timeouts ~readiness_check_name
      ~resource_set_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
