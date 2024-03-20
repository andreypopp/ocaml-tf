(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iot_thing = {
  attributes : (string * string prop) list option; [@option]
      (** attributes *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  thing_type_name : string prop option; [@option]
      (** thing_type_name *)
}
[@@deriving yojson_of]
(** aws_iot_thing *)

let aws_iot_thing ?attributes ?id ?thing_type_name ~name () :
    aws_iot_thing =
  { attributes; id; name; thing_type_name }

type t = {
  arn : string prop;
  attributes : (string * string) list prop;
  default_client_id : string prop;
  id : string prop;
  name : string prop;
  thing_type_name : string prop;
  version : float prop;
}

let make ?attributes ?id ?thing_type_name ~name __id =
  let __type = "aws_iot_thing" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       attributes = Prop.computed __type __id "attributes";
       default_client_id =
         Prop.computed __type __id "default_client_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       thing_type_name = Prop.computed __type __id "thing_type_name";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iot_thing
        (aws_iot_thing ?attributes ?id ?thing_type_name ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?attributes ?id ?thing_type_name ~name __id =
  let (r : _ Tf_core.resource) =
    make ?attributes ?id ?thing_type_name ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
