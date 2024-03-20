(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type setting = {
  name : string prop;  (** name *)
  namespace : string prop;  (** namespace *)
  resource : string prop option; [@option]  (** resource *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** setting *)

type aws_elastic_beanstalk_configuration_template = {
  application : string prop;  (** application *)
  description : string prop option; [@option]  (** description *)
  environment_id : string prop option; [@option]
      (** environment_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  solution_stack_name : string prop option; [@option]
      (** solution_stack_name *)
  setting : setting list;
}
[@@deriving yojson_of]
(** aws_elastic_beanstalk_configuration_template *)

let setting ?resource ~name ~namespace ~value () : setting =
  { name; namespace; resource; value }

let aws_elastic_beanstalk_configuration_template ?description
    ?environment_id ?id ?solution_stack_name ~application ~name
    ~setting () : aws_elastic_beanstalk_configuration_template =
  {
    application;
    description;
    environment_id;
    id;
    name;
    solution_stack_name;
    setting;
  }

type t = {
  application : string prop;
  description : string prop;
  environment_id : string prop;
  id : string prop;
  name : string prop;
  solution_stack_name : string prop;
}

let make ?description ?environment_id ?id ?solution_stack_name
    ~application ~name ~setting __id =
  let __type = "aws_elastic_beanstalk_configuration_template" in
  let __attrs =
    ({
       application = Prop.computed __type __id "application";
       description = Prop.computed __type __id "description";
       environment_id = Prop.computed __type __id "environment_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       solution_stack_name =
         Prop.computed __type __id "solution_stack_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_elastic_beanstalk_configuration_template
        (aws_elastic_beanstalk_configuration_template ?description
           ?environment_id ?id ?solution_stack_name ~application
           ~name ~setting ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?environment_id ?id
    ?solution_stack_name ~application ~name ~setting __id =
  let (r : _ Tf_core.resource) =
    make ?description ?environment_id ?id ?solution_stack_name
      ~application ~name ~setting __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
