(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshift_scheduled_action__target_action__pause_cluster = {
  cluster_identifier : string;  (** cluster_identifier *)
}
[@@deriving yojson_of]
(** aws_redshift_scheduled_action__target_action__pause_cluster *)

type aws_redshift_scheduled_action__target_action__resize_cluster = {
  classic : bool option; [@option]  (** classic *)
  cluster_identifier : string;  (** cluster_identifier *)
  cluster_type : string option; [@option]  (** cluster_type *)
  node_type : string option; [@option]  (** node_type *)
  number_of_nodes : float option; [@option]  (** number_of_nodes *)
}
[@@deriving yojson_of]
(** aws_redshift_scheduled_action__target_action__resize_cluster *)

type aws_redshift_scheduled_action__target_action__resume_cluster = {
  cluster_identifier : string;  (** cluster_identifier *)
}
[@@deriving yojson_of]
(** aws_redshift_scheduled_action__target_action__resume_cluster *)

type aws_redshift_scheduled_action__target_action = {
  pause_cluster :
    aws_redshift_scheduled_action__target_action__pause_cluster list;
  resize_cluster :
    aws_redshift_scheduled_action__target_action__resize_cluster list;
  resume_cluster :
    aws_redshift_scheduled_action__target_action__resume_cluster list;
}
[@@deriving yojson_of]
(** aws_redshift_scheduled_action__target_action *)

type aws_redshift_scheduled_action = {
  description : string option; [@option]  (** description *)
  enable : bool option; [@option]  (** enable *)
  end_time : string option; [@option]  (** end_time *)
  iam_role : string;  (** iam_role *)
  name : string;  (** name *)
  schedule : string;  (** schedule *)
  start_time : string option; [@option]  (** start_time *)
  target_action : aws_redshift_scheduled_action__target_action list;
}
[@@deriving yojson_of]
(** aws_redshift_scheduled_action *)

let aws_redshift_scheduled_action ?description ?enable ?end_time
    ?start_time ~iam_role ~name ~schedule ~target_action
    __resource_id =
  let __resource_type = "aws_redshift_scheduled_action" in
  let __resource =
    {
      description;
      enable;
      end_time;
      iam_role;
      name;
      schedule;
      start_time;
      target_action;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_scheduled_action __resource);
  ()
