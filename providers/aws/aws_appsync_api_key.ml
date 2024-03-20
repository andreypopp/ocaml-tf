(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_appsync_api_key = {
  api_id : string prop;  (** api_id *)
  description : string prop option; [@option]  (** description *)
  expires : string prop option; [@option]  (** expires *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_appsync_api_key *)

let aws_appsync_api_key ?description ?expires ?id ~api_id () :
    aws_appsync_api_key =
  { api_id; description; expires; id }

type t = {
  api_id : string prop;
  description : string prop;
  expires : string prop;
  id : string prop;
  key : string prop;
}

let make ?description ?expires ?id ~api_id __id =
  let __type = "aws_appsync_api_key" in
  let __attrs =
    ({
       api_id = Prop.computed __type __id "api_id";
       description = Prop.computed __type __id "description";
       expires = Prop.computed __type __id "expires";
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appsync_api_key
        (aws_appsync_api_key ?description ?expires ?id ~api_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?expires ?id ~api_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?expires ?id ~api_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
