(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_service_discovery_instance = {
  attributes : (string * string prop) list;  (** attributes *)
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;  (** instance_id *)
  service_id : string prop;  (** service_id *)
}
[@@deriving yojson_of]
(** aws_service_discovery_instance *)

let aws_service_discovery_instance ?id ~attributes ~instance_id
    ~service_id () : aws_service_discovery_instance =
  { attributes; id; instance_id; service_id }

type t = {
  attributes : (string * string) list prop;
  id : string prop;
  instance_id : string prop;
  service_id : string prop;
}

let make ?id ~attributes ~instance_id ~service_id __id =
  let __type = "aws_service_discovery_instance" in
  let __attrs =
    ({
       attributes = Prop.computed __type __id "attributes";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       service_id = Prop.computed __type __id "service_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_service_discovery_instance
        (aws_service_discovery_instance ?id ~attributes ~instance_id
           ~service_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~attributes ~instance_id ~service_id __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ~attributes ~instance_id ~service_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
