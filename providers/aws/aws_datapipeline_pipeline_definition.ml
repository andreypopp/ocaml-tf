(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type parameter_object__attribute = {
  key : string prop;  (** key *)
  string_value : string prop;  (** string_value *)
}
[@@deriving yojson_of]
(** parameter_object__attribute *)

type parameter_object = {
  id : string prop;  (** id *)
  attribute : parameter_object__attribute list;
}
[@@deriving yojson_of]
(** parameter_object *)

type parameter_value = {
  id : string prop;  (** id *)
  string_value : string prop;  (** string_value *)
}
[@@deriving yojson_of]
(** parameter_value *)

type pipeline_object__field = {
  key : string prop;  (** key *)
  ref_value : string prop option; [@option]  (** ref_value *)
  string_value : string prop option; [@option]  (** string_value *)
}
[@@deriving yojson_of]
(** pipeline_object__field *)

type pipeline_object = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  field : pipeline_object__field list;
}
[@@deriving yojson_of]
(** pipeline_object *)

type aws_datapipeline_pipeline_definition = {
  id : string prop option; [@option]  (** id *)
  pipeline_id : string prop;  (** pipeline_id *)
  parameter_object : parameter_object list;
  parameter_value : parameter_value list;
  pipeline_object : pipeline_object list;
}
[@@deriving yojson_of]
(** aws_datapipeline_pipeline_definition *)

let parameter_object__attribute ~key ~string_value () :
    parameter_object__attribute =
  { key; string_value }

let parameter_object ~id ~attribute () : parameter_object =
  { id; attribute }

let parameter_value ~id ~string_value () : parameter_value =
  { id; string_value }

let pipeline_object__field ?ref_value ?string_value ~key () :
    pipeline_object__field =
  { key; ref_value; string_value }

let pipeline_object ~id ~name ~field () : pipeline_object =
  { id; name; field }

let aws_datapipeline_pipeline_definition ?id ~pipeline_id
    ~parameter_object ~parameter_value ~pipeline_object () :
    aws_datapipeline_pipeline_definition =
  {
    id;
    pipeline_id;
    parameter_object;
    parameter_value;
    pipeline_object;
  }

type t = { id : string prop; pipeline_id : string prop }

let make ?id ~pipeline_id ~parameter_object ~parameter_value
    ~pipeline_object __id =
  let __type = "aws_datapipeline_pipeline_definition" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       pipeline_id = Prop.computed __type __id "pipeline_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_datapipeline_pipeline_definition
        (aws_datapipeline_pipeline_definition ?id ~pipeline_id
           ~parameter_object ~parameter_value ~pipeline_object ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~pipeline_id ~parameter_object
    ~parameter_value ~pipeline_object __id =
  let (r : _ Tf_core.resource) =
    make ?id ~pipeline_id ~parameter_object ~parameter_value
      ~pipeline_object __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
