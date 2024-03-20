(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudwatch_log_destination = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  role_arn : string prop;  (** role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  target_arn : string prop;  (** target_arn *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_log_destination *)

let aws_cloudwatch_log_destination ?id ?tags ?tags_all ~name
    ~role_arn ~target_arn () : aws_cloudwatch_log_destination =
  { id; name; role_arn; tags; tags_all; target_arn }

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_arn : string prop;
}

let make ?id ?tags ?tags_all ~name ~role_arn ~target_arn __id =
  let __type = "aws_cloudwatch_log_destination" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       role_arn = Prop.computed __type __id "role_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       target_arn = Prop.computed __type __id "target_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_log_destination
        (aws_cloudwatch_log_destination ?id ?tags ?tags_all ~name
           ~role_arn ~target_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~name ~role_arn
    ~target_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~name ~role_arn ~target_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
