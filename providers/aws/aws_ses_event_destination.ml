(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudwatch_destination = {
  default_value : string prop;  (** default_value *)
  dimension_name : string prop;  (** dimension_name *)
  value_source : string prop;  (** value_source *)
}
[@@deriving yojson_of]
(** cloudwatch_destination *)

type kinesis_destination = {
  role_arn : string prop;  (** role_arn *)
  stream_arn : string prop;  (** stream_arn *)
}
[@@deriving yojson_of]
(** kinesis_destination *)

type sns_destination = { topic_arn : string prop  (** topic_arn *) }
[@@deriving yojson_of]
(** sns_destination *)

type aws_ses_event_destination = {
  configuration_set_name : string prop;
      (** configuration_set_name *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  matching_types : string prop list;  (** matching_types *)
  name : string prop;  (** name *)
  cloudwatch_destination : cloudwatch_destination list;
  kinesis_destination : kinesis_destination list;
  sns_destination : sns_destination list;
}
[@@deriving yojson_of]
(** aws_ses_event_destination *)

let cloudwatch_destination ~default_value ~dimension_name
    ~value_source () : cloudwatch_destination =
  { default_value; dimension_name; value_source }

let kinesis_destination ~role_arn ~stream_arn () :
    kinesis_destination =
  { role_arn; stream_arn }

let sns_destination ~topic_arn () : sns_destination = { topic_arn }

let aws_ses_event_destination ?enabled ?id ~configuration_set_name
    ~matching_types ~name ~cloudwatch_destination
    ~kinesis_destination ~sns_destination () :
    aws_ses_event_destination =
  {
    configuration_set_name;
    enabled;
    id;
    matching_types;
    name;
    cloudwatch_destination;
    kinesis_destination;
    sns_destination;
  }

type t = {
  arn : string prop;
  configuration_set_name : string prop;
  enabled : bool prop;
  id : string prop;
  matching_types : string list prop;
  name : string prop;
}

let make ?enabled ?id ~configuration_set_name ~matching_types ~name
    ~cloudwatch_destination ~kinesis_destination ~sns_destination
    __id =
  let __type = "aws_ses_event_destination" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       configuration_set_name =
         Prop.computed __type __id "configuration_set_name";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       matching_types = Prop.computed __type __id "matching_types";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ses_event_destination
        (aws_ses_event_destination ?enabled ?id
           ~configuration_set_name ~matching_types ~name
           ~cloudwatch_destination ~kinesis_destination
           ~sns_destination ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ~configuration_set_name
    ~matching_types ~name ~cloudwatch_destination
    ~kinesis_destination ~sns_destination __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ~configuration_set_name ~matching_types ~name
      ~cloudwatch_destination ~kinesis_destination ~sns_destination
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
