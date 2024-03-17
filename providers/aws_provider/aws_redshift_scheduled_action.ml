(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshift_scheduled_action__target_action__pause_cluster = {
  cluster_identifier : string prop;  (** cluster_identifier *)
}
[@@deriving yojson_of]
(** aws_redshift_scheduled_action__target_action__pause_cluster *)

type aws_redshift_scheduled_action__target_action__resize_cluster = {
  classic : bool prop option; [@option]  (** classic *)
  cluster_identifier : string prop;  (** cluster_identifier *)
  cluster_type : string prop option; [@option]  (** cluster_type *)
  node_type : string prop option; [@option]  (** node_type *)
  number_of_nodes : float prop option; [@option]
      (** number_of_nodes *)
}
[@@deriving yojson_of]
(** aws_redshift_scheduled_action__target_action__resize_cluster *)

type aws_redshift_scheduled_action__target_action__resume_cluster = {
  cluster_identifier : string prop;  (** cluster_identifier *)
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
  description : string prop option; [@option]  (** description *)
  enable : bool prop option; [@option]  (** enable *)
  end_time : string prop option; [@option]  (** end_time *)
  iam_role : string prop;  (** iam_role *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  schedule : string prop;  (** schedule *)
  start_time : string prop option; [@option]  (** start_time *)
  target_action : aws_redshift_scheduled_action__target_action list;
}
[@@deriving yojson_of]
(** aws_redshift_scheduled_action *)

let aws_redshift_scheduled_action ?description ?enable ?end_time ?id
    ?start_time ~iam_role ~name ~schedule ~target_action
    __resource_id =
  let __resource_type = "aws_redshift_scheduled_action" in
  let __resource =
    {
      description;
      enable;
      end_time;
      iam_role;
      id;
      name;
      schedule;
      start_time;
      target_action;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_scheduled_action __resource);
  ()
