(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_kinesis_stream_consumer = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  stream_arn : string prop;  (** stream_arn *)
}
[@@deriving yojson_of]
(** aws_kinesis_stream_consumer *)

let aws_kinesis_stream_consumer ?id ~name ~stream_arn () :
    aws_kinesis_stream_consumer =
  { id; name; stream_arn }

type t = {
  arn : string prop;
  creation_timestamp : string prop;
  id : string prop;
  name : string prop;
  stream_arn : string prop;
}

let make ?id ~name ~stream_arn __id =
  let __type = "aws_kinesis_stream_consumer" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       stream_arn = Prop.computed __type __id "stream_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_kinesis_stream_consumer
        (aws_kinesis_stream_consumer ?id ~name ~stream_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~stream_arn __id =
  let (r : _ Tf_core.resource) = make ?id ~name ~stream_arn __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
