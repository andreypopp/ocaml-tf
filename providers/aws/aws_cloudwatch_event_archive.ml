(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudwatch_event_archive = {
  description : string prop option; [@option]  (** description *)
  event_pattern : string prop option; [@option]  (** event_pattern *)
  event_source_arn : string prop;  (** event_source_arn *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  retention_days : float prop option; [@option]  (** retention_days *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_archive *)

let aws_cloudwatch_event_archive ?description ?event_pattern ?id
    ?retention_days ~event_source_arn ~name () :
    aws_cloudwatch_event_archive =
  {
    description;
    event_pattern;
    event_source_arn;
    id;
    name;
    retention_days;
  }

type t = {
  arn : string prop;
  description : string prop;
  event_pattern : string prop;
  event_source_arn : string prop;
  id : string prop;
  name : string prop;
  retention_days : float prop;
}

let make ?description ?event_pattern ?id ?retention_days
    ~event_source_arn ~name __id =
  let __type = "aws_cloudwatch_event_archive" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       event_pattern = Prop.computed __type __id "event_pattern";
       event_source_arn =
         Prop.computed __type __id "event_source_arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       retention_days = Prop.computed __type __id "retention_days";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_event_archive
        (aws_cloudwatch_event_archive ?description ?event_pattern ?id
           ?retention_days ~event_source_arn ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?event_pattern ?id
    ?retention_days ~event_source_arn ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?event_pattern ?id ?retention_days
      ~event_source_arn ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
