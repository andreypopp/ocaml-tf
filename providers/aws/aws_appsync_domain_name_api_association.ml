(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_appsync_domain_name_api_association = {
  api_id : string prop;  (** api_id *)
  domain_name : string prop;  (** domain_name *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_appsync_domain_name_api_association *)

let aws_appsync_domain_name_api_association ?id ~api_id ~domain_name
    () : aws_appsync_domain_name_api_association =
  { api_id; domain_name; id }

type t = {
  api_id : string prop;
  domain_name : string prop;
  id : string prop;
}

let make ?id ~api_id ~domain_name __id =
  let __type = "aws_appsync_domain_name_api_association" in
  let __attrs =
    ({
       api_id = Prop.computed __type __id "api_id";
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appsync_domain_name_api_association
        (aws_appsync_domain_name_api_association ?id ~api_id
           ~domain_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~api_id ~domain_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~api_id ~domain_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
