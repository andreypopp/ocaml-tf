(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type data_delivery__cloudwatch_logs = {
  log_group : string prop option; [@option]  (** log_group *)
}
[@@deriving yojson_of]
(** data_delivery__cloudwatch_logs *)

type data_delivery__s3_destination = {
  bucket : string prop option; [@option]  (** bucket *)
  prefix : string prop option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** data_delivery__s3_destination *)

type data_delivery = {
  cloudwatch_logs : data_delivery__cloudwatch_logs list;
  s3_destination : data_delivery__s3_destination list;
}
[@@deriving yojson_of]
(** data_delivery *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_evidently_project = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  data_delivery : data_delivery list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_evidently_project *)

let data_delivery__cloudwatch_logs ?log_group () :
    data_delivery__cloudwatch_logs =
  { log_group }

let data_delivery__s3_destination ?bucket ?prefix () :
    data_delivery__s3_destination =
  { bucket; prefix }

let data_delivery ~cloudwatch_logs ~s3_destination () : data_delivery
    =
  { cloudwatch_logs; s3_destination }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_evidently_project ?description ?id ?tags ?tags_all ?timeouts
    ~name ~data_delivery () : aws_evidently_project =
  { description; id; name; tags; tags_all; data_delivery; timeouts }

type t = {
  active_experiment_count : float prop;
  active_launch_count : float prop;
  arn : string prop;
  created_time : string prop;
  description : string prop;
  experiment_count : float prop;
  feature_count : float prop;
  id : string prop;
  last_updated_time : string prop;
  launch_count : float prop;
  name : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?description ?id ?tags ?tags_all ?timeouts
    ~name ~data_delivery __resource_id =
  let __resource_type = "aws_evidently_project" in
  let __resource =
    aws_evidently_project ?description ?id ?tags ?tags_all ?timeouts
      ~name ~data_delivery ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_evidently_project __resource);
  let __resource_attributes =
    ({
       active_experiment_count =
         Prop.computed __resource_type __resource_id
           "active_experiment_count";
       active_launch_count =
         Prop.computed __resource_type __resource_id
           "active_launch_count";
       arn = Prop.computed __resource_type __resource_id "arn";
       created_time =
         Prop.computed __resource_type __resource_id "created_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       experiment_count =
         Prop.computed __resource_type __resource_id
           "experiment_count";
       feature_count =
         Prop.computed __resource_type __resource_id "feature_count";
       id = Prop.computed __resource_type __resource_id "id";
       last_updated_time =
         Prop.computed __resource_type __resource_id
           "last_updated_time";
       launch_count =
         Prop.computed __resource_type __resource_id "launch_count";
       name = Prop.computed __resource_type __resource_id "name";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
