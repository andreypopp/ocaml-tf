(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_glue_job__command = {
  name : string option; [@option]  (** name *)
  python_version : string option; [@option]  (** python_version *)
  runtime : string option; [@option]  (** runtime *)
  script_location : string;  (** script_location *)
}
[@@deriving yojson_of]
(** aws_glue_job__command *)

type aws_glue_job__execution_property = {
  max_concurrent_runs : float option; [@option]
      (** max_concurrent_runs *)
}
[@@deriving yojson_of]
(** aws_glue_job__execution_property *)

type aws_glue_job__notification_property = {
  notify_delay_after : float option; [@option]
      (** notify_delay_after *)
}
[@@deriving yojson_of]
(** aws_glue_job__notification_property *)

type aws_glue_job = {
  connections : string list option; [@option]  (** connections *)
  default_arguments : (string * string) list option; [@option]
      (** default_arguments *)
  description : string option; [@option]  (** description *)
  execution_class : string option; [@option]  (** execution_class *)
  glue_version : string option; [@option]  (** glue_version *)
  id : string option; [@option]  (** id *)
  max_capacity : float option; [@option]  (** max_capacity *)
  max_retries : float option; [@option]  (** max_retries *)
  name : string;  (** name *)
  non_overridable_arguments : (string * string) list option;
      [@option]
      (** non_overridable_arguments *)
  number_of_workers : float option; [@option]
      (** number_of_workers *)
  role_arn : string;  (** role_arn *)
  security_configuration : string option; [@option]
      (** security_configuration *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  timeout : float option; [@option]  (** timeout *)
  worker_type : string option; [@option]  (** worker_type *)
  command : aws_glue_job__command list;
  execution_property : aws_glue_job__execution_property list;
  notification_property : aws_glue_job__notification_property list;
}
[@@deriving yojson_of]
(** aws_glue_job *)

let aws_glue_job ?connections ?default_arguments ?description
    ?execution_class ?glue_version ?id ?max_capacity ?max_retries
    ?non_overridable_arguments ?number_of_workers
    ?security_configuration ?tags ?tags_all ?timeout ?worker_type
    ~name ~role_arn ~command ~execution_property
    ~notification_property __resource_id =
  let __resource_type = "aws_glue_job" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_job __resource);
  ()
