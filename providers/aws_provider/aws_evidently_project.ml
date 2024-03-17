(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_evidently_project__data_delivery__cloudwatch_logs = {
  log_group : string option; [@option]  (** log_group *)
}
[@@deriving yojson_of]
(** aws_evidently_project__data_delivery__cloudwatch_logs *)

type aws_evidently_project__data_delivery__s3_destination = {
  bucket : string option; [@option]  (** bucket *)
  prefix : string option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** aws_evidently_project__data_delivery__s3_destination *)

type aws_evidently_project__data_delivery = {
  cloudwatch_logs :
    aws_evidently_project__data_delivery__cloudwatch_logs list;
  s3_destination :
    aws_evidently_project__data_delivery__s3_destination list;
}
[@@deriving yojson_of]
(** aws_evidently_project__data_delivery *)

type aws_evidently_project__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_evidently_project__timeouts *)

type aws_evidently_project = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  data_delivery : aws_evidently_project__data_delivery list;
  timeouts : aws_evidently_project__timeouts option;
}
[@@deriving yojson_of]
(** aws_evidently_project *)

let aws_evidently_project ?description ?tags ?timeouts ~name
    ~data_delivery __resource_id =
  let __resource_type = "aws_evidently_project" in
  let __resource =
    { description; name; tags; data_delivery; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_evidently_project __resource);
  ()
