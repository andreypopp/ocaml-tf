(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_api_gateway_base_path_mapping = {
  api_id : string prop;  (** api_id *)
  base_path : string prop option; [@option]  (** base_path *)
  domain_name : string prop;  (** domain_name *)
  id : string prop option; [@option]  (** id *)
  stage_name : string prop option; [@option]  (** stage_name *)
}
[@@deriving yojson_of]
(** aws_api_gateway_base_path_mapping *)

let aws_api_gateway_base_path_mapping ?base_path ?id ?stage_name
    ~api_id ~domain_name () : aws_api_gateway_base_path_mapping =
  { api_id; base_path; domain_name; id; stage_name }

type t = {
  api_id : string prop;
  base_path : string prop;
  domain_name : string prop;
  id : string prop;
  stage_name : string prop;
}

let make ?base_path ?id ?stage_name ~api_id ~domain_name __id =
  let __type = "aws_api_gateway_base_path_mapping" in
  let __attrs =
    ({
       api_id = Prop.computed __type __id "api_id";
       base_path = Prop.computed __type __id "base_path";
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
       stage_name = Prop.computed __type __id "stage_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_base_path_mapping
        (aws_api_gateway_base_path_mapping ?base_path ?id ?stage_name
           ~api_id ~domain_name ());
    attrs = __attrs;
  }

let register ?tf_module ?base_path ?id ?stage_name ~api_id
    ~domain_name __id =
  let (r : _ Tf_core.resource) =
    make ?base_path ?id ?stage_name ~api_id ~domain_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
