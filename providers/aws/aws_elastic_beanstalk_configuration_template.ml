(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type setting = {
  name : string prop;
  namespace : string prop;
  resource : string prop option; [@option]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : setting) -> ()

let yojson_of_setting =
  (function
   | {
       name = v_name;
       namespace = v_namespace;
       resource = v_resource;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         match v_resource with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : setting -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_setting

[@@@deriving.end]

type aws_elastic_beanstalk_configuration_template = {
  application : string prop;
  description : string prop option; [@option]
  environment_id : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  solution_stack_name : string prop option; [@option]
  setting : setting list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_elastic_beanstalk_configuration_template) -> ()

let yojson_of_aws_elastic_beanstalk_configuration_template =
  (function
   | {
       application = v_application;
       description = v_description;
       environment_id = v_environment_id;
       id = v_id;
       name = v_name;
       solution_stack_name = v_solution_stack_name;
       setting = v_setting;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_setting then bnds
         else
           let arg = (yojson_of_list yojson_of_setting) v_setting in
           let bnd = "setting", arg in
           bnd :: bnds
       in
       let bnds =
         match v_solution_stack_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "solution_stack_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_environment_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "environment_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_application in
         ("application", arg) :: bnds
       in
       `Assoc bnds
    : aws_elastic_beanstalk_configuration_template ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_elastic_beanstalk_configuration_template

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
