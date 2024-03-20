(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration__content_source_configuration = {
  data_source_ids : string prop list option; [@option]
      (** data_source_ids *)
  direct_put_content : bool prop option; [@option]
      (** direct_put_content *)
  faq_ids : string prop list option; [@option]  (** faq_ids *)
}
[@@deriving yojson_of]
(** configuration__content_source_configuration *)

type configuration__user_identity_configuration = {
  identity_attribute_name : string prop;
      (** identity_attribute_name *)
}
[@@deriving yojson_of]
(** configuration__user_identity_configuration *)

type configuration = {
  content_source_configuration :
    configuration__content_source_configuration list;
  user_identity_configuration :
    configuration__user_identity_configuration list;
}
[@@deriving yojson_of]
(** configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type endpoints = {
  endpoint : string prop;  (** endpoint *)
  endpoint_type : string prop;  (** endpoint_type *)
}
[@@deriving yojson_of]

type aws_kendra_experience = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  index_id : string prop;  (** index_id *)
  name : string prop;  (** name *)
  role_arn : string prop;  (** role_arn *)
  configuration : configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_kendra_experience *)

let configuration__content_source_configuration ?data_source_ids
    ?direct_put_content ?faq_ids () :
    configuration__content_source_configuration =
  { data_source_ids; direct_put_content; faq_ids }

let configuration__user_identity_configuration
    ~identity_attribute_name () :
    configuration__user_identity_configuration =
  { identity_attribute_name }

let configuration ~content_source_configuration
    ~user_identity_configuration () : configuration =
  { content_source_configuration; user_identity_configuration }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_kendra_experience ?description ?id ?timeouts ~index_id ~name
    ~role_arn ~configuration () : aws_kendra_experience =
  {
    description;
    id;
    index_id;
    name;
    role_arn;
    configuration;
    timeouts;
  }

type t = {
  arn : string prop;
  description : string prop;
  endpoints : endpoints list prop;
  experience_id : string prop;
  id : string prop;
  index_id : string prop;
  name : string prop;
  role_arn : string prop;
  status : string prop;
}

let make ?description ?id ?timeouts ~index_id ~name ~role_arn
    ~configuration __id =
  let __type = "aws_kendra_experience" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       endpoints = Prop.computed __type __id "endpoints";
       experience_id = Prop.computed __type __id "experience_id";
       id = Prop.computed __type __id "id";
       index_id = Prop.computed __type __id "index_id";
       name = Prop.computed __type __id "name";
       role_arn = Prop.computed __type __id "role_arn";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_kendra_experience
        (aws_kendra_experience ?description ?id ?timeouts ~index_id
           ~name ~role_arn ~configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts ~index_id ~name
    ~role_arn ~configuration __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~index_id ~name ~role_arn
      ~configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
