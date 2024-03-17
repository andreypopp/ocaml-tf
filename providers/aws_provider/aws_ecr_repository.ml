(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ecr_repository__encryption_configuration = {
  encryption_type : string option; [@option]  (** encryption_type *)
  kms_key : string option; [@option]  (** kms_key *)
}
[@@deriving yojson_of]
(** aws_ecr_repository__encryption_configuration *)

type aws_ecr_repository__image_scanning_configuration = {
  scan_on_push : bool;  (** scan_on_push *)
}
[@@deriving yojson_of]
(** aws_ecr_repository__image_scanning_configuration *)

type aws_ecr_repository__timeouts = {
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_ecr_repository__timeouts *)

type aws_ecr_repository = {
  force_delete : bool option; [@option]  (** force_delete *)
  image_tag_mutability : string option; [@option]
      (** image_tag_mutability *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  encryption_configuration :
    aws_ecr_repository__encryption_configuration list;
  image_scanning_configuration :
    aws_ecr_repository__image_scanning_configuration list;
  timeouts : aws_ecr_repository__timeouts option;
}
[@@deriving yojson_of]
(** aws_ecr_repository *)

let aws_ecr_repository ?force_delete ?image_tag_mutability ?tags
    ?timeouts ~name ~encryption_configuration
    ~image_scanning_configuration __resource_id =
  let __resource_type = "aws_ecr_repository" in
  let __resource =
    {
      force_delete;
      image_tag_mutability;
      name;
      tags;
      encryption_configuration;
      image_scanning_configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ecr_repository __resource);
  ()
