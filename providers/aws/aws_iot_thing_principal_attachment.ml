(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iot_thing_principal_attachment = {
  id : string prop option; [@option]  (** id *)
  principal : string prop;  (** principal *)
  thing : string prop;  (** thing *)
}
[@@deriving yojson_of]
(** aws_iot_thing_principal_attachment *)

let aws_iot_thing_principal_attachment ?id ~principal ~thing () :
    aws_iot_thing_principal_attachment =
  { id; principal; thing }

type t = {
  id : string prop;
  principal : string prop;
  thing : string prop;
}

let make ?id ~principal ~thing __id =
  let __type = "aws_iot_thing_principal_attachment" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       principal = Prop.computed __type __id "principal";
       thing = Prop.computed __type __id "thing";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iot_thing_principal_attachment
        (aws_iot_thing_principal_attachment ?id ~principal ~thing ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~principal ~thing __id =
  let (r : _ Tf_core.resource) = make ?id ~principal ~thing __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
