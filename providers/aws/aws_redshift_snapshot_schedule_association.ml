(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_redshift_snapshot_schedule_association = {
  cluster_identifier : string prop;  (** cluster_identifier *)
  id : string prop option; [@option]  (** id *)
  schedule_identifier : string prop;  (** schedule_identifier *)
}
[@@deriving yojson_of]
(** aws_redshift_snapshot_schedule_association *)

let aws_redshift_snapshot_schedule_association ?id
    ~cluster_identifier ~schedule_identifier () :
    aws_redshift_snapshot_schedule_association =
  { cluster_identifier; id; schedule_identifier }

type t = {
  cluster_identifier : string prop;
  id : string prop;
  schedule_identifier : string prop;
}

let register ?tf_module ?id ~cluster_identifier ~schedule_identifier
    __resource_id =
  let __resource_type =
    "aws_redshift_snapshot_schedule_association"
  in
  let __resource =
    aws_redshift_snapshot_schedule_association ?id
      ~cluster_identifier ~schedule_identifier ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_snapshot_schedule_association __resource);
  let __resource_attributes =
    ({
       cluster_identifier =
         Prop.computed __resource_type __resource_id
           "cluster_identifier";
       id = Prop.computed __resource_type __resource_id "id";
       schedule_identifier =
         Prop.computed __resource_type __resource_id
           "schedule_identifier";
     }
      : t)
  in
  __resource_attributes
