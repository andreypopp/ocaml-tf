(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type action__parameter = {
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** action__parameter *)

type action__target = {
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** action__target *)

type action = {
  action_id : string prop;  (** action_id *)
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  start_after : string prop list option; [@option]
      (** start_after *)
  parameter : action__parameter list;
  target : action__target list;
}
[@@deriving yojson_of]
(** action *)

type log_configuration__cloudwatch_logs_configuration = {
  log_group_arn : string prop;  (** log_group_arn *)
}
[@@deriving yojson_of]
(** log_configuration__cloudwatch_logs_configuration *)

type log_configuration__s3_configuration = {
  bucket_name : string prop;  (** bucket_name *)
  prefix : string prop option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** log_configuration__s3_configuration *)

type log_configuration = {
  log_schema_version : float prop;  (** log_schema_version *)
  cloudwatch_logs_configuration :
    log_configuration__cloudwatch_logs_configuration list;
  s3_configuration : log_configuration__s3_configuration list;
}
[@@deriving yojson_of]
(** log_configuration *)

type stop_condition = {
  source : string prop;  (** source *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** stop_condition *)

type target__filter = {
  path : string prop;  (** path *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** target__filter *)

type target__resource_tag = {
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** target__resource_tag *)

type target = {
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  resource_arns : string prop list option; [@option]
      (** resource_arns *)
  resource_type : string prop;  (** resource_type *)
  selection_mode : string prop;  (** selection_mode *)
  filter : target__filter list;
  resource_tag : target__resource_tag list;
}
[@@deriving yojson_of]
(** target *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_fis_experiment_template = {
  description : string prop;  (** description *)
  id : string prop option; [@option]  (** id *)
  role_arn : string prop;  (** role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  action : action list;
  log_configuration : log_configuration list;
  stop_condition : stop_condition list;
  target : target list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_fis_experiment_template *)

let action__parameter ~key ~value () : action__parameter =
  { key; value }

let action__target ~key ~value () : action__target = { key; value }

let action ?description ?start_after ~action_id ~name ~parameter
    ~target () : action =
  { action_id; description; name; start_after; parameter; target }

let log_configuration__cloudwatch_logs_configuration ~log_group_arn
    () : log_configuration__cloudwatch_logs_configuration =
  { log_group_arn }

let log_configuration__s3_configuration ?prefix ~bucket_name () :
    log_configuration__s3_configuration =
  { bucket_name; prefix }

let log_configuration ~log_schema_version
    ~cloudwatch_logs_configuration ~s3_configuration () :
    log_configuration =
  {
    log_schema_version;
    cloudwatch_logs_configuration;
    s3_configuration;
  }

let stop_condition ?value ~source () : stop_condition =
  { source; value }

let target__filter ~path ~values () : target__filter =
  { path; values }

let target__resource_tag ~key ~value () : target__resource_tag =
  { key; value }

let target ?parameters ?resource_arns ~name ~resource_type
    ~selection_mode ~filter ~resource_tag () : target =
  {
    name;
    parameters;
    resource_arns;
    resource_type;
    selection_mode;
    filter;
    resource_tag;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_fis_experiment_template ?id ?tags ?tags_all ?timeouts
    ~description ~role_arn ~action ~log_configuration ~stop_condition
    ~target () : aws_fis_experiment_template =
  {
    description;
    id;
    role_arn;
    tags;
    tags_all;
    action;
    log_configuration;
    stop_condition;
    target;
    timeouts;
  }

type t = {
  description : string prop;
  id : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?tags_all ?timeouts ~description
    ~role_arn ~action ~log_configuration ~stop_condition ~target
    __resource_id =
  let __resource_type = "aws_fis_experiment_template" in
  let __resource =
    aws_fis_experiment_template ?id ?tags ?tags_all ?timeouts
      ~description ~role_arn ~action ~log_configuration
      ~stop_condition ~target ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_fis_experiment_template __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
