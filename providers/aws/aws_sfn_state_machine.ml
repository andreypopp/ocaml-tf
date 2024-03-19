(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type logging_configuration = {
  include_execution_data : bool prop option; [@option]
      (** include_execution_data *)
  level : string prop option; [@option]  (** level *)
  log_destination : string prop option; [@option]
      (** log_destination *)
}
[@@deriving yojson_of]
(** logging_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type tracing_configuration = {
  enabled : bool prop option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** tracing_configuration *)

type aws_sfn_state_machine = {
  definition : string prop;  (** definition *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  publish : bool prop option; [@option]  (** publish *)
  role_arn : string prop;  (** role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  logging_configuration : logging_configuration list;
  timeouts : timeouts option;
  tracing_configuration : tracing_configuration list;
}
[@@deriving yojson_of]
(** aws_sfn_state_machine *)

let logging_configuration ?include_execution_data ?level
    ?log_destination () : logging_configuration =
  { include_execution_data; level; log_destination }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let tracing_configuration ?enabled () : tracing_configuration =
  { enabled }

let aws_sfn_state_machine ?id ?name ?name_prefix ?publish ?tags
    ?tags_all ?type_ ?timeouts ~definition ~role_arn
    ~logging_configuration ~tracing_configuration () :
    aws_sfn_state_machine =
  {
    definition;
    id;
    name;
    name_prefix;
    publish;
    role_arn;
    tags;
    tags_all;
    type_;
    logging_configuration;
    timeouts;
    tracing_configuration;
  }

type t = {
  arn : string prop;
  creation_date : string prop;
  definition : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  publish : bool prop;
  revision_id : string prop;
  role_arn : string prop;
  state_machine_version_arn : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
  version_description : string prop;
}

let register ?tf_module ?id ?name ?name_prefix ?publish ?tags
    ?tags_all ?type_ ?timeouts ~definition ~role_arn
    ~logging_configuration ~tracing_configuration __resource_id =
  let __resource_type = "aws_sfn_state_machine" in
  let __resource =
    aws_sfn_state_machine ?id ?name ?name_prefix ?publish ?tags
      ?tags_all ?type_ ?timeouts ~definition ~role_arn
      ~logging_configuration ~tracing_configuration ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sfn_state_machine __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       creation_date =
         Prop.computed __resource_type __resource_id "creation_date";
       definition =
         Prop.computed __resource_type __resource_id "definition";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       name_prefix =
         Prop.computed __resource_type __resource_id "name_prefix";
       publish =
         Prop.computed __resource_type __resource_id "publish";
       revision_id =
         Prop.computed __resource_type __resource_id "revision_id";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
       state_machine_version_arn =
         Prop.computed __resource_type __resource_id
           "state_machine_version_arn";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       type_ = Prop.computed __resource_type __resource_id "type";
       version_description =
         Prop.computed __resource_type __resource_id
           "version_description";
     }
      : t)
  in
  __resource_attributes
