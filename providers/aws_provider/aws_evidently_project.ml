(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_evidently_project__data_delivery__cloudwatch_logs = {
  log_group : string prop option; [@option]  (** log_group *)
}
[@@deriving yojson_of]
(** aws_evidently_project__data_delivery__cloudwatch_logs *)

type aws_evidently_project__data_delivery__s3_destination = {
  bucket : string prop option; [@option]  (** bucket *)
  prefix : string prop option; [@option]  (** prefix *)
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
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_evidently_project__timeouts *)

type aws_evidently_project = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  data_delivery : aws_evidently_project__data_delivery list;
  timeouts : aws_evidently_project__timeouts option;
}
[@@deriving yojson_of]
(** aws_evidently_project *)

let aws_evidently_project ?description ?id ?tags ?tags_all ?timeouts
    ~name ~data_delivery __resource_id =
  let __resource_type = "aws_evidently_project" in
  let __resource =
    {
      description;
      id;
      name;
      tags;
      tags_all;
      data_delivery;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_evidently_project __resource);
  ()
