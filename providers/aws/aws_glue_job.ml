(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type command = {
  name : string prop option; [@option]  (** name *)
  python_version : string prop option; [@option]
      (** python_version *)
  runtime : string prop option; [@option]  (** runtime *)
  script_location : string prop;  (** script_location *)
}
[@@deriving yojson_of]
(** command *)

type execution_property = {
  max_concurrent_runs : float prop option; [@option]
      (** max_concurrent_runs *)
}
[@@deriving yojson_of]
(** execution_property *)

type notification_property = {
  notify_delay_after : float prop option; [@option]
      (** notify_delay_after *)
}
[@@deriving yojson_of]
(** notification_property *)

type aws_glue_job = {
  connections : string prop list option; [@option]
      (** connections *)
  default_arguments : (string * string prop) list option; [@option]
      (** default_arguments *)
  description : string prop option; [@option]  (** description *)
  execution_class : string prop option; [@option]
      (** execution_class *)
  glue_version : string prop option; [@option]  (** glue_version *)
  id : string prop option; [@option]  (** id *)
  max_capacity : float prop option; [@option]  (** max_capacity *)
  max_retries : float prop option; [@option]  (** max_retries *)
  name : string prop;  (** name *)
  non_overridable_arguments : (string * string prop) list option;
      [@option]
      (** non_overridable_arguments *)
  number_of_workers : float prop option; [@option]
      (** number_of_workers *)
  role_arn : string prop;  (** role_arn *)
  security_configuration : string prop option; [@option]
      (** security_configuration *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeout : float prop option; [@option]  (** timeout *)
  worker_type : string prop option; [@option]  (** worker_type *)
  command : command list;
  execution_property : execution_property list;
  notification_property : notification_property list;
}
[@@deriving yojson_of]
(** aws_glue_job *)

let command ?name ?python_version ?runtime ~script_location () :
    command =
  { name; python_version; runtime; script_location }

let execution_property ?max_concurrent_runs () : execution_property =
  { max_concurrent_runs }

let notification_property ?notify_delay_after () :
    notification_property =
  { notify_delay_after }

let aws_glue_job ?connections ?default_arguments ?description
    ?execution_class ?glue_version ?id ?max_capacity ?max_retries
    ?non_overridable_arguments ?number_of_workers
    ?security_configuration ?tags ?tags_all ?timeout ?worker_type
    ~name ~role_arn ~command ~execution_property
    ~notification_property () : aws_glue_job =
  {
    connections;
    default_arguments;
    description;
    execution_class;
    glue_version;
    id;
    max_capacity;
    max_retries;
    name;
    non_overridable_arguments;
    number_of_workers;
    role_arn;
    security_configuration;
    tags;
    tags_all;
    timeout;
    worker_type;
    command;
    execution_property;
    notification_property;
  }

type t = {
  arn : string prop;
  connections : string list prop;
  default_arguments : (string * string) list prop;
  description : string prop;
  execution_class : string prop;
  glue_version : string prop;
  id : string prop;
  max_capacity : float prop;
  max_retries : float prop;
  name : string prop;
  non_overridable_arguments : (string * string) list prop;
  number_of_workers : float prop;
  role_arn : string prop;
  security_configuration : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  timeout : float prop;
  worker_type : string prop;
}

let register ?tf_module ?connections ?default_arguments ?description
    ?execution_class ?glue_version ?id ?max_capacity ?max_retries
    ?non_overridable_arguments ?number_of_workers
    ?security_configuration ?tags ?tags_all ?timeout ?worker_type
    ~name ~role_arn ~command ~execution_property
    ~notification_property __resource_id =
  let __resource_type = "aws_glue_job" in
  let __resource =
    aws_glue_job ?connections ?default_arguments ?description
      ?execution_class ?glue_version ?id ?max_capacity ?max_retries
      ?non_overridable_arguments ?number_of_workers
      ?security_configuration ?tags ?tags_all ?timeout ?worker_type
      ~name ~role_arn ~command ~execution_property
      ~notification_property ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_job __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       connections =
         Prop.computed __resource_type __resource_id "connections";
       default_arguments =
         Prop.computed __resource_type __resource_id
           "default_arguments";
       description =
         Prop.computed __resource_type __resource_id "description";
       execution_class =
         Prop.computed __resource_type __resource_id
           "execution_class";
       glue_version =
         Prop.computed __resource_type __resource_id "glue_version";
       id = Prop.computed __resource_type __resource_id "id";
       max_capacity =
         Prop.computed __resource_type __resource_id "max_capacity";
       max_retries =
         Prop.computed __resource_type __resource_id "max_retries";
       name = Prop.computed __resource_type __resource_id "name";
       non_overridable_arguments =
         Prop.computed __resource_type __resource_id
           "non_overridable_arguments";
       number_of_workers =
         Prop.computed __resource_type __resource_id
           "number_of_workers";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
       security_configuration =
         Prop.computed __resource_type __resource_id
           "security_configuration";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       timeout =
         Prop.computed __resource_type __resource_id "timeout";
       worker_type =
         Prop.computed __resource_type __resource_id "worker_type";
     }
      : t)
  in
  __resource_attributes
