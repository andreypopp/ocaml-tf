(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_amplify_webhook = {
  app_id : string prop;  (** app_id *)
  branch_name : string prop;  (** branch_name *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_amplify_webhook *)

let aws_amplify_webhook ?description ?id ~app_id ~branch_name () :
    aws_amplify_webhook =
  { app_id; branch_name; description; id }

type t = {
  app_id : string prop;
  arn : string prop;
  branch_name : string prop;
  description : string prop;
  id : string prop;
  url : string prop;
}

let make ?description ?id ~app_id ~branch_name __id =
  let __type = "aws_amplify_webhook" in
  let __attrs =
    ({
       app_id = Prop.computed __type __id "app_id";
       arn = Prop.computed __type __id "arn";
       branch_name = Prop.computed __type __id "branch_name";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_amplify_webhook
        (aws_amplify_webhook ?description ?id ~app_id ~branch_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ~app_id ~branch_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~app_id ~branch_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
