(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_kinesisanalyticsv2_application_snapshot__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application_snapshot__timeouts *)

type aws_kinesisanalyticsv2_application_snapshot = {
  application_name : string prop;  (** application_name *)
  id : string prop option; [@option]  (** id *)
  snapshot_name : string prop;  (** snapshot_name *)
  timeouts :
    aws_kinesisanalyticsv2_application_snapshot__timeouts option;
}
[@@deriving yojson_of]
(** aws_kinesisanalyticsv2_application_snapshot *)

type t = {
  application_name : string prop;
  application_version_id : float prop;
  id : string prop;
  snapshot_creation_timestamp : string prop;
  snapshot_name : string prop;
}

let aws_kinesisanalyticsv2_application_snapshot ?id ?timeouts
    ~application_name ~snapshot_name __resource_id =
  let __resource_type =
    "aws_kinesisanalyticsv2_application_snapshot"
  in
  let __resource =
    ({ application_name; id; snapshot_name; timeouts }
      : aws_kinesisanalyticsv2_application_snapshot)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_kinesisanalyticsv2_application_snapshot __resource);
  let __resource_attributes =
    ({
       application_name =
         Prop.computed __resource_type __resource_id
           "application_name";
       application_version_id =
         Prop.computed __resource_type __resource_id
           "application_version_id";
       id = Prop.computed __resource_type __resource_id "id";
       snapshot_creation_timestamp =
         Prop.computed __resource_type __resource_id
           "snapshot_creation_timestamp";
       snapshot_name =
         Prop.computed __resource_type __resource_id "snapshot_name";
     }
      : t)
  in
  __resource_attributes
