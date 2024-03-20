(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_appsync_type = {
  api_id : string prop;  (** api_id *)
  definition : string prop;  (** definition *)
  format : string prop;  (** format *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_appsync_type *)

let aws_appsync_type ?id ~api_id ~definition ~format () :
    aws_appsync_type =
  { api_id; definition; format; id }

type t = {
  api_id : string prop;
  arn : string prop;
  definition : string prop;
  description : string prop;
  format : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ~api_id ~definition ~format __id =
  let __type = "aws_appsync_type" in
  let __attrs =
    ({
       api_id = Prop.computed __type __id "api_id";
       arn = Prop.computed __type __id "arn";
       definition = Prop.computed __type __id "definition";
       description = Prop.computed __type __id "description";
       format = Prop.computed __type __id "format";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appsync_type
        (aws_appsync_type ?id ~api_id ~definition ~format ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~api_id ~definition ~format __id =
  let (r : _ Tf_core.resource) =
    make ?id ~api_id ~definition ~format __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
